import 'package:fiancas/components/balance.dart';
import 'package:fiancas/components/general_value_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Balance(balanceValue: 7735.33),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Visão geral',
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Icon(
                                          FontAwesomeIcons.ellipsisV),
                                    ),
                                  ],
                                ),
                              ),
                              const GeneralValueCard(
                                revenue: 7735.33,
                                icon: FontAwesomeIcons.plus,
                                title: 'Receitas',
                                iconBackground: Colors.green,
                              ),
                              const GeneralValueCard(
                                revenue: 2312.13,
                                icon: FontAwesomeIcons.minus,
                                title: 'Despesas',
                                iconBackground: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(FontAwesomeIcons.plus),
      ),
    );
  }
}
