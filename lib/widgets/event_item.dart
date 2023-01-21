import 'package:flutter/material.dart';

import '../model/event.dart';

class EventItem extends StatelessWidget {
  final Event event;
  final Function() onDelete;
  const EventItem({
    Key? key,
    required this.event,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        event.title,
      ),
      subtitle: Text(
        event.date.toString(),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: onDelete,
      ),
    );
  }
}
