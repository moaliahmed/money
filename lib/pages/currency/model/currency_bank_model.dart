class CurrencyBankModel {
  int? currencyId;
  String? name;
  String? image;
  double? currentBuyPrice;
  double? currentBuyPriceChange;
  double? currentSellPrice;
  double? currentSellPriceChange;
  String? scrapedAt;
  List<CurrencyPricesModel>? prices;

  CurrencyBankModel(
      {this.currencyId,
        this.name,
        this.image,
        this.currentBuyPrice,
        this.currentBuyPriceChange,
        this.currentSellPrice,
        this.currentSellPriceChange,
        this.scrapedAt,
        this.prices});

  CurrencyBankModel.fromJson(Map<String, dynamic> json) {
    currencyId = json['currency_id'];
    name = json['name'];
    image = json['image'];
    currentBuyPrice = double.parse(json['current_buy_price'].toString());
    currentBuyPriceChange = double.parse(json['current_buy_price_change'].toString());
    currentSellPrice = double.parse(json['current_sell_price'].toString());
    currentSellPriceChange = double.parse(json['current_sell_price_change'].toString());
    scrapedAt = json['scraped_at'];
    if (json['prices'] != null) {
      prices = <CurrencyPricesModel>[];
      json['prices'].forEach((v) {
        prices!.add(new CurrencyPricesModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currency_id'] = this.currencyId;
    data['name'] = this.name;
    data['image'] = this.image;
    data['current_buy_price'] = this.currentBuyPrice;
    data['current_buy_price_change'] = this.currentBuyPriceChange;
    data['current_sell_price'] = this.currentSellPrice;
    data['current_sell_price_change'] = this.currentSellPriceChange;
    data['scraped_at'] = this.scrapedAt;
    if (this.prices != null) {
      data['prices'] = this.prices!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CurrencyPricesModel {
  double? buyPrice;
  double? buyRateChange;
  double? sellPrice;
  double? sellRateChange;
  String? scrapedAt;

  CurrencyPricesModel(
      {this.buyPrice,
        this.buyRateChange,
        this.sellPrice,
        this.sellRateChange,
        this.scrapedAt});

  CurrencyPricesModel.fromJson(Map<String, dynamic> json) {
    buyPrice = double.parse(json['buy_price'].toString());
    buyRateChange = double.parse(json['buy_rate_change'].toString());
    sellPrice = double.parse(json['sell_price'].toString());
    sellRateChange = double.parse(json['sell_rate_change'].toString());
    scrapedAt = json['scraped_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['buy_price'] = this.buyPrice;
    data['buy_rate_change'] = this.buyRateChange;
    data['sell_price'] = this.sellPrice;
    data['sell_rate_change'] = this.sellRateChange;
    data['scraped_at'] = this.scrapedAt;
    return data;
  }
}

class MyData {
  DateTime date;
  double price;

  MyData({required this.date, required this.price});
}