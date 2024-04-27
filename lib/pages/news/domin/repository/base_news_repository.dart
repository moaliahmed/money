import 'package:dartz/dartz.dart';

import '../../../../core/network_error/failure.dart';
import '../entites/news.dart';

abstract class BaseNewsRepository {
  Future<Either<Failure, News>> getAllNews();

  Future<Either<Failure, News>> getCryptoNews();

  Future<Either<Failure, News>> getGoldNews();

  Future<Either<Failure, News>> getStocksNews();

  Future<Either<Failure, News>> getCoinNews();
}
