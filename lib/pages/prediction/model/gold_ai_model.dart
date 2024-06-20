class GoldAiModel {
  double? buy;
  String? karat;
  double? sell;

  GoldAiModel({this.buy, this.karat, this.sell});

  GoldAiModel.fromJson(Map<String, dynamic> json) {
    buy = json['Buy'];
    karat = json['Karat'];
    sell = json['Sell'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Buy'] = this.buy;
    data['Karat'] = this.karat;
    data['Sell'] = this.sell;
    return data;
  }
}