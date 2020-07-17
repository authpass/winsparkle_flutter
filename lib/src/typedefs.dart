part of 'winsparkle_flutter.dart';

// ignore_for_file: non_constant_identifier_names

// https://github.com/vslavik/winsparkle/blob/master/include/winsparkle.h

// /**
//     Starts WinSparkle.
//     If WinSparkle is configured to check for updates on startup, proceeds
//     to perform the check. You should only call this function when your app
//     is initialized and shows its main window.
//     @note This call doesn't block and returns almost immediately. If an
//           update is available, the respective UI is shown later from a separate
//           thread.
//     @see win_sparkle_cleanup()
//  */
// WIN_SPARKLE_API void __cdecl win_sparkle_init();

typedef win_sparkle_init_native = Void Function();
typedef win_sparkle_init_dart = void Function();

final win_sparkle_init =
    _winsparkle.lookupFunction<win_sparkle_init_native, win_sparkle_init_dart>(
        'win_sparkle_init');

// /**
//     Cleans up after WinSparkle.
//     Should be called by the app when it's shutting down. Cancels any
//     pending Sparkle operations and shuts down its helper threads.
//  */
// WIN_SPARKLE_API void __cdecl win_sparkle_cleanup();

typedef win_sparkle_cleanup_native = Void Function();
typedef win_sparkle_cleanup_dart = void Function();

final win_sparkle_cleanup = _winsparkle.lookupFunction<
    win_sparkle_cleanup_native,
    win_sparkle_cleanup_dart>('win_sparkle_cleanup');

// /**
//     Sets URL for the app's appcast.
//     Only http and https schemes are supported.
//     If this function isn't called by the app, the URL is obtained from
//     Windows resource named "FeedURL" of type "APPCAST".
//     @param url  URL of the appcast.
//     @note Always use HTTPS feeds, do not use unencrypted HTTP! This is
//           necessary to prevent both leaking user information and preventing
//           various MITM attacks.
//     @note See https://github.com/vslavik/winsparkle/wiki/Appcast-Feeds for
//           more information about appcast feeds.
//  */
// WIN_SPARKLE_API void __cdecl win_sparkle_set_appcast_url(const char *url);

typedef win_sparkle_set_appcast_url_native = Void Function(Pointer<Utf8> url);
typedef win_sparkle_set_appcast_url_dart = void Function(Pointer<Utf8> url);

final win_sparkle_set_appcast_url = _winsparkle.lookupFunction<
    win_sparkle_set_appcast_url_native,
    win_sparkle_set_appcast_url_dart>('win_sparkle_set_appcast_url');

// /**
//     Sets DSA public key.
//     Only PEM format is supported.
//     Public key will be used to verify DSA signature of the update file.
//     PEM data will be set only if it contains valid DSA public key.
//     If this function isn't called by the app, public key is obtained from
//     Windows resource named "DSAPub" of type "DSAPEM".
//     @param dsa_pub_pem  DSA public key in PEM format.
//     @return  1 if valid DSA public key provided, 0 otherwise.
//     @since 0.6.0
//  */
// WIN_SPARKLE_API int __cdecl win_sparkle_set_dsa_pub_pem(const char *dsa_pub_pem);
typedef win_sparkle_set_dsa_pub_pem_native = Void Function(
    Pointer<Utf8> dsa_pub_pem);
typedef win_sparkle_set_dsa_pub_pem_dart = void Function(
    Pointer<Utf8> dsa_pub_pem);

final win_sparkle_set_dsa_pub_pem = _winsparkle.lookupFunction<
    win_sparkle_set_dsa_pub_pem_native,
    win_sparkle_set_dsa_pub_pem_dart>('win_sparkle_set_dsa_pub_pem');

// /**
//     Sets application metadata.
//     Normally, these are taken from VERSIONINFO/StringFileInfo resources,
//     but if your application doesn't use them for some reason, using this
//     function is an alternative.
//     @param company_name  Company name of the vendor.
//     @param app_name      Application name. This is both shown to the user
//                          and used in HTTP User-Agent header.
//     @param app_version   Version of the app, as string (e.g. "1.2" or "1.2rc1").
//     @note @a company_name and @a app_name are used to determine the location
//           of WinSparkle settings in registry.
//           (HKCU\Software\<company_name>\<app_name>\WinSparkle is used.)
//     @since 0.3
//     @see win_sparkle_set_app_build_version();
//  */
// WIN_SPARKLE_API void __cdecl win_sparkle_set_app_details(const wchar_t *company_name,
//                                                          const wchar_t *app_name,
//                                                          const wchar_t *app_version);

typedef win_sparkle_set_app_details_native = Void Function(
  Pointer<Utf8> company_name,
  Pointer<Utf16> app_name,
  Pointer<Utf16> app_version,
);
typedef win_sparkle_set_app_details_dart = void Function(
  Pointer<Utf8> company_name,
  Pointer<Utf16> app_name,
  Pointer<Utf16> app_version,
);

final win_sparkle_set_app_details = _winsparkle.lookupFunction<
    win_sparkle_set_app_details_native,
    win_sparkle_set_app_details_dart>('win_sparkle_set_app_details');

// /**
//     Sets application build version number.
//     This is the internal version number that is not normally shown to the user.
//     It can be used for finer granularity that official release versions, e.g. for
//     interim builds.
//     If this function is called, then the provided *build* number is used for comparing
//     versions; it is compared to the "version" attribute in the appcast and corresponds
//     to OS X Sparkle's CFBundleVersion handling. If used, then the appcast must
//     also contain the "shortVersionString" attribute with human-readable display
//     version string. The version passed to win_sparkle_set_app_details()
//     corresponds to this and is used for display.
//     @since 0.4
//     @see win_sparkle_set_app_details()
//  */
// WIN_SPARKLE_API void __cdecl win_sparkle_set_app_build_version(const wchar_t *build);

typedef win_sparkle_set_app_build_version_native = Void Function(
    Pointer<Utf16> build);
typedef win_sparkle_set_app_build_version_dart = void Function(
    Pointer<Utf16> build);

final win_sparkle_set_app_build_version = _winsparkle.lookupFunction<
        win_sparkle_set_app_build_version_native,
        win_sparkle_set_app_build_version_dart>(
    'win_sparkle_set_app_build_version');
