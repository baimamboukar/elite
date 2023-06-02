/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 100 (50 per locale)
///
/// Built on 2023-06-02 at 10:28 UTC

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
	late final _StringsProfileEn profile = _StringsProfileEn._(_root);
	late final _StringsStandingsEn standings = _StringsStandingsEn._(_root);
	late final _StringsBottomNavEn bottom_nav = _StringsBottomNavEn._(_root);
	late final _StringsFixturesEn fixtures = _StringsFixturesEn._(_root);
	late final _StringsPlayerDetailsEn player_details = _StringsPlayerDetailsEn._(_root);
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

// Path: profile
class _StringsProfileEn {
	_StringsProfileEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get match_reminders => 'Match Reminders';
	String get recieve_notifications => 'Recieve Notifications';
	String get dark_mode => 'Dark Mode';
	String get language => 'Language';
	String get logout => 'Logout';
}

// Path: standings
class _StringsStandingsEn {
	_StringsStandingsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get elite_standings => '{{app}} standings';
	String get standings => 'Standings';
	String get top_scorers => 'Top Scorers';
	String get team => 'Team';
	String get stats_powered => 'Statistics poweredd by {{org}}';
}

// Path: bottom_nav
class _StringsBottomNavEn {
	_StringsBottomNavEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get elite => 'Elite';
	String get standings => 'Standings';
	String get settings => 'Settings';
}

// Path: fixtures
class _StringsFixturesEn {
	_StringsFixturesEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get who_will_win => 'Who will win?';
	String get subscribe => 'subscribe to this match to not miss any event';
}

// Path: player_details
class _StringsPlayerDetailsEn {
	_StringsPlayerDetailsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get player_details => 'Player Details';
	String get player_stats => 'Player Stats';
	String get height => 'Height';
	String get weight => 'Weight';
	String get goals => 'Goals';
	String get mercato_value => 'Mercato Value';
	String get overall_rating => 'Overall Rating';
	String get performance_analysis => 'Performance Analysis';
	String get dribble => 'Dribble';
	String get pass => 'Pass';
	String get speed => 'Speed';
	String get shoot => 'Shoot';
	String get physical => 'Physical';
	String get defence => 'Defence';
	String get age => 'Age';
	String get position => 'Position';
	String get team => 'Team';
	String get assists => 'Assists';
	String get yellow_cards => 'Yellow Cards';
	String get red_cards => 'Red Cards';
	String get matches_played => 'Matches Played';
	String get player_info => 'Player Info';
	String get foot => 'Pied';
	String get right => 'Right';
	String get left => 'Left';
	String get both => 'Both';
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
	@override String get something_went_wrong => 'Une erreur s\'est produite, veuillez réessayer ultérieurement !';
	@override late final _StringsExceptionsFr exceptions = _StringsExceptionsFr._(_root);
	@override late final _StringsProfileFr profile = _StringsProfileFr._(_root);
	@override late final _StringsStandingsFr standings = _StringsStandingsFr._(_root);
	@override late final _StringsBottomNavFr bottom_nav = _StringsBottomNavFr._(_root);
	@override late final _StringsFixturesFr fixtures = _StringsFixturesFr._(_root);
	@override late final _StringsPlayerDetailsFr player_details = _StringsPlayerDetailsFr._(_root);
}

// Path: exceptions
class _StringsExceptionsFr implements _StringsExceptionsEn {
	_StringsExceptionsFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get user_infos_saving_error => 'Désolé, nous n\'avons pas pu enregistrer vos informations utilisateur. Veuillez réessayer ultérieurement.';
	@override String get user_data_not_found => 'Informations utilisateur introuvables. Veuillez vérifier vos identifiants et réessayer.';
	@override String get failed_auth => 'Échec de l\'authentification. Veuillez vérifier vos identifiants de connexion.';
	@override String get failed_get_standings => 'Échec de la récupération des classements. {{message}}';
	@override String get failed_get_fixtures => 'Échec de la récupération des matchs. {{message}}';
	@override String get elite_home => 'En direct';
	@override String get upcoming => 'À venir';
}

