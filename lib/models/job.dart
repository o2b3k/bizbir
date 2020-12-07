import 'dart:convert';

JobModel apiResponseFromJson(String str) => JobModel.fromJson(json.decode(str));

String apiResponseToJson(JobModel data) => json.encode(data.toJson());

class JobModel {
  final int id;
  final String jobName;
  final String companyImage;
  final String companyName;
  final String region;
  final String suitability;
  final String salary;
  final String responsibility;
  final String workingHours;
  final String employmentType;
  final String quality;
  final String additionalRequests;
  final String description;
  final String education;
  final String contactPerson;
  final String contactPhone;
  final String contactEmail;
  final String createdAt;

  JobModel(
      {this.id,
      this.jobName,
      this.companyImage,
      this.companyName,
      this.region,
      this.suitability,
      this.salary,
      this.responsibility,
      this.workingHours,
      this.employmentType,
      this.quality,
      this.additionalRequests,
      this.description,
      this.education,
      this.contactPerson,
      this.contactPhone,
      this.contactEmail,
      this.createdAt});

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      id: json["id"] as int,
      jobName: json["job_name"] as String,
      companyImage: json["company_image"] as String,
      companyName: json["company_name"] as String,
      region: json["region"] as String,
      suitability: json["suitability"] as String,
      salary: json["salary"] as String,
      responsibility: json["responsibility"] as String,
      workingHours: json["working_hours"] as String,
      employmentType: json["employment_type"] as String,
      quality: json["qualities"] as String,
      additionalRequests: json["additional_requests"] as String,
      description: json["description"] as String,
      education: json["education"] as String,
      contactPerson: json["contact_person"] as String,
      contactPhone: json["contact_phone"] as String,
      contactEmail: json["contact_email"] as String,
      createdAt: json["created_at"] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "job_name": jobName,
        "company_image": companyImage,
        "company_name": companyName,
        "region": region,
        "suitability": suitability,
        "salary": salary,
        "responsibility": responsibility,
        "working_hours": workingHours,
        "employment_type": employmentType,
        "qualities": quality,
        "additional_requests": additionalRequests,
        "description": description,
        "education": education,
        "contact_person": contactPerson,
        "contact_phone": contactPhone,
        "contact_email": contactEmail,
        "created_at": createdAt
      };
}
