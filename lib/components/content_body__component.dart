import 'package:flutter/material.dart';
import 'package:study_buddy/components/corse_table__component.dart';

import 'date_picker__component.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 230, 229, 229)),
      child: Column(
        children: [
          const DatePickerComponent(),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Your Classes For Today",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 18,
          ),
          const CorseTableComponent()
        ],
      ),
    );
  }
}
