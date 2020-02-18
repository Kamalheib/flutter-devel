import 'networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = '7B21AE94-1CE2-4F3B-946A-9177AC10D69E';
const theCoinApiIOUrl = 'https://min-api.cryptocompare.com/data/price';

class CoinData {
  Future getCoinData(String currency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String url = '$theCoinApiIOUrl'
          '?fsym=$crypto'
          '&tsyms=$currency';

      NetworkHelper networkHelper = NetworkHelper(url: url);
      var coinData = await networkHelper.getData();
      if (coinData == null) {
        throw 'Problame with get request';
      }

      var rate = coinData[currency];
      cryptoPrices[crypto] = rate.toStringAsFixed(0);
    }
    return cryptoPrices;
  }
}
