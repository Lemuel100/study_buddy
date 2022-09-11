import 'package:flutter/material.dart';

import '../model/assignment__model.dart';
import '../tabs/assignment_details__tab.dart';

class AssignmentItem extends StatelessWidget {
  final String id;
  final String corseName;
  final String numberOfLectures;
  final String numberOfSubjects;
  final String assignmentType;
  final List<AssignmentTime> assignmentTime;

  AssignmentItem(
      {super.key,
      required this.id,
      required this.corseName,
      required this.numberOfLectures,
      required this.numberOfSubjects,
      required this.assignmentType,
      required this.assignmentTime});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(AssignmentItemDetails.routeName, arguments: id);
      },
      child: Container(
        height: 220,
        width: 170,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.redAccent,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              corseName,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  fontSize: 16),
            ),
            Text("$numberOfLectures lectures - $numberOfSubjects subjects",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(0.7),
                    fontSize: 10)),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 90,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    heightFactor: 1,
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "50%",
                  style: TextStyle(
                      color: Theme.of(context).scaffoldBackgroundColor),
                ),
              ],
            ),
            const Divider(
              color: Colors.red,
              thickness: 1,
            ),
            const SizedBox(height: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "HomeWork Time",
                  style: TextStyle(
                      color: Theme.of(context).scaffoldBackgroundColor),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: assignmentTime
                      .map((item) => _dateItem(item.time, item.type, context))
                      .toList(),
                )
              ],
            )),
            Material(
              color: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Two $assignmentType tasks",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dateItem(String time, String type, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            time,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Theme.of(context).scaffoldBackgroundColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            type,
            style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
          ),
        ],
      ),
    );
  }
}
