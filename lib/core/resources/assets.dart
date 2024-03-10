class BasePath {
  static const String _imageBaseUrl = 'assets/images/';
  static const String _app = '${_imageBaseUrl}app/';
}

class AssetManager extends BasePath {}

class ImageManager extends BasePath {
  static const String logo = '${BasePath._app}logo.png';
  static const String categories = '${BasePath._imageBaseUrl}categories/';
  static const String numbers = '${BasePath._imageBaseUrl}numbers/';
  static const String characters = '${BasePath._imageBaseUrl}characters/';
  static const String animals = '${BasePath._imageBaseUrl}animals/';
  static const String family = '${BasePath._imageBaseUrl}family/';
}
