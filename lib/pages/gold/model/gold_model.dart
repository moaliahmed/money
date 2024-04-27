class GoldModel {
  int? goldId;
  String? name;
  String? currentBuyPrice;
  String? currentSellPrice;
  String? scrapedAt;
  List<GoldPricesModel>? prices;

  GoldModel(
      {this.goldId,
        this.name,
        this.currentBuyPrice,
        this.currentSellPrice,
        this.scrapedAt,
        this.prices});

  GoldModel.fromJson(Map<String, dynamic> json) {
    goldId = json['gold_id'];
    name = json['name'];
    currentBuyPrice = json['current_buy_price'];
    currentSellPrice = json['current_sell_price'];
    scrapedAt = json['scraped_at'];
    if (json['prices'] != null) {
      prices = <GoldPricesModel>[];
      json['prices'].forEach((v) {
        prices!.add(new GoldPricesModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gold_id'] = this.goldId;
    data['name'] = this.name;
    data['current_buy_price'] = this.currentBuyPrice;
    data['current_sell_price'] = this.currentSellPrice;
    data['scraped_at'] = this.scrapedAt;
    if (this.prices != null) {
      data['prices'] = this.prices!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GoldPricesModel {
  String? buyPrice;
  String? sellPrice;

  GoldPricesModel({this.buyPrice, this.sellPrice});

  GoldPricesModel.fromJson(Map<String, dynamic> json) {
    buyPrice = json['buy_price'];
    sellPrice = json['sell_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['buy_price'] = this.buyPrice;
    data['sell_price'] = this.sellPrice;
    return data;
  }
}