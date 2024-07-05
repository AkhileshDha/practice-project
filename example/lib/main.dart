import 'package:flutter/material.dart';

class DiscountTag extends StatelessWidget {
  final String discountText;
  final String conditionText;
  final Color backgroundColor;

  const DiscountTag({
    Key? key,
    required this.discountText,
    required this.conditionText,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(2, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'EXTRA',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            discountText,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            conditionText,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

class DiscountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Discounts')),
      body: ListView(
        children: [
          DiscountTag(
            discountText: '10% OFF',
            conditionText: 'On orders above \$2000',
            backgroundColor: Colors.green,
          ),
          DiscountTag(
            discountText: '15% OFF',
            conditionText: 'On orders above \$5000',
            backgroundColor: Colors.blue,
          ),
          DiscountTag(
            discountText: '20% OFF',
            conditionText: 'On orders above \$10000',
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: DiscountPage(),
));
