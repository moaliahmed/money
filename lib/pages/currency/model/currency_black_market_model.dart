class CurrencyBlackMarketModel {
  int? currencyId;
  String? name;
  String? image;
  String? currentBuyPrice;
  String? currentBuyPriceColor;
  String? currentSellPrice;
  String? currentSellPriceColor;
  String? scrapedAt;
  List<BlackMarketPricesModel>? prices;

  CurrencyBlackMarketModel(
      {this.currencyId,
        this.name,
        this.image,
        this.currentBuyPrice,
        this.currentBuyPriceColor,
        this.currentSellPrice,
        this.currentSellPriceColor,
        this.scrapedAt,
        this.prices});

  CurrencyBlackMarketModel.fromJson(Map<String, dynamic> json) {
    currencyId = json['currency_id'];
    name = json['name'];
    image = json['image'];
    currentBuyPrice = json['current_buy_price'];
    currentBuyPriceColor = json['current_buy_price_color'];
    currentSellPrice = json['current_sell_price'];
    currentSellPriceColor = json['current_sell_price_color'];
    scrapedAt = json['scraped_at'];
    if (json['prices'] != null) {
      prices = <BlackMarketPricesModel>[];
      json['prices'].forEach((v) {
        prices!.add(new BlackMarketPricesModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currency_id'] = this.currencyId;
    data['name'] = this.name;
    data['image'] = this.image;
    data['current_buy_price'] = this.currentBuyPrice;
    data['current_buy_price_color'] = this.currentBuyPriceColor;
    data['current_sell_price'] = this.currentSellPrice;
    data['current_sell_price_color'] = this.currentSellPriceColor;
    data['scraped_at'] = this.scrapedAt;
    if (this.prices != null) {
      data['prices'] = this.prices!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BlackMarketPricesModel {
  String? buyPrice;
  String? buyPriceColor;
  String? sellPrice;
  String? sellPriceColor;

  BlackMarketPricesModel(
      {this.buyPrice, this.buyPriceColor, this.sellPrice, this.sellPriceColor});

  BlackMarketPricesModel.fromJson(Map<String, dynamic> json) {
    buyPrice = json['buy_price'];
    buyPriceColor = json['buy_price_color'];
    sellPrice = json['sell_price'];
    sellPriceColor = json['sell_price_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['buy_price'] = this.buyPrice;
    data['buy_price_color'] = this.buyPriceColor;
    data['sell_price'] = this.sellPrice;
    data['sell_price_color'] = this.sellPriceColor;
    return data;
  }
}