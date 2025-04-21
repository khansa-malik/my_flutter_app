import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/countries_controller.dart';
import 'country_grid_page.dart';

class CountryTokenPage extends StatelessWidget {
  final controller = Get.put(CountriesController());

  @override
  Widget build(BuildContext context) {
    controller.loadStaticData(); // Load once

    return Scaffold(
      appBar: AppBar(title: Text("Select Country")),
      body: GetBuilder<CountriesController>(
        builder: (_) {
          return Column(
            children: [
              Wrap(
                spacing: 10,
                children: List.generate(controller.countries.countriesName.length, (index) {
                  final country = controller.countries.countriesName[index];
                  return ChoiceChip(
                    label: Text(country),
                    selected: controller.selectedCountry == country,
                    onSelected: (_) => controller.setSelectedCountry(country),
                  );
                }),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (controller.selectedCountry.isNotEmpty) {
                    Get.to(() => CountryGridPage());
                  }
                },
                child: Text("Next"),
              )
            ],
          );
        },
      ),
    );
  }
}
