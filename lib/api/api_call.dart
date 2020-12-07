import 'dart:convert';
import 'dart:io';
import 'package:bizbir/models/job.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ApiCall {
  //TODO: Step1 - Declare the URL endpoint to hit
  final String API_URL = 'http://bizbir.loc/api/v1/jobs';

  Future<JobModel> getJobDataResponse() async {
    //TODO: Step2 - Declare a file name that has .json extension and get the Cache Directory

    String fileName = "CacheData.json";
    var cacheDir = await getTemporaryDirectory();

    //TODO: Step 3 - Check of the Json file exists so that we can decide whether to make an API call or not

    if (await File(cacheDir.path + "/" + fileName).exists()) {
      print("Loading from cache");
      //TOD0: Reading from the json File
      var jsonData = File(cacheDir.path + "/" + fileName).readAsStringSync();
      JobModel response = JobModel.fromJson(json.decode(jsonData));
      return response;
    }
    //TODO: If the Json file does not exist, then make the API Call

    else {
      print("Loading from API");
      var response = await http.get(API_URL);

      if (response.statusCode == 200) {
        var jsonResponse = response.body;
        JobModel res = JobModel.fromJson(json.decode(jsonResponse));

        //TODO: Step 4  - Save the json response in the CacheData.json file in Cache
        var tempDir = await getTemporaryDirectory();
        File file = new File(tempDir.path + "/" + fileName);
        file.writeAsString(jsonResponse, flush: true, mode: FileMode.write);

        return res;
      }
    }
  }
}
