import 'package:dartz/dartz.dart';

import '../../../../core/network_error/failure.dart';
import '../entites/news.dart';
import '../repository/base_news_repository.dart';

class GetStocksNewsUsecase {
  final BaseNewsRepository baseNewsRepository;

  GetStocksNewsUsecase(this.baseNewsRepository);

  Future<Either<Failure, News>> call() async {
    return await baseNewsRepository.getStocksNews();
  }
}
