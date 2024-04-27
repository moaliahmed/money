import 'package:dartz/dartz.dart';

import '../../../../core/network_error/failure.dart';
import '../entites/news.dart';
import '../repository/base_news_repository.dart';

class GetGoldNewsUsecase {
  final BaseNewsRepository baseNewsRepository;

  GetGoldNewsUsecase(this.baseNewsRepository);

  Future<Either<Failure, News>> call() async {
    return await baseNewsRepository.getGoldNews();
  }
}
