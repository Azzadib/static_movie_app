final class CastData {
  String name;
  String as;
  String imageUrl;

  CastData({
    required this.name,
    required this.as,
    required this.imageUrl,
  });
}

final class MovieModel {
  String movieId;
  String name;
  String tagline;
  String releaseDate;
  int userScore;
  int duration;
  List<String> genre;
  String description;
  String posterUrl;
  String backdropUrl;
  List<CastData> cast;
  String originalLanguage;
  String storyLine;

  MovieModel({
    required this.movieId,
    required this.name,
    required this.tagline,
    required this.releaseDate,
    required this.userScore,
    required this.duration,
    required this.genre,
    required this.description,
    required this.posterUrl,
    required this.backdropUrl,
    required this.cast,
    required this.originalLanguage,
    required this.storyLine,
  });
}

class MovieData {
  final List<MovieModel> _movieList = <MovieModel>[
    MovieModel(
      movieId: 'movie1',
      name: 'Oppenheimer',
      tagline: 'The world forever changes.',
      releaseDate: '21/07/2023',
      userScore: 83,
      duration: 181,
      genre: ['Drama', 'History'],
      description:
      'The story of J. Robert Oppenheimer’s role in the development of the atomic bomb during World War II.',
      posterUrl:
      'https://www.themoviedb.org/t/p/w220_and_h330_face/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg',
      backdropUrl:
      'https://www.themoviedb.org/t/p/w500_and_h282_face/fm6KqXpk3M2HVveHwCrBSSBaO0V.jpg',
      cast: [
        CastData(
          name: 'Cillian Murphy',
          as: 'Robert J. Oppenheimer',
          imageUrl:
          'https://www.themoviedb.org/t/p/w138_and_h175_face/llkbyWKwpfowZ6C8peBjIV9jj99.jpg',
        ),
        CastData(
            name: 'Robert Downey Jr.',
            as: 'Lewis Strauss',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/im9SAqJPZKEbVZGmjXuLI4O7RvM.jpg'),
        CastData(
            name: 'Josh Hartnett',
            as: 'Ernest Lawrence',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/dCfu2EN7FjISACcjilaJu7evwEc.jpg'),
        CastData(
            name: 'Casey Affleck',
            as: 'Boris Pash',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/fGo8nikBhtI0g3InpGc3WmLZXzi.jpg'),
        CastData(
            name: 'Kenneth Branagh',
            as: 'Niels Bohr',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/AbCqqFxNi5w3nDUFdQt0DGMFh5H.jpg'),
      ],
      originalLanguage: 'English',
      storyLine:
      "A dramatization of the life story of J. Robert Oppenheimer, the physicist who had a large hand in the development of the atomic bomb, thus helping end World War 2. We see his life from university days all the way to post-WW2, where his fame saw him embroiled in political machinations.",
    ),
    MovieModel(
      movieId: 'movie2',
      name: 'John Wick: Chapter 4',
      tagline: 'No way back, one way out.',
      releaseDate: '24/03/2023',
      userScore: 78,
      duration: 170,
      genre: ['Action', 'Thriller', 'Crime'],
      description:
      'With the price on his head ever increasing, John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.',
      posterUrl:
      'https://www.themoviedb.org/t/p/w220_and_h330_face/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg',
      backdropUrl:
      'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/7I6VUdPj6tQECNHdviJkUHD2u89.jpg',
      cast: [
        CastData(
            name: 'Keanu Reeves',
            as: 'John Wick',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/4D0PpNI0kmP58hgrwGC3wCjxhnm.jpg'),
        CastData(
            name: 'Donnie Yen',
            as: 'Caine',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/hTlhrrZMj8hZVvD17j4KyAFWBHc.jpg'),
        CastData(
            name: 'Ian McShane',
            as: 'Winston',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/q9qKbux5Jo76Sj8g3luxBt6rYtz.jpg'),
        CastData(
            name: 'Lance Reddick',
            as: 'Charon',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/22mVtEXZbpt0J7S0LhIhdkfRrZV.jpg'),
        CastData(
            name: 'Clancy Brown',
            as: 'Harbinger',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/9RgzFqbmWBLVfq9wvyDo5UW8VT1.jpg'),
      ],
      originalLanguage: 'English',
      storyLine:
      "Condemned by the tyrannical High Table to be on the run for the rest of his life, deadly assassin maestro John Wick (2014) embarks on a Sisyphean mission of suicidal fury to decide his fate after the merciless carnage in John Wick: Chapter 3 - Parabellum (2019). At last, Johns violent journey, fuelled by vengeance and grief, ultimately leads him toafateful confrontation with his former employers, the crimemasters that forced him into exile. And as theblood-stained vendetta to destroy those who pull the strings continues,oldcompanions face the brutal consequences of friendship, and all-powerful,well - connected adversaries emerge to bring Wick's head on a platter. But talk is cheap--now guns have the final say.Can BabaYaga, the grim messiah of death, make every bullet count in this bloody,once - and-for-all struggle for freedom?",
    ),
    MovieModel(
      movieId: 'movie3',
      name: 'The Nun II',
      tagline: 'The greatest evil in the Conjuring universe.',
      releaseDate: '08/09/2023',
      userScore: 67,
      duration: 110,
      genre: ['Horror', 'Mystery', 'Thriller'],
      description:
      "In 1956 France, a priest is violently murdered, and Sister Irene begins to investigate. She once again comes face-to-face with a powerful evil.",
      posterUrl:
      'https://www.themoviedb.org/t/p/w220_and_h330_face/c9kVD7W8CT5xe4O3hQ7bFWwk68U.jpg',
      backdropUrl:
      'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/aX3Od8NVLgM7pMYgRpTPkwSrbSC.jpg',
      cast: [
        CastData(
            name: 'Taisa Farmiga',
            as: 'Sister Irene',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/kC2Movbs6uEF8DdDhvyHizQHuru.jpg'),
        CastData(
            name: 'Jonas Bloquet',
            as: 'Maurice Theriault',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/pzQAv6ghx5hc4gSpxHII0oUzqkL.jpg'),
        CastData(
            name: 'Storm Reid',
            as: 'Debra',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/wA8cntFil1AuwusEZXLH9o898m1.jpg'),
        CastData(
            name: 'Anna Popplewell',
            as: 'Kate',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/ooYeKc28Ayqo9KW8gOacDXDghVL.jpg'),
        CastData(
            name: 'Bonnie Aarons',
            as: 'The Nun / valak',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/iEtWuoXKx4ZKbIWwJp1V76Heavy.jpg'),
      ],
      originalLanguage: 'English',
      storyLine:
      'A follow-up to the enigmatic gothic horror about a strong evil that haunts and causes supernatural harm to everybody it comes into contact with. After the events of the first film, the said powerful evil now begins to spread in 1956 throughout a town in France as word gets out that a priest has been violently murdered. A finished contemplative in her novitiate, Sister Irene, begins to investigate the murder, only to find a demon behind it -- the same evil that terrorized her in the original film as a nun -- Valak, whom she once again soon comes to encounter.',
    ),
    MovieModel(
      movieId: 'movie4',
      name: 'Barbie',
      tagline: "She's everything. He's just Ken.",
      releaseDate: '21/07/2023',
      userScore: 73,
      duration: 114,
      genre: ['Comedy', 'Adventure', 'Fantasy'],
      description:
      'Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.',
      posterUrl:
      'https://www.themoviedb.org/t/p/w220_and_h330_face/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg',
      backdropUrl:
      'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/tTfnd2VrlaZJSBD9HUbtSF3CqPJ.jpg',
      cast: [
        CastData(
            name: 'Margot Robbie',
            as: 'Barbie',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/euDPyqLnuwaWMHajcU3oZ9uZezR.jpg'),
        CastData(
            name: 'Ryan Gosling',
            as: 'Ken',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/lyUyVARQKhGxaxy0FbPJCQRpiaW.jpg'),
        CastData(
            name: 'America Ferrera',
            as: 'Gloria',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/dhiUliLE7dFaqj5BKNQ6x7Wm9uR.jpg'),
        CastData(
            name: 'Ariana Greenblatt',
            as: 'Sasha',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/8xrCTYP8PuHixWzkiX6onJNfw8k.jpg'),
        CastData(
            name: 'Michael Cera',
            as: 'Allan',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/lFKyW2C7xj7X4nWpOEbVIDGOKrH.jpg'),
      ],
      originalLanguage: 'English',
      storyLine:
      'Barbie suffers a crisis that leads her to question her world and her existence.',
    ),
    MovieModel(
      movieId: 'movie5',
      name: 'Fast X',
      tagline: 'The end of the road begins.',
      releaseDate: '19/05/2023',
      userScore: 73,
      duration: 142,
      genre: ['Action', 'Crime', 'Thriller'],
      description:
      "Over many missions and against impossible odds, Dom Toretto and his family have outsmarted, out-nerved and outdriven every foe in their path. Now, they confront the most lethal opponent they've ever faced: A terrifying threat emerging from the shadows of the past who's fueled by blood revenge, and who is determined to shatter this family and destroy everything—and everyone—that Dom loves, forever.",
      posterUrl:
      'https://www.themoviedb.org/t/p/w220_and_h330_face/fiVW06jE7z9YnO4trhaMEdclSiC.jpg',
      backdropUrl:
      'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/felKdfRqoy7AcmdBvPM3wzwlZi9.jpg',
      cast: [
        CastData(
            name: 'Vin Diesel',
            as: 'Dominic Toretto',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/nZdVry7lnUkE24PnXakok9okvL4.jpg'),
        CastData(
            name: 'Michelle Rodriguez',
            as: 'Letty',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/xSvkVrLz6xas1mCeOR9i4QtmhnQ.jpg'),
        CastData(
            name: 'Ludracis',
            as: 'Tej',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/erkJijujhe48vhJ8iCEtVpNEeVn.jpg'),
        CastData(
            name: 'John Cenna',
            as: 'Jakob Toretto',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/6EZaBiQHx3Xlz3j0D6ttDxHXaxr.jpg'),
        CastData(
            name: 'Nathalie Emmanuel',
            as: 'Ramsey',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/koSwmmonFJiZDfwmZgdVA7I1aR.jpg'),
      ],
      originalLanguage: 'English',
      storyLine:
      "The end of the road begins. Fast X, the tenth film in the Fast and Furious Saga, launches the final chapters of one of cinema's most storied and popular global franchises, now in its third decade and still going strong with the same core cast and characters as when it began. Over many missions and against impossible odds, Dom Toretto (Vin Diesel) and his family have outsmarted, out-nerved and outdriven every foe in their path. Now, they confront the most lethal opponent they've ever faced: A terrifying threat emerging from the shadows of the past who's fueled by blood revenge, and who is determined to shatter this family and destroy everything-and everyone-that Dom loves, forever. In 2011's Fast Five, Dom and his crew took out nefarious Brazilian drug kingpin Hernan Reyes and decapitated his empire on a bridge in Rio De Janeiro. What they didn't know was that Reyes' son, Dante (Aquaman's Jason Momoa), witnessed it all and has spent the last 12 years masterminding a plan to make Dom pay the ultimate price. Dante's plot will scatter Dom's family from Los Angeles to the catacombs of Rome, from Brazil to London and from Portugal to Antarctica. New allies will be forged and old enemies will resurface. But everything changes when Dom discovers that his own 8-year-old son (Leo Abelo Perry, Black-ish) is the ultimate target of Dante's vengeance. Directed by Louis Leterrier (Clash of the Titans, The Incredible Hulk), Fast X stars returning cast members Michelle Rodriguez, Tyrese Gibson, Chris \"Ludacris\" Bridges, Nathalie Emmanuel, Jordana Brewster, Sung Kang, Jason Statham, John Cena and Scott Eastwood, with Oscar® winner Helen Mirren and Oscar® winner Charlize Theron. The film also features an extraordinary new cast including Oscar® winner Brie Larson as Tess, a rogue representative from the Agency; Alan Richtson (Reacher) as Aimes, the new head of the Agency who doesn't hold the same fondness for Dom's crew as his predecessor, Mr. Nobody; Daniela Melchior (The Suicide Squad) as a Brazilian street racer with a powerful tie to Dom's past; and legendary Oscar® winner Rita Moreno as Dom and Mia's Abuelita Toretto. Fast X is produced by Neal H. Moritz, Vin Diesel, Justin Lin, Jeff Kirschenbaum and Samantha Vincent. The executive producers are Joseph M. Caracciolo, Jr., David Cain, Chris Morgan, Amanda Lewis and Mark Bomback.",
    ),
    MovieModel(
      movieId: 'movie6',
      name: 'The Equalizer 3',
      tagline: 'Justice knows no borders.',
      releaseDate: '30/08/2023',
      userScore: 69,
      duration: 109,
      genre: ['Action', 'Thriller', 'Crime'],
      description:
      "Robert McCall finds himself at home in Southern Italy but he discovers his friends are under the control of local crime bosses. As events turn deadly, McCall knows what he has to do: become his friends\" protector by taking on the mafia.",
      posterUrl:
      'https://www.themoviedb.org/t/p/w220_and_h330_face/b0Ej6fnXAP8fK75hlyi2jKqdhHz.jpg',
      backdropUrl:
      'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/h0nmmdFAdBjQttN8Y0q825MWzZp.jpg',
      cast: [
        CastData(
            name: 'Denzel Washington',
            as: 'Robert McCall',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/jj2Gcobpopokal0YstuCQW0ldJ4.jpg'),
        CastData(
            name: 'Dakota Fanning',
            as: 'Emma Collins',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/fXxfYh0NoTiyedRwZPNqBMdz3Eh.jpg'),
        CastData(
            name: 'David Denman',
            as: 'Frank Conroy',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/4I06ZD8SQ6pU1QYShiUXb711fJW.jpg'),
        CastData(
            name: 'Gaia Scodellaro',
            as: 'Aminah',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/7ZmZOKdY5fexw23VSbXA5j9Dax3.jpg'),
        CastData(
            name: 'Remo Girone',
            as: 'Enzo Arisio',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/gRS90yn20ZMlq4pvVQjtUM5DLqN.jpg'),
      ],
      originalLanguage: 'English',
      storyLine:
      "Since giving up his life as a government assassin, Robert McCall (Denzel Washington) has struggled to reconcile the horrific things he's done in the past and finds a strange solace in serving justice on behalf of the oppressed. Finding himself surprisingly at home in Southern Italy, he discovers his new friends are under the control of local crime bosses. As events turn deadly, McCall knows what he has to do: become his friends' protector by taking on the mafia.",
    ),
    MovieModel(
      movieId: 'movie7',
      name: 'Gran Turismo',
      tagline: 'From gamer to racer.',
      releaseDate: '09/08/2023',
      userScore: 75,
      duration: 135,
      genre: ['Action', 'Drama', 'Adventure'],
      description:
      'The ultimate wish-fulfillment tale of a teenage Gran Turismo player whose gaming skills won him a series of Nissan competitions to become an actual professional racecar driver.',
      posterUrl:
      'https://www.themoviedb.org/t/p/w220_and_h330_face/lRajIL6pUVfFEYkoLeCzbCOc574.jpg',
      backdropUrl:
      'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/mSczGDSrnFDYka81PEnjdz4slGO.jpg',
      cast: [
        CastData(
            name: 'Archie Madekwe',
            as: 'Jan Mardenborough',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/tdTv1E3309yWTU9IdtdhZj1a1Zj.jpg'),
        CastData(
            name: 'David Harbour',
            as: 'Jack Salter',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/chPekukMF5SNnW6b22NbYPqAStr.jpg'),
        CastData(
            name: 'Orlando Bloom',
            as: 'Danny Moore',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/lwQoA0qJTCZ6l2FH6PjmhRQjiaB.jpg'),
        CastData(
            name: 'Darren Barnet',
            as: 'Matty Davis',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/z3hQP19QgHsKZ4j0sXNzrhScDMO.jpg'),
        CastData(
            name: 'Geri Horner',
            as: 'Lesley Mardenborough',
            imageUrl:
            'https://www.themoviedb.org/t/p/w138_and_h175_face/wWh8mqeNVDaJu9EwCUMwM9dNb06.jpg'),
      ],
      originalLanguage: 'English',
      storyLine:
      'Based on the unbelievable, inspiring true story of a team of underdogs - a struggling, working-class gamer, a failed former race car driver, and an idealistic motorsport exec - who risk it all to take on the most elite sport in the world.',
    ),
  ];
  final List<MovieModel> _savedList = <MovieModel>[];

  List<MovieModel> get allMovies => _movieList;

  List<MovieModel> get savedMovies => _savedList;

  void addToSaved(String movieId) {
    for (var movie in _movieList) {
      if (movie.movieId == movieId) {
        _savedList.add(movie);
        break;
      }
    }
  }

  void removeFromSaved(String movieId) {
    _savedList.removeWhere((obj) => obj.movieId == movieId);
  }

  bool isSaved(String movieId) {
    return _savedList.any((obj) => obj.movieId == movieId);
  }
}

MovieData movieData = MovieData();
