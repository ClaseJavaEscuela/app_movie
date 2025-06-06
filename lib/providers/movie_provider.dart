import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:movie_app/models/models.dart';

class MovieProvider extends ChangeNotifier {
  List<Movie> popularMovies = [];
  List<Movie> newPlayingMovies = [];
  final URL_BASE = "api.themoviedb.org";
  final SEGMENTO = "/3/movie/popular";
  final API_KEY ="05cf620aebc714f56319bc06ed7aadbb";

  MovieProvider() {
    getPopularMovies();
  }

  Future<String> getPopularMovies() async {
    final uri = Uri.https(URL_BASE, SEGMENTO, {'api_key': API_KEY});
    final response = await http.get(uri);
    if(response.statusCode == 200){
      return response.body;
    }
    return "";
  }

  void getMoviesPopular()async{
    var jsonResponse = await getPopularMovies();
    Map<String,dynamic> data = convert.jsonDecode(jsonResponse);
    final popularResponse = PopularMovieResponse.fromJson(data);
    popularMovies =  popularResponse.results;
    notifyListeners();
    print(popularResponse.page);
  }

}
