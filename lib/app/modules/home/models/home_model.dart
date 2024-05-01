List<DataUserAll> dataUserAllFromJson({required List<dynamic> str}) =>
    List<DataUserAll>.from(str.map((e) => DataUserAll.fromJson(e)).toList());

class DataUserAll {
  int id;
  String firstName;
  String lastName;
  int age;
  int salary;

  DataUserAll({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.salary,
  });

  factory DataUserAll.fromJson(Map<String, dynamic> json) => DataUserAll(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        age: json["age"],
        salary: json["salary"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "age": age,
        "salary": salary,
      };
}
