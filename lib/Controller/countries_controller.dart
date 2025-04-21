import 'package:get/get.dart';
import '../models/countries_model.dart';

class CountriesController extends GetxController {
  Countries countries = Countries(colorsName: [], countriesName: []);
  String selectedCountry = '';

  void loadStaticData() {
    countries = Countries(
      colorsName: ['red', 'green', 'blue','green','yellow'],
      countriesName: ['USA', 'India', 'Germany','Pakistan','Romania'],
    );
    update(); // Triggers GetBuilder rebuild
  }

  void setSelectedCountry(String country) {
    selectedCountry = country;
    update(); // Rebuilds UI using GetBuilder
  }
}
