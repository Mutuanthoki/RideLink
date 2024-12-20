import 'package:counter/accountscreen.dart';
import 'package:flutter/material.dart';

class Countryselectionscreen extends StatefulWidget {
  const Countryselectionscreen({super.key});

  @override
  State<Countryselectionscreen> createState() => _CountryselectionscreenState();
}

List<String> countries = [
  'Ukraine',
  'United Arab Emirates',
  'United Kingdom',
  'United States',
  'Uruguay',
  'Uzbekistan',
  'Vanuatu',
  'Vatican City',
  'Venezuela',
  'Vietnam',
];

String selectedCountry = 'Vietnam';

class _CountryselectionscreenState extends State<Countryselectionscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(169, 221, 233, 1),
        title: const Text(
          'Choose Country',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Accountscreen(),
                  ),
                );
              },
              child: Container(
                color: Colors.white,
                width: 40,
                height: 30,
                child: const Text(
                  'Next',
                  style: TextStyle(
                    color: Color.fromRGBO(169, 221, 233, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(countries[index]),
            trailing: selectedCountry == countries[index]
                ? const Icon(Icons.check, color: Colors.blue)
                : null,
            onTap: () {
              setState(() {
                selectedCountry = countries[index];
              });
            },
          );
        },
      ),
    );
  }
}
