import 'package:finefound/constants/colors.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  // List of filter options
  final List<String> _categories = [
    'All',
    'Catering',
    'Cuidado Personal',
    'Diseño',
    'Educación y Formación',
    'Entrenadores Personales',
    'Eventos',
    'Hogar',
    'Marketing y Publicidad',
    'Mascotas',
    'Otros',
    'Salud',
    'Servicios Legales'
  ];

  // Selected filter options
  final List<String> _selectedCategories = [];

  // Location filter
  String _location = '';

  // Home delivery filter
  bool _homeDelivery = false;

  // Price filter range
  RangeValues _priceRange = const RangeValues(0, 1000);

  // Open now filter
  bool _openNow = false;

  String _selectedCategory = 'All';

  int _getIndentationLevel(String category) {
    int indentationLevel = 0;
    while (category.startsWith('Ca') ||
        category.startsWith('M') ||
        category.startsWith('O') ||
        category.startsWith('S') ||
        category.startsWith('S')) {
      category = category.substring(2);
      indentationLevel = indentationLevel + 2;
    }
    while (category.startsWith('Cu') ||
        category.startsWith('D') ||
        category.startsWith('E') ||
        category.startsWith('H')) {
      category = category.substring(2);
      indentationLevel = indentationLevel + 5;
    }
    return indentationLevel;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Category'),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                // TODO: Apply filters to your data
              },
              icon: const Icon(Icons.close),
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Category filter
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('Categoría'),
                ),
                Column(
                  children: _categories.map((category) {
                    int indentationLevel = _getIndentationLevel(
                        category); // Define a function to determine indentation level
                    return Padding(
                      padding: EdgeInsets.only(left: 16.0 * indentationLevel),
                      child: RadioListTile<String>(
                        value: category,
                        groupValue: _selectedCategory,
                        title: Text(category),
                        onChanged: (value) {
                          setState(() {
                            _selectedCategory = value!;
                          });
                        },
                      ),
                    );
                  }).toList(),
                ),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Location filter
                      Text('Location'),

                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter location',
                          suffixIcon: Icon(Icons.location_on),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        onChanged: (value) {
                          setState(() {
                            _location = value;
                          });
                        },
                      ),

                      // Home delivery filter
                      Text('Home Delivery'),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                          onChanged: (value) {},
                          items: [DropdownMenuItem(child: Text("Yes"))],
                        )),
                      ),

                      // Price filter range
                      Text('Price'),

                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              readOnly: true,
                              initialValue: _priceRange.start.toString(),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(
                              width:
                                  16), // Add some spacing between the input fields
                          Expanded(
                            child: TextFormField(
                              readOnly: true,
                              initialValue: _priceRange.end.toString(),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      RangeSlider(
                        values: _priceRange,
                        min: 0,
                        max: 1000,
                        divisions: 10,
                        labels: RangeLabels(
                          _priceRange.start.toString(),
                          _priceRange.end.toString(),
                        ),
                        onChanged: (range) {
                          setState(() {
                            _priceRange = range;
                          });
                        },
                      ),

                      // Open now filter
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (v) {}),
                          Text("Open Now")
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Theme.of(context).colorScheme.primary),
                          child: Center(
                              child: Text(
                            "Filter",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
