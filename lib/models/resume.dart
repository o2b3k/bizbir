class ResumeModel {
  final int id;
  final String firstName;
  final String lastName;
  final String middleName;
  final String birthday;
  final String phone;
  final String email;
  final String address;
  final String gender;
  final String educationLevel;
  final String institut;
  final String faculty;
  final String specialty;
  final String yearOfEnding;
  final String nameOfCourse;
  final String organizationCourse;
  final String dateCourse;
  final String courseAddress;
  final String nativeLang;
  final dynamic otherLang;
  final String position;
  final String organization;
  final String jobName;
  final String jobAddress;
  final String jobSite;
  final String jobStartDate;
  final String jobEndDate;
  final String achievements;
  final String desiredSalary;
  final String job;
  final String about;
  final String skills;
  final String abilityCategory;
  final String suitability;
  final String employmentType;
  final String typeJob;
  final String driverLicense;
  final String image;
  final String cv;
  final String careerObjective;
  final String createdAt;

  ResumeModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.middleName,
      this.birthday,
      this.phone,
      this.email,
      this.address,
      this.gender,
      this.educationLevel,
      this.institut,
      this.faculty,
      this.specialty,
      this.yearOfEnding,
      this.nameOfCourse,
      this.organizationCourse,
      this.dateCourse,
      this.courseAddress,
      this.nativeLang,
      this.otherLang,
      this.position,
      this.organization,
      this.jobName,
      this.jobAddress,
      this.jobSite,
      this.jobStartDate,
      this.jobEndDate,
      this.achievements,
      this.desiredSalary,
      this.job,
      this.about,
      this.skills,
      this.abilityCategory,
      this.suitability,
      this.employmentType,
      this.typeJob,
      this.driverLicense,
      this.image,
      this.cv,
      this.careerObjective,
      this.createdAt});

  factory ResumeModel.fromJson(Map<String, dynamic> json) {
    return ResumeModel(
        id: json["id"] as int,
        firstName: json["first_name"] as String,
        lastName: json["last_name"] as String,
        middleName: json["middle_name"] as String,
        birthday: json["birthday"] as String,
        phone: json["phone"] as String,
        email: json["email"] as String,
        address: json["address"] as String,
        gender: json["gender"] as String,
        educationLevel: json["education_level"] as String,
        institut: json["institut"] as String,
        faculty: json["faculty"] as String,
        specialty: json["specialty"] as String,
        yearOfEnding: json["year_of_ending"] as String,
        nameOfCourse: json["name_of_course"] as String,
        organizationCourse: json["organization_course"] as String,
        dateCourse: json["date_course"] as String,
        courseAddress: json["course_address"] as String,
        nativeLang: json["native_lang"] as String,
        otherLang: json["other_lang"] as dynamic,
        position: json["position"] as String,
        organization: json["organization"] as String,
        jobName: json["job_name"] as String,
        jobAddress: json["job_address"] as String,
        jobSite: json["job_site"] as String,
        jobStartDate: json["job_start_date"] as String,
        jobEndDate: json["job_end_date"] as String,
        achievements: json["achievements"] as String,
        desiredSalary: json["desired_salary"] as String,
        job: json["job"] as String,
        about: json["about"] as String,
        skills: json["skills"] as String,
        abilityCategory: json["ability_category"] as String,
        suitability: json["suitability"] as String,
        employmentType: json["employment_type"] as String,
        typeJob: json["type_job"] as String,
        driverLicense: json["driver_license"] as String,
        image: json["image"] as String,
        cv: json["cv"] as String,
        careerObjective: json["career_objective"] as String,
        createdAt: json["created_at"] as String);
  }
}
