class CurrencyAiModel {
  List<Predictions>? predictions;

  CurrencyAiModel({this.predictions});

  CurrencyAiModel.fromJson(Map<String, dynamic> json) {
    if (json['predictions'] != null) {
      predictions = <Predictions>[];
      json['predictions'].forEach((v) {
        predictions!.add(new Predictions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.predictions != null) {
      data['predictions'] = this.predictions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Predictions {
  String? currency;
  double? buy;
  double? sell;

  Predictions({this.currency, this.buy, this.sell});

  Predictions.fromJson(Map<String, dynamic> json) {
    currency = json['Currency'];
    buy = json['Buy'];
    sell = json['Sell'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Currency'] = this.currency;
    data['Buy'] = this.buy;
    data['Sell'] = this.sell;
    return data;
  }
}