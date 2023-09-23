import 'package:flutter/material.dart';
import 'package:movie_app_static/components/detail_view/detail_mobile_view.dart';
import 'package:movie_app_static/components/detail_view/detail_web_view.dart';
import 'package:movie_app_static/models/movie_data.dart';

class DetailScreen extends StatelessWidget {
  final MovieModel movie;

  const DetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 500) {
          return DetailWebView(movie: movie);
        } else {
          return DetailMobileView(movie: movie);
        }
      },
    );
  }
}