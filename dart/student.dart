// ignore_for_file: unused_local_variab

class Student {
  String? name;
  int? age;
  int? admNo;
  String? phoneNumber;
  String? emailAddress;
  String? course;
  String? highSchoolName;
  String? uniUndergrad;
  Student.dip_student(String n, int a, String e, String hn) {
    this.name = n;
    this.admNo = a;
    this.emailAddress = e;
    highSchoolName = hn;
  }
  Student.degree_student(
      String n, int age, int a, String ph, String e, String hn) {
    name = n;
    this.age = age;
    this.admNo = a;
    this.phoneNumber = ph;
    this.emailAddress = e;
    this.highSchoolName = hn;
  }
  Student.masters_student(
      String n, int a, String e, int age, String ph, String c, String un) {
    this.name = n;
    this.age = age;
    this.admNo = a;
    this.phoneNumber = ph;
    this.emailAddress = e;
    this.course = c;
    this.uniUndergrad = un;
  }
  //Getters
  String? getName() => name;
  int? getAdmNo() => admNo;
  int? getAge() => age;
  String? getphoneNumber() => phoneNumber;
  String? getEmailaddress() => emailAddress;
  String? getCourse() => course;
  String? getHighSchoolName() => highSchoolName;
  String? getUniUndergrad() {
    return uniUndergrad;
  }

  //Setters
  //setters have a return type void because it just manipulates an attribute and doesn't return anything
  void setName(String n) {
    name = n;
  }

  set setAdmNo(int a) {
    admNo = a;
  }

  void setAge(int age) {
    age = age;
  }

  void setPhoneNumber(String ph) {
    phoneNumber = ph;
  }

  void setEmailAddress(String e) {
    emailAddress = e;
  }

  void setcourse(String c) {
    course = c;
  }

  void setHighSchoolName(String hn) {
    highSchoolName = hn;
  }

  set setUniUnderGrad(String un) {
    uniUndergrad = un;
  }

  void printdiplomaStudent() {
    print("=======diploma students informations");
    print('name:$name'
        '\n'
        'EmailAdress:$emailAddress'
        '\n'
        'phoneNumber:$phoneNumber');
  }

  void printdegreeStudent() {
    print("====Degree Students Informations");
    print('Name:$name' '\n' 'Age:$age' '\n' 'PhoneNumber:$phoneNumber');
  }

  void printmastersStudent() {
    print("===========Master Student Information====");
    print('name:$name' '\n ' 'Email:$emailAddress');
  }
}

void main() {
  Student degreeStudent = new Student.degree_student(
      "sandy", 22, 1234, "0713456076", "sandyy@gmail.com", "maryhill");
  Student mastersStudent = new Student.masters_student(
      "sonia", 22, "sonia@hotmail.com", 30, "0987654", "Ms", "MIT");
  Student diplomaStudent =
      new Student.dip_student("Mark", 19, "mark@hmail.com", "M");
  degreeStudent.setName("julie");
  print(degreeStudent.getName());
  degreeStudent.setEmailAddress("wyhommi@hmail.com");
  print(degreeStudent.getEmailaddress());
  print(degreeStudent.getAdmNo());
  print(mastersStudent.getName());
  print(mastersStudent.getCourse());
  diplomaStudent.setName("Dave");
  print(diplomaStudent.getName());
  print(diplomaStudent.getEmailaddress());
  mastersStudent.printmastersStudent();
  diplomaStudent.printdiplomaStudent();
  degreeStudent.printdegreeStudent();
}
