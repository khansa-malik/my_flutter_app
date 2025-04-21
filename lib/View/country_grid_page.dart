import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/countries_controller.dart';

class CountryGridPage extends StatelessWidget {
  final controller = Get.find<CountriesController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid for ${controller.selectedCountry}")),
      body: GetBuilder<CountriesController>(
        builder: (_) {
          final selectedCountry = controller.selectedCountry;
          final index = controller.countries.countriesName.indexOf(selectedCountry);
          final selectedColor = controller.countries.colorsName[index];

          return GridView.builder(
            itemCount: 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, _) {
              return Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: _getColorFromName(selectedColor),
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Color: $selectedColor", style: TextStyle(fontSize: 18)),
                      SizedBox(height: 8),
                      Text("Country: $selectedCountry", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  // Convert color string to Color
  Color _getColorFromName(String colorName) {
    switch (colorName.toLowerCase()) {
      case 'red':
        return Colors.red;
      case 'green':
        return Colors.green;
      case 'blue':
        return Colors.blue;
      case 'yellow':
        return Colors.yellow;
      default:
        return Colors.grey;
    }
  }
}
