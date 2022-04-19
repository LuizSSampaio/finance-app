import 'package:fiancas/database/db_provider.dart';
import 'package:flutter/material.dart';

class CreationPage extends StatefulWidget {
  const CreationPage({Key? key}) : super(key: key);

  static const String routeName = '/create';
  static const List<DropdownMenuItem<String>> revenueOrExpenses = [
    DropdownMenuItem(
      child: Text('Receita'),
      value: 'revenue',
    ),
    DropdownMenuItem(
      child: Text('Despesa'),
      value: 'expenses',
    ),
  ];

  @override
  State<CreationPage> createState() => _CreationPageState();
}

class _CreationPageState extends State<CreationPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _valueController = TextEditingController();

  String selectedRevenueOrExpensesValue = 'revenue';

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _valueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Raceita ou Despesa'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    labelText: 'Título *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  items: CreationPage.revenueOrExpenses,
                  onChanged: (String? value) {
                    setState(() {
                      selectedRevenueOrExpensesValue = value!;
                    });
                  },
                  value: selectedRevenueOrExpensesValue,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Descrição',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: _valueController,
                  decoration: const InputDecoration(
                    labelText: 'Valor *',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                    signed: false,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Digite um valor';
                    }
                    if (value.indexOf(',') != value.lastIndexOf(',') ||
                        value.indexOf('.') != value.lastIndexOf('.')){
                      return 'Não utilize mais de um \'.\' ou \',\'';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // dbProvider.addStatement(
                      //   Statement(
                      //     title: _titleController.text,
                      //     description: _descriptionController.text,
                      //     amount: double.parse(_valueController.text),
                      //     type: selectedRevenueOrExpensesValue,
                      //   ),
                      // );
                    }
                  },
                  child: const Text('Adicionar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
