import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProdactsWidget extends StatelessWidget {
  String? wareH;
  String? fullPrice;
  String? orginalDupl;
  String? dateOrder;
  String? name;
  String? model;
  String? count;
  String? owes;
  ProdactsWidget({
    required this.name,
    required this.model,
    required this.count,
    required this.owes,
    required this.dateOrder,
    required this.fullPrice,
    required this.orginalDupl,
    required this.wareH,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return SimpleDialog(
                title: const Center(child: Text('Order info')),
                children: [
                  cardText(lable: 'Warehouse', info: wareH),
                  cardText(lable: 'Name', info: name),
                  cardText(lable: 'Model', info: model),
                  cardText(lable: 'Count', info: count),
                  cardText(lable: 'Full price', info: fullPrice),
                  cardText(lable: 'Orginal/Duplicate', info: count),
                  cardText(lable: 'Date of order', info: dateOrder),
                  cardText(lable: 'Your owes', info: owes),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Ok'),
                  ),
                ],
              );
            });
      },
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue),
                    height: 120,
                  )),
              Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cardText(lable: 'Name', info: name),
                    cardText(lable: 'Model', info: model),
                    cardText(lable: 'Count', info: count),
                    cardText(lable: 'Your owes', info: owes),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, right: 6),
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: const Center(child: Text('view')),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container cardText({String? info, String? lable}) {
    return Container(
      width: 150,
      height: 22,
      padding: const EdgeInsets.only(left: 6, top: 3),
      margin: const EdgeInsets.symmetric(vertical: 5),
      color: const Color.fromARGB(255, 234, 228, 228),
      child: Text(
        '$lable: $info',
        textAlign: TextAlign.start,
      ),
    );
  }
}
