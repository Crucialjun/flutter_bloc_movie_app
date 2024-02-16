import 'package:flutter_bloc_movie_app/features/data/repository/movie_repository.dart';
import 'package:flutter_bloc_movie_app/features/domain/repository/i_movie_repository.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton<IMovieRepository>(() => MovieRepository());
}
