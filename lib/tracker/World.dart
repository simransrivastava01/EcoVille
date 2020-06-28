import 'Networking.dart';

const url = 'https://api.covid19api.com/summary';

class WorldModel {
  Future<dynamic> getWorldData() async {
    NetworkHelper networkHelper = NetworkHelper(url);

    var worldData = await networkHelper.getData();
    print(worldData);
    return worldData;
  }

  Future<dynamic> getCountryData(String country) async {
    NetworkHelper networkHelper = NetworkHelper(url);

    var worldData = await networkHelper.getData();
    var countryData;
    for (int i = 0; i < 186; i++) {
      if (country.toUpperCase() ==
          (worldData['Countries'][i]['Country']).toString().toUpperCase()) {
        countryData = worldData['Countries'][i];
        break;
      }
    }
    print(countryData);
    return countryData;
  }
}