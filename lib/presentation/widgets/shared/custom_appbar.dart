import 'package:cinemapedia/presentation/delegates/search_delgate_movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:go_router/go_router.dart';
// C:\desarollo\flutter\cinemapedia\lib\presentation\providers\providers.dart

class CustomAppbar extends ConsumerWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Icon(Icons.movie_outlined, color: colors.primary),
                const SizedBox(width: 5),
                Text('Cinemapedia', style: titleStyle),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      // final moviesRepository =
                      //     ref.read(movieRepositoryProvider);
                      final searchQury = ref.read(searchQueryProvider);
                      showSearch<Movie?>(
                          query: searchQury,
                          context: context,
                          delegate: SearchMovieDelegate(
                            searchMovies: ref.read(searchedMoviesProvider.notifier)
                                .searchMoviesByQuery,
                            initialMovies: [],
                          )).then((movie) {
                        if (movie == null) return;
                        if (context.mounted) {
                          context.push('/movie/${movie.id}');
                        }
                      });
                    },
                    icon: const Icon(Icons.search))
              ],
            ),
          ),
        ));
  }
}
