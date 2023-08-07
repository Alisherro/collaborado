class AdviceModel {
  int? id;
  String? advice;

  AdviceModel({this.id, this.advice});

  AdviceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    advice = json['advice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['advice'] = advice;
    return data;
  }
}
