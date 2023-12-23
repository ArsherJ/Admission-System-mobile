import 'package:admissionproject/models/ExamSchedItem.dart';
import 'package:admissionproject/widgets/button_layout.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../models/designs/constants.dart';

class ExaminationSchedule extends StatelessWidget {
  const ExaminationSchedule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ButtonLayout(
                buttonName: 'Copy',
              ),
              ButtonLayout(
                buttonName: 'Excel',
              ),
              ButtonLayout(
                buttonName: 'PDF',
              ),
            ],
          ),
          const SizedBox(height: 50),
          Text(
            "Examination Schedule",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: const [
                DataColumn(
                  label: Text("Name of Applicant"),
                ),
                DataColumn(
                  label: Text("Sex"),
                ),
                DataColumn(
                  label: Text("Score"),
                ),
              ],
              rows: List.generate(
                examscheditem.length,
                (index) => recentFileDataRow(examscheditem[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(ExamSched fileInfo) {
  return DataRow(
    cells: [
      DataCell(Text(fileInfo.name!)),
      DataCell(Text(fileInfo.sex!)),
      DataCell(Text(fileInfo.score!)),
    ],
  );
}