// Path: profile
class _StringsProfileFr implements _StringsProfileEn {
	_StringsProfileFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get match_reminders => 'Rappels de match';
	@override String get recieve_notifications => 'Recevoir des notifications';
	@override String get dark_mode => 'Mode sombre';
	@override String get language => 'Langue';
	@override String get logout => 'Déconnexion';
}

// Path: standings
class _StringsStandingsFr implements _StringsStandingsEn {
	_StringsStandingsFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get elite_standings => 'Classement {{app}}';
	@override String get standings => 'Classement';
	@override String get top_scorers => 'Meilleurs buteurs';
	@override String get team => 'Équipe';
	@override String get stats_powered => 'Statistiques fournies par {{org}}';
}

// Path: bottom_nav
class _StringsBottomNavFr implements _StringsBottomNavEn {
	_StringsBottomNavFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get elite => 'Elite';
	@override String get standings => 'Classement';
	@override String get settings => 'Paramètres';
}

// Path: fixtures
class _StringsFixturesFr implements _StringsFixturesEn {
	_StringsFixturesFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get who_will_win => 'Qui va gagner?';
	@override String get subscribe => 'Souscrivez à ce match pour ne rien manquer!';
}

// Path: player_details
class _StringsPlayerDetailsFr implements _StringsPlayerDetailsEn {
	_StringsPlayerDetailsFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get player_details => 'Détails du joueur';
	@override String get player_stats => 'Statistiques du joueur';
	@override String get height => 'Taille';
	@override String get weight => 'Poids';
	@override String get goals => 'Buts';
	@override String get mercato_value => 'Valeur Mercato';
	@override String get overall_rating => 'Note globale';
	@override String get performance_analysis => 'Analyse de performance';
	@override String get dribble => 'Dribble';
	@override String get pass => 'Passe';
	@override String get speed => 'Vitesse';
	@override String get shoot => 'Tir';
	@override String get physical => 'Physique';
	@override String get defence => 'Défense';
	@override String get age => 'Âge';
	@override String get position => 'Position';
	@override String get team => 'Équipe';
	@override String get assists => 'Passes décisives';
	@override String get yellow_cards => 'Cartons jaunes';
	@override String get red_cards => 'Cartons rouges';
	@override String get matches_played => 'Matchs joués';
	@override String get player_info => 'Informations sur le joueur';
	@override String get foot => 'Foot';
	@override String get right => 'Droit';
	@override String get left => 'Gauche';
	@override String get both => 'Les deux';
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
			case 'profile.match_reminders': return 'Match Reminders';
			case 'profile.recieve_notifications': return 'Recieve Notifications';
			case 'profile.dark_mode': return 'Dark Mode';
			case 'profile.language': return 'Language';
			case 'profile.logout': return 'Logout';
			case 'standings.elite_standings': return '{{app}} standings';
			case 'standings.standings': return 'Standings';
			case 'standings.top_scorers': return 'Top Scorers';
			case 'standings.team': return 'Team';
			case 'standings.stats_powered': return 'Statistics poweredd by {{org}}';
			case 'bottom_nav.elite': return 'Elite';
			case 'bottom_nav.standings': return 'Standings';
			case 'bottom_nav.settings': return 'Settings';
			case 'fixtures.who_will_win': return 'Who will win?';
			case 'fixtures.subscribe': return 'subscribe to this match to not miss any event';
			case 'player_details.player_details': return 'Player Details';
			case 'player_details.player_stats': return 'Player Stats';
			case 'player_details.height': return 'Height';
			case 'player_details.weight': return 'Weight';
			case 'player_details.goals': return 'Goals';
			case 'player_details.mercato_value': return 'Mercato Value';
			case 'player_details.overall_rating': return 'Overall Rating';
			case 'player_details.performance_analysis': return 'Performance Analysis';
			case 'player_details.dribble': return 'Dribble';
			case 'player_details.pass': return 'Pass';
			case 'player_details.speed': return 'Speed';
			case 'player_details.shoot': return 'Shoot';
			case 'player_details.physical': return 'Physical';
			case 'player_details.defence': return 'Defence';
			case 'player_details.age': return 'Age';
			case 'player_details.position': return 'Position';
			case 'player_details.team': return 'Team';
			case 'player_details.assists': return 'Assists';
			case 'player_details.yellow_cards': return 'Yellow Cards';
			case 'player_details.red_cards': return 'Red Cards';
			case 'player_details.matches_played': return 'Matches Played';
			case 'player_details.player_info': return 'Player Info';
			case 'player_details.foot': return 'Pied';
			case 'player_details.right': return 'Right';
			case 'player_details.left': return 'Left';
			case 'player_details.both': return 'Both';
			default: return null;
		}
	}
}

