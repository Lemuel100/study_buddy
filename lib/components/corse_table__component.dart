import 'package:flutter/material.dart';

import '../model/corse_data__model.dart';

class CorseTableComponent extends StatelessWidget {
  const CorseTableComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
        columnSpacing: 30,
        headingRowHeight: 30,
        dataRowHeight: 30,
        columns: [
          DataColumn(
            label: _buildTableText(
                context: context,
                label: "Course",
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          DataColumn(
            label: _buildTableText(
                context: context,
                label: "Venue",
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          DataColumn(
            label: _buildTableText(
                context: context,
                label: "Time",
                fontSize: 15,
                fontWeight: FontWeight.bold),
          )
        ],
        rows: corseScheduleList
            .map((corses) => DataRow(cells: [
                  DataCell(
                    _buildTableText(
                        context: context,
                        label: corses.corseName,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  DataCell(
                    _buildTableText(
                        context: context,
                        label: corses.venue,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  DataCell(
                    _buildTableText(
                        context: context,
                        label: corses.time,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                ]))
            .toList());
  }

  Text _buildTableText(
      {required BuildContext context,
      required String label,
      FontWeight fontWeight = FontWeight.w400,
      double fontSize = 18}) {
    return Text(
      label,
      style: Theme.of(context).textTheme.headline6!.copyWith(
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
    );
  }
}
