import 'package:flutter/material.dart';

class AssignmentDetailsItem extends StatelessWidget {
  final String id;
  const AssignmentDetailsItem({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.redAccent),
      child: Column(
        children: [Text(id)],
      ),
    );
  }
}
