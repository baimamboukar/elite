/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 18 (9 per locale)
///
/// Built on 2023-06-01 at 14:33 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build),
	fr(languageCode: 'fr', build: _StringsFr.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	String get app_name => 'Elite One';
	String get something_went_wrong => 'Something went wrong, please try again later!';
	late final _StringsExceptionsEn exceptions = _StringsExceptionsEn._(_root);
}

// Path: exceptions
class _StringsExceptionsEn {
	_StringsExceptionsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get user_infos_saving_error => 'Sorry, we couldn\'t save your user information. Please try again later.';
	String get user_data_not_found => 'User information not found. Please check your credentials and try again.';
	String get failed_auth => 'Authentication failed. Please verify your login credentials.';
	String get failed_get_standings => 'Failed to retrieve standings. {{message}}';
	String get failed_get_fixtures => 'Failed to retrieve fixtures. {{message}}';
	String get elite_home => 'Live Now';
	String get upcoming => 'Upcoming';
}

// Path: <root>
class _StringsFr implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsFr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsFr _root = this; // ignore: unused_field

	// Translations
	@override String get app_name => 'Elite One';
	@override String get something_went_wrong => 'Quelque chose s\'est mal passé. Veuillez réessayer plus tard!';
	@override late final _StringsExceptionsFr exceptions = _StringsExceptionsFr._(_root);
}

// Path: exceptions
class _StringsExceptionsFr implements _StringsExceptionsEn {
	_StringsExceptionsFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get user_infos_saving_error => 'Désolé, nous n\'avons pas pu enregistrer vos informations. Veuillez réessayer ultérieurement.';
	@override String get user_data_not_found => 'Informations introuvables. Veuillez vérifier vos identifiants et réessayer.';
	@override String get failed_auth => 'Échec de l\'authentification. Veuillez vérifier vos identifiants de connexion.';
	@override String get failed_get_standings => 'Impossible de récupérer les classements. {{message}}';
	@override String get failed_get_fixtures => 'Impossible de récupérer les calendriers. {{message}}';
	@override String get elite_home => 'En direct';
	@override String get upcoming => 'À venir';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app_name': return 'Elite One';
			case 'something_went_wrong': return 'Something went wrong, please try again later!';
			case 'exceptions.user_infos_saving_error': return 'Sorry, we couldn\'t save your user information. Please try again later.';
			case 'exceptions.user_data_not_found': return 'User information not found. Please check your credentials and try again.';
			case 'exceptions.failed_auth': return 'Authentication failed. Please verify your login credentials.';
			case 'exceptions.failed_get_standings': return 'Failed to retrieve standings. {{message}}';
			case 'exceptions.failed_get_fixtures': return 'Failed to retrieve fixtures. {{message}}';
			case 'exceptions.elite_home': return 'Live Now';
			case 'exceptions.upcoming': return 'Upcoming';
			default: return null;
		}
	}
}

extension on _StringsFr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app_name': return 'Elite One';
			case 'something_went_wrong': return 'Quelque chose s\'est mal passé. Veuillez réessayer plus tard!';
			case 'exceptions.user_infos_saving_error': return 'Désolé, nous n\'avons pas pu enregistrer vos informations. Veuillez réessayer ultérieurement.';
			case 'exceptions.user_data_not_found': return 'Informations introuvables. Veuillez vérifier vos identifiants et réessayer.';
			case 'exceptions.failed_auth': return 'Échec de l\'authentification. Veuillez vérifier vos identifiants de connexion.';
			case 'exceptions.failed_get_standings': return 'Impossible de récupérer les classements. {{message}}';
			case 'exceptions.failed_get_fixtures': return 'Impossible de récupérer les calendriers. {{message}}';
			case 'exceptions.elite_home': return 'En direct';
			case 'exceptions.upcoming': return 'À venir';
			default: return null;
		}
	}
}
