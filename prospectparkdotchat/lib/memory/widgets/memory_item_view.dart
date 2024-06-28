import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memories_app/memory/memory.dart';

class MemoryItemView extends ConsumerWidget {
  const MemoryItemView({required this.data, super.key});
  
  final Memory data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storageUrl = ref.read(memoryRepositoryProvider).storageUrl;
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Stack(
        children: [
          Image.network('$storageUrl/object/public/memories/${data.profileId}/${data.imageId}'),
          Positioned(top: 10, left: 10, child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.black87,
            ),
              child: Text(
                data.title,
                style: const TextStyle(
                  color: Colors.white
                ),
              )
          )
          ),
          Positioned(bottom: 10, right: 10, child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.circular(6)),
            child: Text('by ${data.username}',style: const TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),),
          ),)
        ],
      )
    );
  }
}