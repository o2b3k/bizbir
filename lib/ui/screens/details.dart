import 'package:flutter/material.dart';
import 'package:bizbir/models/job.dart';
import 'package:bizbir/ui/layouts/experience.dart';
import 'package:bizbir/ui/layouts/job_item.dart';

class DetailsScreen extends StatelessWidget {
  final JobModel job;

  const DetailsScreen({Key key, @required this.job}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${job.jobName}"),
      ),
      backgroundColor: Color(0xfff0f0f6),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            // top: 0,
            height: MediaQuery.of(context).size.height / 1,
            child: Container(
              margin: EdgeInsets.only(top: 80),
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Text(
                        "${job.companyName}",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                    ),
                    Center(
                      child: Text(
                        "${job.jobName}",
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Divider(),
                    if (job.experience != null)
                      Experience(
                        title: "Опыт работы",
                        description: job.experience,
                        icon: Icons.work,
                      ),
                    if (job.workType != null)
                      Experience(
                        title: "Тип работы",
                        description: job.workType,
                        icon: Icons.alarm,
                      ),
                    if (job.language != null)
                      Experience(
                        title: "Язык",
                        description: job.language.join(', '),
                        icon: Icons.language,
                      ),
                    if (job.address != null)
                      Experience(
                        title: "Адрес",
                        description: job.address,
                        icon: Icons.map,
                      ),
                    if (job.suitability != null)
                      JobItem(
                        title: "Приспособленность рабочего места",
                        description: job.suitability.join(', \n'),
                      ),
                    if (job.requirements != null)
                      JobItem(
                        title: "Требования",
                        description: job.requirements,
                      ),
                    if (job.responsibility != null)
                      JobItem(
                        title: "Обязанности",
                        description: job.responsibility,
                      ),
                    if (job.conditions != null)
                      JobItem(
                        title: "Условия",
                        description: job.conditions,
                      ),
                    if (job.salary != null)
                      JobItem(
                        title: "Заработная плата",
                        description: job.salary,
                      ),
                    if (job.aboutCompany != null)
                      JobItem(
                        title: "О компании",
                        description: job.aboutCompany,
                      ),
                    if (job.email != null)
                      JobItem(
                        title: "Email",
                        description: job.email,
                      ),
                    if (job.phone != null)
                      JobItem(
                        title: "Телефон",
                        description: job.phone,
                      ),
                    if (job.countJobs != null)
                      JobItem(
                        title: "Количество вакансии",
                        description: job.countJobs.toString(),
                      ),
                    if (job.endDate != null)
                      JobItem(
                        title: "Крайний срок подачи",
                        description: job.endDate,
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
