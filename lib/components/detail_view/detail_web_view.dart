import 'package:flutter/material.dart';
import 'package:movie_app_static/helper.dart';
import 'package:movie_app_static/models/movie_data.dart';

class DetailWebView extends StatefulWidget {
  final MovieModel movie;

  const DetailWebView({Key? key, required this.movie}) : super(key: key);

  @override
  _DetailWebView createState() => _DetailWebView();
}

class _DetailWebView extends State<DetailWebView> {
  late MovieModel movie;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    movie = widget.movie;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171A1D),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.network(
                movie.backdropUrl,
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
            Container(
              color: const Color(0xFFFEF4F5).withOpacity(0.5),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          movie.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            getYearFromDate(movie.releaseDate),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.circle,
                              size: 8.0,
                              color: Color(0xFFD72036),
                            ),
                          ),
                          Text(
                            movie.genre.join(', '),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.circle,
                              color: Color(0xFFD72036),
                              size: 8.0,
                            ),
                          ),
                          Text(
                            getDurationText(movie.duration),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: CircularProgressIndicator(
                                value: movie.userScore / 100,
                                strokeWidth: 8.0,
                                color: getRatingColor(movie.userScore),
                                backgroundColor:
                                getRatingBackgroundColor(movie.userScore),
                              ),
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Center(
                                  child: Text(
                                    '${movie.userScore}%',
                                    style: const TextStyle(
                                      color: Color(0xFFF4F4F5),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'User',
                              style: TextStyle(
                                color: Color(0xFFF4F4F5),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Score',
                              style: TextStyle(
                                color: Color(0xFFF4F4F5),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  BookmarkButton(
                      isSaved: movieData.isSaved(movie.movieId),
                      id: movie.movieId),
                ],
              ),
            ),
            Container(
              padding:
              const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              child: const Text(
                'Overview',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD72036),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                movie.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFFF4F4F5),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              child: const Text(
                'Top Cast',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD72036),
                ),
              ),
            ),
            Scrollbar(
              controller: _scrollController,
              child: Container(
                height: 260,
                padding: const EdgeInsets.only(bottom: 16),
                child: ListView(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  children: movie.cast.map((cast) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              cast.imageUrl,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) return child;
                                return const SizedBox(
                                  height: 120.0,
                                  width: 120.0,
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
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 4, top: 8, right: 4, bottom: 4),
                                child: (Text(
                                  cast.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF4F4F5),
                                  ),
                                ))),
                            Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 4),
                                child: (Text(
                                  cast.as,
                                  style: const TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Color(0xFFF4F4F5),
                                  ),
                                ))),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              child: const Text(
                'Story',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD72036),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                movie.storyLine,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFFF4F4F5),
                ),
              ),
            ),
            // give space at the end of content
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class BookmarkButton extends StatefulWidget {
  final bool isSaved;
  final String id;

  const BookmarkButton({Key? key, required this.isSaved, required this.id})
      : super(key: key);

  @override
  _BookmarkButtonState createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  late bool saved;
  late String id;

  @override
  void initState() {
    super.initState();
    saved = widget.isSaved;
    id = widget.id;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        saved ? Icons.bookmark : Icons.bookmark_border,
        color: const Color(0xFFD72046),
        size: 40.0,
      ),
      onPressed: () {
        if (saved) {
          movieData.removeFromSaved(id);
        } else {
          movieData.addToSaved(id);
        }
        setState(() {
          saved = !saved;
        });
      },
    );
  }
}
