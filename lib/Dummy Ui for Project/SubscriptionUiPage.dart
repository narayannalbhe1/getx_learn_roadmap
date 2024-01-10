import 'package:flutter/material.dart';
import 'package:getx_learn_roadmap/Dummy%20Ui%20for%20Project/HorizontalScrollingDate.dart';
import 'package:intl/intl.dart';

class SubscriptionUiPage extends StatefulWidget {
  const SubscriptionUiPage({Key? key}) : super(key: key);

  @override
  _SubscriptionUiPageState createState() => _SubscriptionUiPageState();
}

class _SubscriptionUiPageState extends State<SubscriptionUiPage> {
  List<Map<String, dynamic>> _apiData = [
    {'Cust name': 'ABC ', 'product': 'Milk', 'qty': 10, 'Todays delivery': true},
    {'Cust name': 'XYZ ', 'product': 'Coconut', 'qty': 8, 'Todays delivery': false},
    {'Cust name': 'PQR ', 'product': 'Sugar', 'qty': 5, 'Todays delivery': true},
    {'Cust name': 'NMN ', 'product': 'Butter', 'qty': 9, 'Todays delivery': false},
  ];
  TextEditingController _searchController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    ))!;
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          'Subscription Customers',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Enter phone number or name',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Perform search functionality based on _searchController.text
                    print('Searching for: ${_searchController.text}');
                  },
                ),
              ),
            ),
          ),
          HorizontalDateList(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: DataTable(
                columnSpacing: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                columns: [
                  DataColumn(label: Text('')), // Empty label for checkbox column
                  DataColumn(label: Text('Cust name')),
                  DataColumn(label: Text('Product')),
                  DataColumn(label: Text('Qty')),
                  DataColumn(label: Text('Todays delivery')),
                ],
                rows: _apiData
                    .map((data) => DataRow(
                  selected: data['selected'] ?? false, // Track selection state
                  onSelectChanged: (bool? value) {
                    setState(() {
                      data['selected'] = value;
                    });
                  },
                  cells: [
                    DataCell(Checkbox(value: data['selected'] ?? false, onChanged: (value) {
                      setState(() {
                        data['selected'] = value; // Update selection state
                      });
                    })),
                    DataCell(Text(data['Cust name'].toString())),
                    DataCell(Text(data['product'].toString())),
                    DataCell(Text(data['qty'].toString())),
                    DataCell(
                      Switch(
                        value: data['Todays delivery'] as bool,
                        onChanged: (bool value) {
                          setState(() {
                            data['Todays delivery'] = value;
                          });
                        },
                      ),
                    ),
                  ],
                ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
