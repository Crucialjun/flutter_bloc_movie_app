import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_movie_app/core/failure.dart';
import 'package:flutter_bloc_movie_app/features/domain/entities/movie.dart';
import 'package:flutter_bloc_movie_app/features/domain/repository/i_movie_repository.dart';

class MovieRepository implements IMovieRepository {
  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    return const Right([]);
  }

  @override
  Future<Either<Failure, List<Movie>>> getTrendingMovies() async {
    return const Right([]);
  }

  @override
  searchMovies(String query) {}
}
