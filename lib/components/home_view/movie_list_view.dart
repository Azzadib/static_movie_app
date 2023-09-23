import 'package:flutter/material.dart';
import 'package:movie_app_static/components/empty_view.dart';
import 'package:movie_app_static/models/movie_data.dart';

import '../../helper.dart';
import '../../screens/detail/detail_screen.dart';

class MovieListView extends StatelessWidget {
  final List<MovieModel> movies;

  const MovieListView({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (movies.isEmpty) {
      return const EmptyView();
    }
    return ListView.builder(
      itemBuilder: (context, index) {
        final MovieModel movie = movies[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(movie: movie);
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Image.network(
                    movie.posterUrl,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const SizedBox(
                        height: 240.0,
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
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IntrinsicHeight(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            movie.name,
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Playfair Display',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(movie.genre.join(', ')),
                          ),
                          Text(
                            getYearFromDate(movie.releaseDate),
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              movie.tagline,
                              style: const TextStyle(
                                  fontStyle: FontStyle.italic, fontSize: 18),
                            ),
                          ),
                          Expanded(
                            child: Wrap(
                              spacing: 8.0,
                              runSpacing: 4.0,
                              alignment: WrapAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Icon(Icons.thumb_up_alt,
                                        color: Color(0xFFF46577)),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text('${movie.userScore}%'),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.play_circle_outlined,
                                      color: Color(0xFFF46577),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child:
                                      Text(getDurationText(movie.duration)),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Icon(Icons.language,
                                        color: Color(0xFFF46577)),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text(movie.originalLanguage),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: movies.length,
    );
  }
}
