import 'package:flutterapp/base/api_base_helper.dart';
import 'package:flutterapp/base/restapi/api_url.dart';
import 'package:flutterapp/src/models/movie_response.dart';

class MovieRepository {

  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<Movie>> fetchMovieList() async {
    final response = await _helper.get(ApiUrl.GET_MOVIE_LIST);
    print("Response Body : $response");
    return MovieResponse.fromJson(response).results;
  }
}