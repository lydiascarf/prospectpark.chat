import 'dart:io';

import 'package:memories_app/memory/memory.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'memory_repository.g.dart';

@riverpod
MemoryRepository memoryRepository(MemoryRepositoryRef _) => MemoryRepository();

class MemoryRepository {
  final _client = Supabase.instance.client;

  String get storageUrl => _client.storageUrl;

  Future<List<Memory>> getMemories() => _client.from('memories')
    .select<List<Map<String, dynamic>>>('id, title, created_at, image_id, profiles (id, username)')
    .order('created_at')
    .then((data) => data.map((json) => Memory.fromJson(json)).toList());

  Future<void> addMemory({
    required String title,
    required File file,
  }) async {
    final profileId = _client.auth.currentSession?.user.id;
    final imageId = file.path.split('/').last;

    if (profileId == null) {
      throw 'Missing profile id';
    }

    await _client.from('memories').insert({
      'title': title,
      'image_id': imageId,
      'profile_id': profileId,
    });

    await _client.storage.from('memories').upload('$profileId/$imageId', file);
  }

  Future<void> updateMemory({
    required int id,
    required String title,
  }) async {

  }

  Future<void> deleteMemory(Memory data) async {

  }
}