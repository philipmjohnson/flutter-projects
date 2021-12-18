import 'dart:convert';
import 'package:chopper/chopper.dart';
import 'model_response.dart';
import 'recipe_model.dart';

// 1
class ModelConverter implements Converter {
  // 2
  @override
  Request convertRequest(Request request) {
    // 3
    final req = applyHeader(
      request,
      contentTypeKey,
      jsonHeaders,
      override: false,
    );

    // 4
    return encodeJson(req);
  }

  Request encodeJson(Request request) {
    // 1
    final contentType = request.headers[contentTypeKey];
    // 2
    if (contentType != null && contentType.contains(jsonHeaders)) {
      // 3
      return request.copyWith(body: json.encode(request.body));
    }
    return request;
  }


  Response<BodyType> decodeJson<BodyType, InnerType>(Response response) {
    final contentType = response.headers[contentTypeKey];
    var body = response.body;
    // 1
    if (contentType != null && contentType.contains(jsonHeaders)) {
      body = utf8.decode(response.bodyBytes);
    }
    try {
      // 2
      final mapData = json.decode(body);
      // 3
      if (mapData['status'] != null) {
        return response.copyWith<BodyType>(
            body: Error(Exception(mapData['status'])) as BodyType);
      }
      // 4
      final recipeQuery = APIRecipeQuery.fromJson(mapData);
      // 5
      return response.copyWith<BodyType>(
          body: Success(recipeQuery) as BodyType);
    } catch (e) {
      // 6
      chopperLogger.warning(e);
      return response.copyWith<BodyType>(
          body: Error(e as Exception) as BodyType);
    }
  }


  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    // 1
    return decodeJson<BodyType, InnerType>(response);
  }

}
