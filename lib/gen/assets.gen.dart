// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/audiofile.png
  AssetGenImage get audiofile =>
      const AssetGenImage('assets/icons/audiofile.png');

  /// File path: assets/icons/blue_pen.png
  AssetGenImage get bluePen => const AssetGenImage('assets/icons/blue_pen.png');

  /// File path: assets/icons/down_cat_arrow.png
  AssetGenImage get downCatArrow =>
      const AssetGenImage('assets/icons/down_cat_arrow.png');

  /// File path: assets/icons/hashtagicon.png
  AssetGenImage get hashtagicon =>
      const AssetGenImage('assets/icons/hashtagicon.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/microphon.png
  AssetGenImage get microphon =>
      const AssetGenImage('assets/icons/microphon.png');

  /// File path: assets/icons/user.png
  AssetGenImage get user => const AssetGenImage('assets/icons/user.png');

  /// File path: assets/icons/write.png
  AssetGenImage get write => const AssetGenImage('assets/icons/write.png');

  /// File path: assets/icons/write_article.png
  AssetGenImage get writeArticle =>
      const AssetGenImage('assets/icons/write_article.png');

  /// File path: assets/icons/write_article_icon.png
  AssetGenImage get writeArticleIcon =>
      const AssetGenImage('assets/icons/write_article_icon.png');

  /// File path: assets/icons/write_microphone.png
  AssetGenImage get writeMicrophone =>
      const AssetGenImage('assets/icons/write_microphone.png');

  /// File path: assets/icons/write_podcast_icon.png
  AssetGenImage get writePodcastIcon =>
      const AssetGenImage('assets/icons/write_podcast_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    audiofile,
    bluePen,
    downCatArrow,
    hashtagicon,
    home,
    microphon,
    user,
    write,
    writeArticle,
    writeArticleIcon,
    writeMicrophone,
    writePodcastIcon,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/admin1.png
  AssetGenImage get admin1 => const AssetGenImage('assets/images/admin1.png');

  /// File path: assets/images/admin2.png
  AssetGenImage get admin2 => const AssetGenImage('assets/images/admin2.png');

  /// File path: assets/images/adsense.jpg
  AssetGenImage get adsense => const AssetGenImage('assets/images/adsense.jpg');

  /// File path: assets/images/apple.jpg
  AssetGenImage get apple => const AssetGenImage('assets/images/apple.jpg');

  /// File path: assets/images/butterfly.jpg
  AssetGenImage get butterfly =>
      const AssetGenImage('assets/images/butterfly.jpg');

  /// File path: assets/images/christmas.jpg
  AssetGenImage get christmas =>
      const AssetGenImage('assets/images/christmas.jpg');

  /// File path: assets/images/colorful.jpg
  AssetGenImage get colorful =>
      const AssetGenImage('assets/images/colorful.jpg');

  /// File path: assets/images/empty_state.png
  AssetGenImage get emptyState =>
      const AssetGenImage('assets/images/empty_state.png');

  /// File path: assets/images/hot1.png
  AssetGenImage get hot1 => const AssetGenImage('assets/images/hot1.png');

  /// File path: assets/images/hot2.png
  AssetGenImage get hot2 => const AssetGenImage('assets/images/hot2.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/mars.jpg
  AssetGenImage get mars => const AssetGenImage('assets/images/mars.jpg');

  /// File path: assets/images/mask.jpg
  AssetGenImage get mask => const AssetGenImage('assets/images/mask.jpg');

  /// File path: assets/images/microphone.jpg
  AssetGenImage get microphone =>
      const AssetGenImage('assets/images/microphone.jpg');

  /// File path: assets/images/office.jpg
  AssetGenImage get office => const AssetGenImage('assets/images/office.jpg');

  /// File path: assets/images/poster_test.png
  AssetGenImage get posterTest =>
      const AssetGenImage('assets/images/poster_test.png');

  /// File path: assets/images/profileAvatar.png
  AssetGenImage get profileAvatar =>
      const AssetGenImage('assets/images/profileAvatar.png');

  /// File path: assets/images/single_place_holder.jpg
  AssetGenImage get singlePlaceHolder =>
      const AssetGenImage('assets/images/single_place_holder.jpg');

  /// File path: assets/images/speaker.jpg
  AssetGenImage get speaker => const AssetGenImage('assets/images/speaker.jpg');

  /// File path: assets/images/tcbot.svg
  String get tcbot => 'assets/images/tcbot.svg';

  /// File path: assets/images/user.png
  AssetGenImage get user => const AssetGenImage('assets/images/user.png');

  /// File path: assets/images/user1.png
  AssetGenImage get user1 => const AssetGenImage('assets/images/user1.png');

  /// List of all assets
  List<dynamic> get values => [
    admin1,
    admin2,
    adsense,
    apple,
    butterfly,
    christmas,
    colorful,
    emptyState,
    hot1,
    hot2,
    logo,
    mars,
    mask,
    microphone,
    office,
    posterTest,
    profileAvatar,
    singlePlaceHolder,
    speaker,
    tcbot,
    user,
    user1,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
