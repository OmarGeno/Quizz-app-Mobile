import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserRow extends StatelessWidget {
  final String name;
  var shortDate = DateFormat.yMd().format(DateTime.now());
  var icn = const Icon(
    Icons.account_circle,
    color: Colors.amber,
    size: 50,
  );
  var subtitle = 'Salut, ce mai faci?';
  UserRow({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 224, 224, 224),
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: icn,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 10, color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(10)),
              Text(
                shortDate,
                style: const TextStyle(
                    fontSize: 10, color: Color.fromARGB(255, 188, 188, 188)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
