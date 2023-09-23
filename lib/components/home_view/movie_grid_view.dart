import 'package:flutter/material.dart';

import '../../models/movie_data.dart';
import '../../screens/detail/detail_screen.dart';
import '../empty_view.dart';

class MovieGridView extends StatelessWidget {
  final List<MovieModel> movies;
  final int? gridCount;

  const MovieGridView({Key? key, required this.movies, this.gridCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (movies.isEmpty) {
      return const EmptyView();
    }

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: gridCount ?? 4,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        children: movies.map((movie) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(
                  movie: movie,
                );
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.network(
                      movie.posterUrl,
                      // fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const SizedBox(
                          height: 480.0,
                          child: Center(
                            child: CircularProgressIndicator(
                              value: null,
                              color: Color(0xFFB31A2D),
                              backgroundColor: Color(0xFFA9AAAC),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      movie.name,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Playfair Display',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      movie.tagline,
                      style: const TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
