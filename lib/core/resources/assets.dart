class BasePath {
  static const String _imageBaseUrl = 'assets/images/';
  static const String _app = '${_imageBaseUrl}app/';
}

class AssetManager extends BasePath {}

class ImageManager extends BasePath {
  static const String logo = '${BasePath._app}logo.png';
  static const String helpLogo = '${BasePath._imageBaseUrl}help.png';

  static const String categories = '${BasePath._imageBaseUrl}categories/';
  static const String numbers = '${BasePath._imageBaseUrl}numbers/';
  static const String characters = '${BasePath._imageBaseUrl}characters/';
  static const String animals = '${BasePath._imageBaseUrl}animals/';
  static const String family = '${BasePath._imageBaseUrl}family/';
  static const String food = '${BasePath._imageBaseUrl}food/';
  static const String home = '${BasePath._imageBaseUrl}home/';
  static const String time = '${BasePath._imageBaseUrl}time/';
  
  static const String education = '${BasePath._imageBaseUrl}education/';
  static const String health = '${BasePath._imageBaseUrl}health/';
  static const String ideas = '${BasePath._imageBaseUrl}ideas/';
  static const String nature = '${BasePath._imageBaseUrl}nature/';
  static const String symptoms = '${BasePath._imageBaseUrl}symptoms/';
  static const String travelling = '${BasePath._imageBaseUrl}travel/';
}
