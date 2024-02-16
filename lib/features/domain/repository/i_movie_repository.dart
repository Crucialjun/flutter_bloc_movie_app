import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_movie_app/core/failure.dart';
import 'package:flutter_bloc_movie_app/features/domain/entities/movie.dart';

abstract class IMovieRepository{
  Future<Either<Failure,List<Movie>>> getTrendingMovies();
  Future<Either<Failure,List<Movie>>>getPopularMovies();
  searchMovies(String query);


}