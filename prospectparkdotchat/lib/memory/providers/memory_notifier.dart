import 'package:memories_app/memory/memory.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'memory_notifier.g.dart';

@riverpod
class MemoryNotifier extends _$MemoryNotifier {
  @override
  Future<List<Memory>> build() async {
    return ref.read(memoryRepositoryProvider).getMemories();
  }
}