extension on _StringsFr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app_name': return 'Elite One';
			case 'something_went_wrong': return 'Une erreur s\'est produite, veuillez réessayer ultérieurement !';
			case 'exceptions.user_infos_saving_error': return 'Désolé, nous n\'avons pas pu enregistrer vos informations utilisateur. Veuillez réessayer ultérieurement.';
			case 'exceptions.user_data_not_found': return 'Informations utilisateur introuvables. Veuillez vérifier vos identifiants et réessayer.';
			case 'exceptions.failed_auth': return 'Échec de l\'authentification. Veuillez vérifier vos identifiants de connexion.';
			case 'exceptions.failed_get_standings': return 'Échec de la récupération des classements. {{message}}';
			case 'exceptions.failed_get_fixtures': return 'Échec de la récupération des matchs. {{message}}';
			case 'exceptions.elite_home': return 'En direct';
			case 'exceptions.upcoming': return 'À venir';
			case 'profile.match_reminders': return 'Rappels de match';
			case 'profile.recieve_notifications': return 'Recevoir des notifications';
			case 'profile.dark_mode': return 'Mode sombre';
			case 'profile.language': return 'Langue';
			case 'profile.logout': return 'Déconnexion';
			case 'standings.elite_standings': return 'Classement {{app}}';
			case 'standings.standings': return 'Classement';
			case 'standings.top_scorers': return 'Meilleurs buteurs';
			case 'standings.team': return 'Équipe';
			case 'standings.stats_powered': return 'Statistiques fournies par {{org}}';
			case 'bottom_nav.elite': return 'Elite';
			case 'bottom_nav.standings': return 'Classement';
			case 'bottom_nav.settings': return 'Paramètres';
			case 'fixtures.who_will_win': return 'Qui va gagner?';
			case 'fixtures.subscribe': return 'Souscrivez à ce match pour ne rien manquer!';
			case 'player_details.player_details': return 'Détails du joueur';
			case 'player_details.player_stats': return 'Statistiques du joueur';
			case 'player_details.height': return 'Taille';
			case 'player_details.weight': return 'Poids';
			case 'player_details.goals': return 'Buts';
			case 'player_details.mercato_value': return 'Valeur Mercato';
			case 'player_details.overall_rating': return 'Note globale';
			case 'player_details.performance_analysis': return 'Analyse de performance';
			case 'player_details.dribble': return 'Dribble';
			case 'player_details.pass': return 'Passe';
			case 'player_details.speed': return 'Vitesse';
			case 'player_details.shoot': return 'Tir';
			case 'player_details.physical': return 'Physique';
			case 'player_details.defence': return 'Défense';
			case 'player_details.age': return 'Âge';
			case 'player_details.position': return 'Position';
			case 'player_details.team': return 'Équipe';
			case 'player_details.assists': return 'Passes décisives';
			case 'player_details.yellow_cards': return 'Cartons jaunes';
			case 'player_details.red_cards': return 'Cartons rouges';
			case 'player_details.matches_played': return 'Matchs joués';
			case 'player_details.player_info': return 'Informations sur le joueur';
			case 'player_details.foot': return 'Foot';
			case 'player_details.right': return 'Droit';
			case 'player_details.left': return 'Gauche';
			case 'player_details.both': return 'Les deux';
			default: return null;
		}
	}
}
