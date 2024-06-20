class GoldModel {
  String? name;
  List<int>? buyPrices;
  int? currentBuyPrice;
  int? currentSellPrice;

  GoldModel(
      {this.name, this.buyPrices, this.currentBuyPrice, this.currentSellPrice});

  GoldModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    buyPrices = json['buy_prices'].cast<int>();
    currentBuyPrice = json['current_buy_price'];
    currentSellPrice = json['current_sell_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['buy_prices'] = this.buyPrices;
    data['current_buy_price'] = this.currentBuyPrice;
    data['current_sell_price'] = this.currentSellPrice;
    return data;
  }
}