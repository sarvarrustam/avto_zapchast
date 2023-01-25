import 'package:avto_zapchast/widget/prodacts_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer

      drawer: const Drawer(),

      //appBar

      appBar: AppBar(
        title: const Text(
          'Avto Zapchasti',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.mail),
            onPressed: () {},
          )
        ],
      ),

      //body

      body: Container(
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.white,
                  width: double.infinity,
                  height: 40,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Your orders',
                    ),
                  ),
                ),
              ),
              ProdactsWidget(
                name: "Rule",
                model: 'BMW',
                count: '123',
                owes: '20000',
                dateOrder: '',
                fullPrice: '',
                orginalDupl: '',
                wareH: '',
              ),
              ProdactsWidget(
                name: "Rule",
                model: 'BMW',
                count: '123',
                owes: '20000',
                dateOrder: '',
                fullPrice: '',
                orginalDupl: '',
                wareH: '',
              ),
              ProdactsWidget(
                name: "Rule",
                model: 'BMW',
                count: '123',
                owes: '20000',
                dateOrder: '',
                fullPrice: '',
                orginalDupl: '',
                wareH: '',
              ),
              ProdactsWidget(
                name: "Rule",
                model: 'BMW',
                count: '123',
                owes: '20000',
                dateOrder: '',
                fullPrice: '',
                orginalDupl: '',
                wareH: '',
              ),
              ProdactsWidget(
                name: "Rule",
                model: 'BMW',
                count: '123',
                owes: '20000',
                dateOrder: '',
                fullPrice: '',
                orginalDupl: '',
                wareH: '',
              ),
              ProdactsWidget(
                name: "Rule",
                model: 'BMW',
                count: '123',
                owes: '20000',
                dateOrder: '',
                fullPrice: '',
                orginalDupl: '',
                wareH: '',
              ),
              ProdactsWidget(
                name: "Rule",
                model: 'BMW',
                count: '123',
                owes: '20000',
                dateOrder: '',
                fullPrice: '',
                orginalDupl: '',
                wareH: '',
              ),
              ProdactsWidget(
                name: "Rule",
                model: 'BMW',
                count: '123',
                owes: '20000',
                dateOrder: '',
                fullPrice: '',
                orginalDupl: '',
                wareH: '',
              ),
              ProdactsWidget(
                name: "Rule",
                model: 'BMW',
                count: '123',
                owes: '20000',
                dateOrder: '',
                fullPrice: '',
                orginalDupl: '',
                wareH: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
