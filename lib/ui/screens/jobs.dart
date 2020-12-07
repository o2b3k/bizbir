import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bizbir/ui/screens/login.dart';
import 'package:bizbir/ui/screens/screens.dart';
import 'package:bizbir/ui/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:bizbir/models/bizbir_model.dart';
import 'package:bizbir/models/job.dart';
import 'package:bizbir/config/common.dart';

Future<List<JobModel>> fetchProduct(http.Client client) async {
  final response = await client.get(GET_JOBS);
  return compute(parseProducts, response.body);
}

List<JobModel> parseProducts(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<JobModel>((json) => JobModel.fromJson(json)).toList();
}

class JobPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f6),
      body: FutureBuilder(
        future: fetchProduct(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? JobScreen(jobs: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class JobScreen extends StatelessWidget {
  final List<JobModel> jobs;

  JobScreen({this.jobs});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 7.0,
                ),
                Row(
                  children: <Widget>[
                    MyDropDownButton(),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.login,
                        color: Colors.black87,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                    ),
                    // CircleAvatar(
                    //   backgroundImage: NetworkImage(
                    //       "https://cdn.pixabay.com/photo/2017/06/09/07/37/notebook-2386034_960_720.jpg"),
                    // )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 51,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Поиск",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide.none),
                            fillColor: Color(0xffe6e6ec),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffe6e6ec),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.tune),
                          onPressed: () {
                            Provider.of<BizbirModel>(context, listen: false)
                                .changeState();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: jobs.length,
                    itemBuilder: (ctx, i) {
                      return JobContainer(
                        description: jobs[i].description,
                        iconUrl: IMAGE_HOST + jobs[i].companyImage,
                        location: jobs[i].region,
                        salary: jobs[i].salary,
                        title: jobs[i].jobName,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => DetailsScreen(job: jobs[i]),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        Provider.of<BizbirModel>(context).visible
            ? Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                // height: MediaQuery.of(context).size.height / 1.3,
                child: MyBottomSheet(),
              )
            : Container(),
      ],
    );
  }
}
