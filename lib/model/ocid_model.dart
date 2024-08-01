class OcidModel {
  final String ocid;

  OcidModel.fromjson(Map<String, dynamic> json)
    : ocid = json['ocid'];
}