import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_movie_app/core/failure.dart';
import 'package:flutter_bloc_movie_app/core/locator.dart';
import 'package:flutter_bloc_movie_app/core/usecase.dart';
import 'package:flutter_bloc_movie_app/features/domain/entities/movie.dart';
import 'package:flutter_bloc_movie_app/features/domain/repository/i_movie_repository.dart';

class GetTrendingMoviesUsecase
    with UseCases<Either<Failure, List<Movie>>, NoParams> {
  final _repo = locator<IMovieRepository>();
  @override
  Future<Either<Failure, List<Movie>>> call(NoParams params) async {
    return await _repo.getTrendingMovies();
  }
}
