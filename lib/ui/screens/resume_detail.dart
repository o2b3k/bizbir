import 'package:flutter/material.dart';
import 'package:bizbir/models/resume.dart';
import 'package:bizbir/ui/layouts/experience.dart';
import 'package:bizbir/ui/layouts/job_item.dart';

class ResumeDetailScreen extends StatelessWidget {
  final ResumeModel resume;

  const ResumeDetailScreen({Key key, @required this.resume}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(resume.firstName + ' ' + resume.lastName),
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
                        resume.firstName +
                            ' ' +
                            resume.lastName +
                            ' ' +
                            resume.middleName,
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Divider(),
                    if (resume.organization != null)
                      Experience(
                        title: "Опыт работы",
                        description: resume.organization,
                        icon: Icons.work,
                      ),
                    if (resume.typeJob != null)
                      Experience(
                        title: "Тип работы",
                        description: resume.typeJob,
                        icon: Icons.alarm,
                      ),
                    if (resume.nativeLang != null)
                      Experience(
                        title: "Родной язык ",
                        description: resume.nativeLang,
                        icon: Icons.language,
                      ),
                    if (resume.otherLang != null && resume.otherLang != '[]' ||
                        resume.otherLang is String == false)
                      Experience(
                        title: "Другие языки",
                        description: resume.otherLang.join(', '),
                        icon: Icons.language,
                      ),
                    if (resume.address != null)
                      Experience(
                        title: "Адрес",
                        description: resume.address,
                        icon: Icons.map,
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
