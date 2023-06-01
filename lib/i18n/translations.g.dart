/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 18 (9 per locale)
///
/// Built on 2023-06-01 at 00:24 UTC

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
enum AppLocale with BaseAppLocale<AppLocale, TranslationsEn> {
	en(languageCode: 'en', build: TranslationsEn.build),
	fr(languageCode: 'fr', build: TranslationsFr.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, TranslationsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	TranslationsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of Loc).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = Loc.someKey.anotherKey;
TranslationsEn get Loc => LocaleSettings.instance.currentTranslations;

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
/// final Loc = Translations.of(context); // Get Loc variable.
/// String a = Loc.someKey.anotherKey; // Use Loc variable.
class Translations {
	Translations._(); // no constructor

	static TranslationsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, TranslationsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, TranslationsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, TranslationsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, TranslationsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.Loc.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	TranslationsEn get Loc => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, TranslationsEn> {
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
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, TranslationsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// context enums

enum GenderContext {
	male,
	female,
}

// interfaces generated as mixins

mixin PageData2 {
	String get title;
	String? get content => null;

	@override
	bool operator ==(Object other) => other is PageData2 && title == other.title && content == other.content;

	@override
	int get hashCode => title.hashCode * content.hashCode;
}

// translations

// Path: <root>
class TranslationsEn implements BaseTranslations<AppLocale, TranslationsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  );

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, TranslationsEn> $meta;

	late final TranslationsEn _root = this; // ignore: unused_field

	// Translations
	String get app_name => 'Elite One';
	String get something_went_wrong => 'Something went wrong, please try again later!';
	late final TranslationsExceptionsEn exceptions = TranslationsExceptionsEn._(_root);
}

// Path: exceptions
class TranslationsExceptionsEn {
	TranslationsExceptionsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	String get user_infos_saving_error => 'Sorry, we couldn\'t save your user information. Please try again later.';
	String get user_data_not_found => 'User information not found. Please check your credentials and try again.';
	String get failed_auth => 'Authentication failed. Please verify your login credentials.';
	String failed_get_standings({required Object Message}) => 'Failed to retrieve standings. ${Message}';
	String failed_get_fixtures({required Object Message}) => 'Failed to retrieve fixtures. ${Message}';
	String get elite_home => 'Live Now';
	String get upcoming => 'Upcoming';
}

// Path: <root>
class TranslationsFr extends TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, TranslationsEn> $meta;

	@override late final TranslationsFr _root = this; // ignore: unused_field

	// Translations
	@override String get app_name => 'Elite One';
	@override String get something_went_wrong => 'Quelque chose s\'est mal passé. Veuillez réessayer plus tard!';
	@override late final TranslationsExceptionsFr exceptions = TranslationsExceptionsFr._(_root);
}

// Path: exceptions
class TranslationsExceptionsFr extends TranslationsExceptionsEn {
	TranslationsExceptionsFr._(TranslationsFr root) : this._root = root, super._(root);

	@override final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get user_infos_saving_error => 'Désolé, nous n\'avons pas pu enregistrer vos informations. Veuillez réessayer ultérieurement.';
	@override String get user_data_not_found => 'Informations introuvables. Veuillez vérifier vos identifiants et réessayer.';
	@override String get failed_auth => 'Échec de l\'authentification. Veuillez vérifier vos identifiants de connexion.';
	@override String failed_get_standings({required Object Message}) => 'Impossible de récupérer les classements. ${Message}';
	@override String failed_get_fixtures({required Object Message}) => 'Impossible de récupérer les calendriers. ${Message}';
	@override String get elite_home => 'En direct';
	@override String get upcoming => 'À venir';
}
