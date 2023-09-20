import 'package:flutter/material.dart';
import 'package:quizz_app/summary_item.dart';

class SummaryData extends StatelessWidget {
  const SummaryData(this.sumData, {super.key});

  final List<Map<String, Object>> sumData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: sumData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
