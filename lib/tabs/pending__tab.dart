import 'package:flutter/material.dart';
import 'package:study_buddy/components/assingmet_item__component.dart';
import 'package:study_buddy/model/assignment__model.dart';

import '../model/assignment_data__model.dart';

class PendingAssignment extends StatelessWidget {
  PendingAssignment({super.key});

  final List<AssignmentModel> assignments = assignmentList
      .where((assignment) => assignment.assignmentType == "Pending")
      .toList();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2 / 2.6),
          itemBuilder: (context, index) => AssignmentItem(
            id: assignments[index].id,
            corseName: assignments[index].corseName,
            numberOfLectures: assignments[index].numberOfLectures,
            numberOfSubjects: assignments[index].numberOfSubjects,
            assignmentType: assignments[index].assignmentType,
            assignmentTime: assignments[index].assignmentTime,
          ),
          itemCount: assignments.length,
          // shrinkWrap: true,
        ));
  }
}
