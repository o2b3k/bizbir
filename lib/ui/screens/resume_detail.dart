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
                    if (resume.email != null)
                      Experience(
                        title: "Email",
                        description: resume.email,
                        icon: Icons.email,
                      ),
                    if (resume.phone != null)
                      Experience(
                        title: "Телефон",
                        description: resume.phone,
                        icon: Icons.phone,
                      ),
                    if (resume.educationLevel != null)
                      JobItem(
                        title: "Уровень образования",
                        description: resume.educationLevel,
                      ),
                    if (resume.institut != null)
                      JobItem(
                        title: "Учебное заведение",
                        description: resume.institut,
                      ),
                    if (resume.faculty != null)
                      JobItem(
                        title: "Факультет",
                        description: resume.faculty,
                      ),
                    if (resume.specialty != null)
                      JobItem(
                        title: "Специальность",
                        description: resume.specialty,
                      ),
                    if (resume.yearOfEnding != null)
                      JobItem(
                        title: "Год окончания",
                        description: resume.yearOfEnding,
                      ),
                    if (resume.nameOfCourse != null)
                      JobItem(
                        title: "Название курса/тренинга",
                        description: resume.nameOfCourse,
                      ),
                    if (resume.organizationCourse != null)
                      JobItem(
                        title: "Организатор курса/тренинга",
                        description: resume.organizationCourse,
                      ),
                    if (resume.dateCourse != null)
                      JobItem(
                        title: "Дата прохождения",
                        description: resume.dateCourse,
                      ),
                    if (resume.position != null)
                      JobItem(
                        title: "Должность",
                        description: resume.position,
                      ),
                    if (resume.organization != null)
                      JobItem(
                          title: "Организация",
                          description: resume.organization),
                    if (resume.jobName != null)
                      JobItem(
                        title: "Сфера деятельности",
                        description: resume.jobName,
                      ),
                    if (resume.jobAddress != null)
                      JobItem(
                        title: "Город",
                        description: resume.jobAddress,
                      ),
                    if (resume.jobSite != null)
                      JobItem(
                        title: "Сайт организации",
                        description: resume.jobSite,
                      ),
                    if (resume.jobStartDate != null)
                      JobItem(
                        title: "Начало работы",
                        description: resume.jobStartDate,
                      ),
                    if (resume.jobEndDate != null)
                      JobItem(
                        title: "Окончание работы",
                        description: resume.jobEndDate,
                      ),
                    if (resume.achievements != null)
                      JobItem(
                        title: "Достижения, обязанности",
                        description: resume.achievements,
                      ),
                    if (resume.desiredSalary != null)
                      JobItem(
                        title: "Желаемая зарплата",
                        description: resume.desiredSalary,
                      ),
                    if (resume.job != null)
                      JobItem(
                          title: "Сфера деятельности", description: resume.job),
                    if (resume.about != null)
                      JobItem(
                        title: "Обо мне ( личная информация)",
                        description: resume.about,
                      ),
                    if (resume.skills != null)
                      JobItem(
                        title: "Навыки",
                        description: resume.skills,
                      ),
                    if (resume.suitability != null)
                      JobItem(
                        title: "Категория трудоспособности",
                        description: resume.abilityCategory,
                      ),
                    if (resume.suitability != null)
                      JobItem(
                        title: "Приспособленность к рабочему месту",
                        description: resume.suitability,
                      ),
                    if (resume.employmentType != null)
                      JobItem(
                        title: "Тип занятости",
                        description: resume.employmentType,
                      ),
                    if (resume.typeJob != null)
                      JobItem(title: "Тип работы", description: resume.typeJob),
                    if (resume.driverLicense != null)
                      JobItem(
                        title: "Категория прав",
                        description: resume.driverLicense,
                      ),
                    if (resume.careerObjective != null)
                      JobItem(
                        title: "Желаемая должность",
                        description: resume.careerObjective,
                      ),
                    SizedBox(
                      height: 15.0,
                    ),
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
