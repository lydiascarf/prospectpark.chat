import 'package:prospect_park_dot_chat/memory/memory.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'memory_notifier.g.dart';

@riverpod
class MemoryNotifier extends _$MemoryNotifier {
  @override
  Future<List<Memory>> build() async {
    _initMemoryChannel();
    return ref.read(memoryRepositoryProvider).getMemories();
  }

  void _initMemoryChannel() {
    ref.read(memoryRepositoryProvider).memoryChannel.onPostgresChanges(
      event: PostgresChangeEvent.all,
      schema: 'public',
      table: 'memories',
      callback: (PostgresChangePayload payload) async {
        state = await AsyncValue.guard(
          () async => ref.read(memoryRepositoryProvider).getMemories(),
        );
      }
    ).subscribe();
  }
}