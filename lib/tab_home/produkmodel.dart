class ReportModel {
  final int patientid;
  final String mrn;
  final String name;
  final String sex;
  final String birthDate;
  final String xrayTypeCode;

  ReportModel(
      {this.patientid,
      this.mrn,
      this.name,
      this.sex,
      this.birthDate,
      this.xrayTypeCode});
  factory ReportModel.fromJson(Map<String, dynamic> json) {
    return ReportModel(
      patientid: json['patientid'] as int,
      mrn: json['mrn'] as String,
      name: json['name'] as String,
      birthDate: json['birth_date'] as String,
      xrayTypeCode: json['xray_type_code'] as String,
    );
  }
}
