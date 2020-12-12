import 'package:bizbir/models/job.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final JobModel job;

  const DetailsScreen({Key key, @required this.job}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${job.jobName}"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            // top: 0,
            height: MediaQuery.of(context).size.height / 1,
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Text("${job.companyName}"),
                    ),
                    Text(
                      "${job.jobName}",
                      style: Theme.of(context).textTheme.headline,
                    ),
                    Divider(color: Colors.black),
                    Text(
                      "${job.address}",
                      style: Theme.of(context)
                          .textTheme
                          .body2
                          .apply(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Обязанности",
                      style: Theme.of(context).textTheme.subhead,
                    ),
                    Divider(color: Colors.black),
                    Text(
                      "${job.requirements}",
                      style: Theme.of(context)
                          .textTheme
                          .body2
                          .apply(color: Colors.grey),
                      maxLines: 3,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Требования",
                      style: Theme.of(context).textTheme.subhead,
                    ),
                    Divider(color: Colors.black),
                    Text(
                      "${job.experience}",
                      style: Theme.of(context)
                          .textTheme
                          .body2
                          .apply(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text("Образование",
                        style: Theme.of(context).textTheme.subhead),
                    Divider(color: Colors.black),
                    Text(
                      "${job.aboutCompany}",
                      style: Theme.of(context)
                          .textTheme
                          .body2
                          .apply(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text("Заработок",
                        style: Theme.of(context).textTheme.subhead),
                    Divider(color: Colors.black),
                    Text(
                      "${job.salary}",
                      style: Theme.of(context)
                          .textTheme
                          .body2
                          .apply(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text("Контактное лицо",
                        style: Theme.of(context).textTheme.subhead),
                    Divider(color: Colors.black),
                    Text(
                      "${job.companyName}",
                      style: Theme.of(context)
                          .textTheme
                          .body2
                          .apply(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text("Контактный телефон",
                        style: Theme.of(context).textTheme.subhead),
                    Divider(color: Colors.black),
                    Text(
                      "${job.phone}",
                      style: Theme.of(context)
                          .textTheme
                          .body2
                          .apply(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text("Адрес электронной почты",
                        style: Theme.of(context).textTheme.subhead),
                    Divider(color: Colors.black),
                    Text(
                      "${job.email}",
                      style: Theme.of(context)
                          .textTheme
                          .body2
                          .apply(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Center(
                      child: IconButton(
                        icon: Icon(Icons.play_arrow, color: Colors.blue),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.height * .7,
                      height: 45,
                      child: RaisedButton(
                        child: Text(
                          "Откликнуться",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .apply(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
