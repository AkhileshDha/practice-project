import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../helpers/text_fields/drop_down_input_field.dart';
import '../helpers/text_fields/form_fields_with_radio_buttons.dart';
import '../helpers/text_fields/normal_text_field.dart';
import 'loan_status_approved_screen.dart';

class SelectAmountAndTenureScreen extends StatefulWidget {
  static const routeName = 'SelectAmountAndTenureScreen';
  const SelectAmountAndTenureScreen({super.key});

  @override
  State<SelectAmountAndTenureScreen> createState() => _SelectAmountAndTenureScreenState();
}

class _SelectAmountAndTenureScreenState extends State<SelectAmountAndTenureScreen> {
  String? _dropdownValue;
  String? _dropdownValueforIncome;
  bool chkBoxVal1 = false;
  bool chkBoxVal2 = false;
  bool chkBoxVal3 = false;

  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  double amount = 0;
  TextEditingController selectAmountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectAmountController.text = amount.toStringAsFixed(0);
    selectAmountController.addListener(() {
      final newAmount = double.tryParse(selectAmountController.text);
      if (newAmount != null && newAmount != amount) {
        setState(() {
          amount = newAmount;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('CREDITBEE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: Container(
        color: Colors.indigo.shade50,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  '''Please select Your Amount And\nTenure As Per Your Requirements''',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 40,),
              CustomTextFormField(
                controller: selectAmountController,
                labelText: 'Select Amount',
              ),
              Slider(
                min: 0,
                max: 500000,
                value: amount,
                onChanged: (val) {
                  setState(() {
                    amount = val;
                    selectAmountController.text = val.toStringAsFixed(0);
                  });
                },
              ),

              const SizedBox(height: 32),
              CustomDropdownFormField(
                labelText: 'Select Tenure',
                hintText: 'Select an option',
                //  prefixIcon: Icon(Icons.list),
                items: ['1 Year', '2 Years', '3 Years', '5 Years'],
                value: _dropdownValueforIncome,
                onChanged: (value) {
                  setState(() {
                    _dropdownValueforIncome = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select an option';
                  }
                  return null;
                },
                onSaved: (value) {
                  // Save selected option value
                },
                filled: true,
                fillColor: Colors.transparent,
              ),
                Spacer(),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoanStatusApprovedScreen()));
                  // Handle submit button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF623D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
