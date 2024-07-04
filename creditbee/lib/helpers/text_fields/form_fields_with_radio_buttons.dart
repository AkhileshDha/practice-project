import 'package:flutter/material.dart';

class EmployeeTypeForm extends StatefulWidget {
  const EmployeeTypeForm({Key? key}) : super(key: key);

  @override
  _EmployeeTypeFormState createState() => _EmployeeTypeFormState();
}

class _EmployeeTypeFormState extends State<EmployeeTypeForm> {
  String? _selectedType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Your employee type'),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all()
          ),
          child: Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: ListTile(
                      trailing:  Radio<String>(
                        value: 'Salaried',
                        groupValue: _selectedType,
                        onChanged: (value) {
                          setState(() {
                            _selectedType = value;
                          });
                        },
                      ),
                      leading: const Text('Salaried',style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold),)

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: ListTile(
                    trailing:  Radio<String>(
                      value: 'Self-employed',
                      groupValue: _selectedType,
                      onChanged: (value) {
                        setState(() {
                          _selectedType = value;
                        });
                      },
                    ),
                    leading: const Text('Self-employed',style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold),)

                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}