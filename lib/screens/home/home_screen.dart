import 'package:flutter/material.dart';
import 'package:movie_app_static/components/home_view/movie_grid_view.dart';
import 'package:movie_app_static/components/home_view/movie_list_view.dart';
import 'package:movie_app_static/models/movie_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        backgroundColor: const Color(0xFFEF233C),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color(0xFFEF233C),
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            // selectedIcon: Icon(Icons.home),
            icon: Icon(
              Icons.home_outlined,
              color: currentPageIndex == 0
                  ? const Color(0xFFE9EAEA)
                  : const Color(0xFFEF233C),
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.bookmark_outlined,
              color: currentPageIndex == 1
                  ? const Color(0xFFE9EAEA)
                  : const Color(0xFFEF233C),
            ),
            label: 'Saved',
          ),
        ],
      ),
      body: <Widget>[
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return MovieListView(movies: movieData.allMovies);
            } else {
              return MovieGridView(
                movies: movieData.allMovies,
                gridCount: constraints.maxWidth ~/ 300,
              );
            }
          },
        ),
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return MovieListView(movies: movieData.savedMovies);
            } else {
              return MovieGridView(movies: movieData.savedMovies);
            }
          },
        ),
      ][currentPageIndex],
    );
  }
}
