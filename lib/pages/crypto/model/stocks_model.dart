class StocksModel {
  String? symbol;
  String? companyName;
  String? lastPrice;
  String? change;
  String? changePercent;
  String? marketTime;
  String? volume;
  String? marketCap;

  StocksModel(
      {this.symbol,
        this.companyName,
        this.lastPrice,
        this.change,
        this.changePercent,
        this.marketTime,
        this.volume,
        this.marketCap});

  StocksModel.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    companyName = json['company_name'];
    lastPrice = json['last_price'];
    change = json['change'];
    changePercent = json['change_percent'];
    marketTime = json['market_time'];
    volume = json['volume'];
    marketCap = json['market_cap'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['symbol'] = this.symbol;
    data['company_name'] = this.companyName;
    data['last_price'] = this.lastPrice;
    data['change'] = this.change;
    data['change_percent'] = this.changePercent;
    data['market_time'] = this.marketTime;
    data['volume'] = this.volume;
    data['market_cap'] = this.marketCap;
    return data;
  }
}