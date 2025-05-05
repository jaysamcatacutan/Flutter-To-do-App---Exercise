import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final VoidCallback onDelete;

  const ToDoTile({
    super.key,
    required this.taskName,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 196, 97, 125),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: Text(taskName),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
