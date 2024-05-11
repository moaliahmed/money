class SilverModel {
  int? silverId;
  String? name;
  String? currentPriceInEgp;
  String? currentRateChangeInEgp;
  String? currentRateChangePercentInEgp;
  String? currentPriceInUsd;
  String? currentRateChangeInUsd;
  String? currentRateChangePercentInUsd;
  String? scrapedAt;
  List<SilverPricesModel>? prices;

  SilverModel(
      {this.silverId,
        this.name,
        this.currentPriceInEgp,
        this.currentRateChangeInEgp,
        this.currentRateChangePercentInEgp,
        this.currentPriceInUsd,
        this.currentRateChangeInUsd,
        this.currentRateChangePercentInUsd,
        this.scrapedAt,
        this.prices});

  SilverModel.fromJson(Map<String, dynamic> json) {
    silverId = json['silver_id'];
    name = json['name'];
    currentPriceInEgp = json['current_price_in_egp'];
    currentRateChangeInEgp = json['current_rate_change_in_egp'];
    currentRateChangePercentInEgp = json['current_rate_change_percent_in_egp'];
    currentPriceInUsd = json['current_price_in_usd'];
    currentRateChangeInUsd = json['current_rate_change_in_usd'];
    currentRateChangePercentInUsd = json['current_rate_change_percent_in_usd'];
    scrapedAt = json['scraped_at'];
    if (json['prices'] != null) {
      prices = <SilverPricesModel>[];
      json['prices'].forEach((v) {
        prices!.add(new SilverPricesModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['silver_id'] = this.silverId;
    data['name'] = this.name;
    data['current_price_in_egp'] = this.currentPriceInEgp;
    data['current_rate_change_in_egp'] = this.currentRateChangeInEgp;
    data['current_rate_change_percent_in_egp'] =
        this.currentRateChangePercentInEgp;
    data['current_price_in_usd'] = this.currentPriceInUsd;
    data['current_rate_change_in_usd'] = this.currentRateChangeInUsd;
    data['current_rate_change_percent_in_usd'] =
        this.currentRateChangePercentInUsd;
    data['scraped_at'] = this.scrapedAt;
    if (this.prices != null) {
      data['prices'] = this.prices!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SilverPricesModel {
  String? priceInEgp;
  String? rateChangeInEgp;
  String? rateChangePercentInEgp;
  String? priceInUsd;
  String? rateChangeInUsd;
  String? rateChangePercentInUsd;
  String? scrapedAt;

  SilverPricesModel(
      {this.priceInEgp,
        this.rateChangeInEgp,
        this.rateChangePercentInEgp,
        this.priceInUsd,
        this.rateChangeInUsd,
        this.rateChangePercentInUsd,
        this.scrapedAt});

  SilverPricesModel.fromJson(Map<String, dynamic> json) {
    priceInEgp = json['price_in_egp'];
    rateChangeInEgp = json['rate_change_in_egp'];
    rateChangePercentInEgp = json['rate_change_percent_in_egp'];
    priceInUsd = json['price_in_usd'];
    rateChangeInUsd = json['rate_change_in_usd'];
    rateChangePercentInUsd = json['rate_change_percent_in_usd'];
    scrapedAt = json['scraped_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price_in_egp'] = this.priceInEgp;
    data['rate_change_in_egp'] = this.rateChangeInEgp;
    data['rate_change_percent_in_egp'] = this.rateChangePercentInEgp;
    data['price_in_usd'] = this.priceInUsd;
    data['rate_change_in_usd'] = this.rateChangeInUsd;
    data['rate_change_percent_in_usd'] = this.rateChangePercentInUsd;
    data['scraped_at'] = this.scrapedAt;
    return data;
  }
}

//SilverPricesModel