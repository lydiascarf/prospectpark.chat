// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utils.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$imageUrlHash() => r'195fb432dfed40f01b6d97ddc573f4c1e8451688';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [imageUrl].
@ProviderFor(imageUrl)
const imageUrlProvider = ImageUrlFamily();

/// See also [imageUrl].
class ImageUrlFamily extends Family<String> {
  /// See also [imageUrl].
  const ImageUrlFamily();

  /// See also [imageUrl].
  ImageUrlProvider call({
    required String userId,
    required String filename,
  }) {
    return ImageUrlProvider(
      userId: userId,
      filename: filename,
    );
  }

  @override
  ImageUrlProvider getProviderOverride(
    covariant ImageUrlProvider provider,
  ) {
    return call(
      userId: provider.userId,
      filename: provider.filename,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'imageUrlProvider';
}

/// See also [imageUrl].
class ImageUrlProvider extends AutoDisposeProvider<String> {
  /// See also [imageUrl].
  ImageUrlProvider({
    required String userId,
    required String filename,
  }) : this._internal(
          (ref) => imageUrl(
            ref as ImageUrlRef,
            userId: userId,
            filename: filename,
          ),
          from: imageUrlProvider,
          name: r'imageUrlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$imageUrlHash,
          dependencies: ImageUrlFamily._dependencies,
          allTransitiveDependencies: ImageUrlFamily._allTransitiveDependencies,
          userId: userId,
          filename: filename,
        );

  ImageUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
    required this.filename,
  }) : super.internal();

  final String userId;
  final String filename;

  @override
  Override overrideWith(
    String Function(ImageUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ImageUrlProvider._internal(
        (ref) => create(ref as ImageUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
        filename: filename,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _ImageUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ImageUrlProvider &&
        other.userId == userId &&
        other.filename == filename;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, filename.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ImageUrlRef on AutoDisposeProviderRef<String> {
  /// The parameter `userId` of this provider.
  String get userId;

  /// The parameter `filename` of this provider.
  String get filename;
}

class _ImageUrlProviderElement extends AutoDisposeProviderElement<String>
    with ImageUrlRef {
  _ImageUrlProviderElement(super.provider);

  @override
  String get userId => (origin as ImageUrlProvider).userId;
  @override
  String get filename => (origin as ImageUrlProvider).filename;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
