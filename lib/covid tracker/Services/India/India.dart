import 'package:COVID19/Services/Networking.dart';

const url = 'https://api.covid19india.org/data.json';
const districturl = 'https://api.covid19india.org/v2/state_district_wise.json';

class IndiaModel {
  Future<dynamic> getStateData() async {
    NetworkHelper networkHelper = NetworkHelper(url);

    var indiaData = await networkHelper.getData();
    print(indiaData);
    return indiaData;
  }

  Future<dynamic> getState(String stateName) async {
    NetworkHelper networkHelper = NetworkHelper(url);
    var indiaData = await networkHelper.getData();
    var state;
    print(stateName);
    for (int i = 1; i < 38; i++) {
      if (stateName.toUpperCase() ==
          (indiaData['statewise'][i]['state']).toUpperCase()) {
        state = indiaData['statewise'][i];
        break;
      }
    }
    print(state);
    return state;
  }

  Future<dynamic> getDistrictData(String stateName) async {
    NetworkHelper networkHelper = NetworkHelper(districturl);
    var districtData = await networkHelper.getData();
    var districts;
    print(districtData);
    for (int i = 1; i < 38; i++) {
      if (stateName.toUpperCase() ==
          (districtData[i]['state']).toString().toUpperCase()) {
        districts = districtData[i];
        break;
      }
    }
    print(districts);
    return districts;
  }
}
