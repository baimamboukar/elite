/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 48 (24 per locale)
///
/// Built on 2023-06-01 at 18:52 UTC

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
	late final TranslationsProfileEn profile = TranslationsProfileEn._(_root);
	late final TranslationsStandingsEn standings = TranslationsStandingsEn._(_root);
	late final TranslationsBottomNavEn bottom_nav = TranslationsBottomNavEn._(_root);
	late final TranslationsFixturesEn fixtures = TranslationsFixturesEn._(_root);
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

// Path: profile
class TranslationsProfileEn {
	TranslationsProfileEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	String get match_reminders => 'Match Reminders';
	String get recieve_notifications => 'Recieve Notifications';
	String get dark_mode => 'Dark Mode';
	String get language => 'Language';
	String get logout => 'Logout';
}

// Path: standings
class TranslationsStandingsEn {
	TranslationsStandingsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	String elite_standings({required Object App}) => '${App} standings';
	String get standings => 'Standings';
	String get top_scorers => 'Top Scorers';
	String get team => 'Team';
	String stats_powered({required Object Org}) => 'Statistics poweredd by ${Org}';
}

// Path: bottom_nav
class TranslationsBottomNavEn {
	TranslationsBottomNavEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	String get elite => 'Elite';
	String get standings => 'Standings';
	String get settings => 'Settings';
}

// Path: fixtures
class TranslationsFixturesEn {
	TranslationsFixturesEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	String get who_will_win => 'Who will win?';
	String get subscribe => 'subscribe to this match to not miss any event';
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
	@override String get something_went_wrong => 'Une erreur s\'est produite, veuillez réessayer ultérieurement !';
	@override late final TranslationsExceptionsFr exceptions = TranslationsExceptionsFr._(_root);
	@override late final TranslationsProfileFr profile = TranslationsProfileFr._(_root);
	@override late final TranslationsStandingsFr standings = TranslationsStandingsFr._(_root);
	@override late final TranslationsBottomNavFr bottom_nav = TranslationsBottomNavFr._(_root);
	@override late final TranslationsFixturesFr fixtures = TranslationsFixturesFr._(_root);
}

// Path: exceptions
class TranslationsExceptionsFr extends TranslationsExceptionsEn {
	TranslationsExceptionsFr._(TranslationsFr root) : this._root = root, super._(root);

	@override final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get user_infos_saving_error => 'Désolé, nous n\'avons pas pu enregistrer vos informations utilisateur. Veuillez réessayer ultérieurement.';
	@override String get user_data_not_found => 'Informations utilisateur introuvables. Veuillez vérifier vos identifiants et réessayer.';
	@override String get failed_auth => 'Échec de l\'authentification. Veuillez vérifier vos identifiants de connexion.';
	@override String failed_get_standings({required Object Message}) => 'Échec de la récupération des classements. ${Message}';
	@override String failed_get_fixtures({required Object Message}) => 'Échec de la récupération des matchs. ${Message}';
	@override String get elite_home => 'En direct';
	@override String get upcoming => 'À venir';
}

// Path: profile
class TranslationsProfileFr extends TranslationsProfileEn {
	TranslationsProfileFr._(TranslationsFr root) : this._root = root, super._(root);

	@override final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get match_reminders => 'Rappels de match';
	@override String get recieve_notifications => 'Recevoir des notifications';
	@override String get dark_mode => 'Mode sombre';
	@override String get language => 'Langue';
	@override String get logout => 'Déconnexion';
}

// Path: standings
class TranslationsStandingsFr extends TranslationsStandingsEn {
	TranslationsStandingsFr._(TranslationsFr root) : this._root = root, super._(root);

	@override final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String elite_standings({required Object App}) => 'Classement ${App}';
	@override String get standings => 'Classement';
	@override String get top_scorers => 'Meilleurs buteurs';
	@override String get team => 'Équipe';
	@override String stats_powered({required Object Org}) => 'Statistiques fournies par ${Org}';
}

// Path: bottom_nav
class TranslationsBottomNavFr extends TranslationsBottomNavEn {
	TranslationsBottomNavFr._(TranslationsFr root) : this._root = root, super._(root);

	@override final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get elite => 'Elite';
	@override String get standings => 'Classement';
	@override String get settings => 'Paramètres';
}

// Path: fixtures
class TranslationsFixturesFr extends TranslationsFixturesEn {
	TranslationsFixturesFr._(TranslationsFr root) : this._root = root, super._(root);

	@override final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get who_will_win => 'Qui va gagner?';
	@override String get subscribe => 'Souscrivez à ce match pour ne rien manquer!';
}
