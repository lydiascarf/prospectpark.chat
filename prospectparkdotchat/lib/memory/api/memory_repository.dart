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
}