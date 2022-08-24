// To parse this JSON data, do
//
import 'dart:convert';

// final medicinmodel = medicinmodelFromJson(jsonString);

// Medicinmodel medicinmodelFromJson(String str) =>
//     Medicinmodel.fromJson(json.decode(str));

// String medicinmodelToJson(Medicinmodel data) => json.encode(data.toJson());

class Medicinmodel {
  Medicinmodel({
    this.problems,
  });

  List<Problem>? problems;

  factory Medicinmodel.fromJson(Map<String, dynamic> json) => Medicinmodel(
        problems: List<Problem>.from(
            json["problems"].map((x) => Problem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "problems": List<dynamic>.from(problems!.map((x) => x.toJson())),
      };
}

class Problem {
  Problem({
    this.diabetes,
    this.asthma,
  });

  List<Diabetes>? diabetes;
  List<Asthma>? asthma;

  factory Problem.fromJson(Map<String, dynamic> json) => Problem(
        diabetes: List<Diabetes>.from(
            json["Diabetes"].map((x) => Diabetes.fromJson(x))),
        asthma:
            List<Asthma>.from(json["Asthma"].map((x) => Asthma.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Diabetes": List<dynamic>.from(diabetes!.map((x) => x.toJson())),
        "Asthma": List<dynamic>.from(asthma!.map((x) => x.toJson())),
      };
}

class Asthma {
  Asthma();

  factory Asthma.fromJson(Map<String, dynamic> json) => Asthma();

  Map<String, dynamic> toJson() => {};
}

class Diabetes {
  Diabetes({
    this.medications,
    this.labs,
  });

  List<Medication>? medications;
  List<Lab>? labs;

  factory Diabetes.fromJson(Map<String, dynamic> json) => Diabetes(
        medications: List<Medication>.from(
            json["medications"].map((x) => Medication.fromJson(x))),
        labs: List<Lab>.from(json["labs"].map((x) => Lab.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "medications": List<dynamic>.from(medications!.map((x) => x.toJson())),
        "labs": List<dynamic>.from(labs!.map((x) => x.toJson())),
      };
}

class Lab {
  Lab({
    this.missingField,
  });

  String? missingField;

  factory Lab.fromJson(Map<String, dynamic> json) => Lab(
        missingField: json["missing_field"],
      );

  Map<String, dynamic> toJson() => {
        "missing_field": missingField,
      };
}

class Medication {
  Medication({
    this.medicationsClasses,
  });

  List<MedicationsClass>? medicationsClasses;

  factory Medication.fromJson(Map<String, dynamic> json) => Medication(
        medicationsClasses: List<MedicationsClass>.from(
            json["medicationsClasses"]
                .map((x) => MedicationsClass.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "medicationsClasses":
            List<dynamic>.from(medicationsClasses!.map((x) => x.toJson())),
      };
}

class MedicationsClass {
  MedicationsClass({
    this.className,
    //  this.className2,
  });

  List<ClassName>? className;
  //List<ClassName>? className2;

  factory MedicationsClass.fromJson(Map<String, dynamic> json) =>
      MedicationsClass(
        className: List<ClassName>.from(
            json["className"].map((x) => ClassName.fromJson(x))),
        // className2: List<ClassName>.from(
        //     json["className2"].map((x) => ClassName.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "className": List<dynamic>.from(className!.map((x) => x.toJson())),
        // "className2": List<dynamic>.from(className2!.map((x) => x.toJson())),
      };
}

class ClassName {
  ClassName({
    this.associatedDrug,
  });

  List<AssociatedDrug>? associatedDrug;

  factory ClassName.fromJson(Map<String, dynamic> json) => ClassName(
        associatedDrug: List<AssociatedDrug>.from(
            json["associatedDrug"].map((x) => AssociatedDrug.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "associatedDrug":
            List<dynamic>.from(associatedDrug!.map((x) => x.toJson())),
      };
}

class AssociatedDrug {
  AssociatedDrug({
    this.name,
    this.dose,
    this.strength,
  });

  String? name;
  String? dose;
  String? strength;

  factory AssociatedDrug.fromJson(Map<String, dynamic> json) => AssociatedDrug(
        name: json["name"],
        dose: json["dose"],
        strength: json["strength"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "dose": dose,
        "strength": strength,
      };
}
