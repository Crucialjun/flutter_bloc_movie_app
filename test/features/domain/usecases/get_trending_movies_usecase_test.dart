import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_movie_app/core/failure.dart';

import 'package:flutter_bloc_movie_app/core/usecase.dart';
import 'package:flutter_bloc_movie_app/features/data/repository/movie_repository.dart';
import 'package:flutter_bloc_movie_app/features/domain/entities/movie.dart';
import 'package:flutter_bloc_movie_app/features/domain/repository/i_movie_repository.dart';
import 'package:flutter_bloc_movie_app/features/domain/usecases/get_trending_movies_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_trending_movies_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<MovieRepository>()])
void main() {
  late GetTrendingMoviesUsecase useCase;
  late IMovieRepository movieRepository;

  setUp(() {
    movieRepository = GetIt.instance
        .registerSingleton<IMovieRepository>(MockMovieRepository());

    useCase = GetTrendingMoviesUsecase();
  });

  final tMoviesList = [
    Movie(
      id: 1,
      title: 'The Shawshank Redemption',
      overview: 'Framed in the 1940',
      posterPath: '/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg',
      releaseDate: '1994-09-23',
    ),
  ];

  test('should return a list of trending  movies', () async {
    // arrange
    when(movieRepository.getTrendingMovies())
        .thenAnswer((_) async => Right(tMoviesList));
    // act
    final result = (await useCase.call(NoParams()))
        .fold((l) => Failure(l.message), (r) => Right(r));
    // assert
    expect(result, Right(tMoviesList));
    verify(movieRepository.getTrendingMovies());
    verifyNoMoreInteractions(movieRepository);
  });
}
