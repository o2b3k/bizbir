import 'dart:convert';

JobModel apiResponseFromJson(String str) => JobModel.fromJson(json.decode(str));

String apiResponseToJson(JobModel data) => json.encode(data.toJson());

class JobModel {
  final int id;
  final String companyName;
  final String jobName;
  final String experience;
  final String employmentType;
  final String workType;
  final String workingHours;
  final dynamic language;
  final String address;
  final dynamic suitability;
  final String salary;
  final int countJobs;
  final String endDate;
  final String requirements;
  final String responsibility;
  final String conditions;
  final String aboutCompany;
  final String email;
  final String phone;
  final String companyImage;
  final String createdAt;

  JobModel(
      {this.id,
      this.companyName,
      this.jobName,
      this.experience,
      this.employmentType,
      this.workType,
      this.workingHours,
      this.language,
      this.address,
      this.suitability,
      this.salary,
      this.countJobs,
      this.endDate,
      this.requirements,
      this.responsibility,
      this.conditions,
      this.aboutCompany,
      this.email,
      this.phone,
      this.companyImage,
      this.createdAt});

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      id: json["id"] as int,
      companyName: json["company_name"] as String,
      jobName: json["job_name"] as String,
      experience: json["experience"] as String,
      employmentType: json["employment_type"] as String,
      workType: json["work_type"] as String,
      workingHours: json["working_hours"] as String,
      language: json["language"] as dynamic,
      address: json["address"] as String,
      suitability: json["suitability"] as dynamic,
      salary: json["salary"] as String,
      countJobs: json["count_jobs"] as int,
      endDate: json["end_date"] as String,
      requirements: json["requirements"] as String,
      responsibility: json["responsibility"] as String,
      conditions: json["conditions"] as String,
      aboutCompany: json["about_company"] as String,
      email: json["email"] as String,
      phone: json["phone"] as String,
      companyImage: json["company_image"] as String,
      createdAt: json["created_at"] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "company_name": companyName,
        "job_name": jobName,
        "experience": experience,
        "employment_type": employmentType,
        "work_type": workType,
        "working_hours": workingHours,
        "language": language,
        "address": address,
        "suitability": suitability,
        "salary": salary,
        "count_jobs": countJobs,
        "end_date": endDate,
        "requirements": requirements,
        "responsibility": responsibility,
        "conditions": conditions,
        "about_company": aboutCompany,
        "email": email,
        "phone": phone,
        "company_image": companyImage,
        "created_at": createdAt
      };
}
