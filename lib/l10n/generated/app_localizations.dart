import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de')
  ];

  /// No description provided for @onlyRegisteredEvents.
  ///
  /// In de, this message translates to:
  /// **'Nur angemeldete Veranstaltungen'**
  String get onlyRegisteredEvents;

  /// No description provided for @hideCommitteeMeetings.
  ///
  /// In de, this message translates to:
  /// **'Gremiensitzungen ausblenden'**
  String get hideCommitteeMeetings;

  /// No description provided for @filterByOrganizer.
  ///
  /// In de, this message translates to:
  /// **'Nach Veranstalter filtern'**
  String get filterByOrganizer;

  /// No description provided for @filterByDate.
  ///
  /// In de, this message translates to:
  /// **'Nach Datum filtern'**
  String get filterByDate;

  /// No description provided for @resetFilter.
  ///
  /// In de, this message translates to:
  /// **'Filter zurücksetzen'**
  String get resetFilter;

  /// No description provided for @events.
  ///
  /// In de, this message translates to:
  /// **'Veranstaltungen'**
  String get events;

  /// No description provided for @greeting.
  ///
  /// In de, this message translates to:
  /// **'Hallo {name}!'**
  String greeting(String name);

  /// No description provided for @news.
  ///
  /// In de, this message translates to:
  /// **'Neuigkeiten'**
  String get news;

  /// No description provided for @noNewsAvailable.
  ///
  /// In de, this message translates to:
  /// **'Wir konnten leider keine Neuigkeiten laden. Versuche es einfach später nochmal!'**
  String get noNewsAvailable;

  /// No description provided for @activities.
  ///
  /// In de, this message translates to:
  /// **'Aktionen'**
  String get activities;

  /// No description provided for @noActivitiesAvailable.
  ///
  /// In de, this message translates to:
  /// **'Wir konnten leider keine Aktionen laden. Versuche es einfach später nochmal!'**
  String get noActivitiesAvailable;

  /// No description provided for @subscribeToNewsletter.
  ///
  /// In de, this message translates to:
  /// **'Melde dich für unseren Newsletter an, um nichts mehr zu verpassen!'**
  String get subscribeToNewsletter;

  /// No description provided for @login.
  ///
  /// In de, this message translates to:
  /// **'Einloggen'**
  String get login;

  /// No description provided for @username.
  ///
  /// In de, this message translates to:
  /// **'Benutzername'**
  String get username;

  /// No description provided for @password.
  ///
  /// In de, this message translates to:
  /// **'Passwort'**
  String get password;

  /// No description provided for @loginMida.
  ///
  /// In de, this message translates to:
  /// **'Login Mida'**
  String get loginMida;

  /// No description provided for @loggingIn.
  ///
  /// In de, this message translates to:
  /// **'Einloggen...'**
  String get loggingIn;

  /// No description provided for @signupText.
  ///
  /// In de, this message translates to:
  /// **'Du hast noch keinen Mida Zugang oder willst KjG Mitglied werden?'**
  String get signupText;

  /// No description provided for @writeEmail.
  ///
  /// In de, this message translates to:
  /// **'Schreib uns eine Mail!'**
  String get writeEmail;

  /// No description provided for @loggedInText.
  ///
  /// In de, this message translates to:
  /// **'Du bist eingeloggt {name}'**
  String loggedInText(String name);

  /// No description provided for @dontAskAgain.
  ///
  /// In de, this message translates to:
  /// **'Nicht erneut nachfragen'**
  String get dontAskAgain;

  /// No description provided for @download.
  ///
  /// In de, this message translates to:
  /// **'Herunterladen'**
  String get download;

  /// No description provided for @downloadDescription.
  ///
  /// In de, this message translates to:
  /// **'Alle Anhänge dieser Veranstaltung in der App offline verfügbar machen. Verwalte die Anhänge unter Mehr > Anhänge'**
  String get downloadDescription;

  /// No description provided for @cancel.
  ///
  /// In de, this message translates to:
  /// **'Abbrechen'**
  String get cancel;

  /// No description provided for @ok.
  ///
  /// In de, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @error.
  ///
  /// In de, this message translates to:
  /// **'Fehler'**
  String get error;

  /// No description provided for @fileErrorDescription.
  ///
  /// In de, this message translates to:
  /// **'Es können aktuell nur PDF Dateien oder Bilder geöffnet werden'**
  String get fileErrorDescription;

  /// No description provided for @delete.
  ///
  /// In de, this message translates to:
  /// **'Löschen'**
  String get delete;

  /// No description provided for @deleteDescription.
  ///
  /// In de, this message translates to:
  /// **'Die Anhänge sind dann nicht mehr offline verfügbar'**
  String get deleteDescription;

  /// No description provided for @attachments.
  ///
  /// In de, this message translates to:
  /// **'Anhänge'**
  String get attachments;

  /// No description provided for @unknownError.
  ///
  /// In de, this message translates to:
  /// **'Unbekannter Fehler'**
  String get unknownError;

  /// No description provided for @noInternet.
  ///
  /// In de, this message translates to:
  /// **'Keine Internetverbindung'**
  String get noInternet;

  /// No description provided for @loginError.
  ///
  /// In de, this message translates to:
  /// **'Falscher Nutzername oder Passwort'**
  String get loginError;

  /// No description provided for @gameDatabase.
  ///
  /// In de, this message translates to:
  /// **'Spieledatenbank'**
  String get gameDatabase;

  /// No description provided for @website.
  ///
  /// In de, this message translates to:
  /// **'Website'**
  String get website;

  /// No description provided for @shop.
  ///
  /// In de, this message translates to:
  /// **'Shop'**
  String get shop;

  /// No description provided for @dataPrivacy.
  ///
  /// In de, this message translates to:
  /// **'Datenschutz'**
  String get dataPrivacy;

  /// No description provided for @kjgMuF.
  ///
  /// In de, this message translates to:
  /// **'KjG München und Freising'**
  String get kjgMuF;

  /// No description provided for @organizer.
  ///
  /// In de, this message translates to:
  /// **'Veranstalter'**
  String get organizer;

  /// No description provided for @contact.
  ///
  /// In de, this message translates to:
  /// **'Kontakt: {name}'**
  String contact(Object name);

  /// No description provided for @eventRegister.
  ///
  /// In de, this message translates to:
  /// **'Anmelden'**
  String get eventRegister;

  /// No description provided for @eventUnregister.
  ///
  /// In de, this message translates to:
  /// **'Abmelden'**
  String get eventUnregister;

  /// No description provided for @registeredLabel.
  ///
  /// In de, this message translates to:
  /// **'Du bist angemeldet'**
  String get registeredLabel;

  /// No description provided for @noPlaceFound.
  ///
  /// In de, this message translates to:
  /// **'Es konnte kein Ort gefunden werden'**
  String get noPlaceFound;

  /// No description provided for @savedAttachments.
  ///
  /// In de, this message translates to:
  /// **'Gespeicherte Anhänge'**
  String get savedAttachments;

  /// No description provided for @attachmentsDeleteTitle.
  ///
  /// In de, this message translates to:
  /// **'Anhänge löschen'**
  String get attachmentsDeleteTitle;

  /// No description provided for @attachmentsDeleteMessage.
  ///
  /// In de, this message translates to:
  /// **'Willst du wirklich alle Anhänge löschen?'**
  String get attachmentsDeleteMessage;

  /// No description provided for @attachmentsDescription.
  ///
  /// In de, this message translates to:
  /// **'Hier siehst du alle Anhänge die aktuell offline verfügbar sind. Zum Löschen eines Anhangs von der Seite wischen.'**
  String get attachmentsDescription;

  /// No description provided for @notFound.
  ///
  /// In de, this message translates to:
  /// **'Nicht gefunden'**
  String get notFound;

  /// No description provided for @yes.
  ///
  /// In de, this message translates to:
  /// **'Ja'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In de, this message translates to:
  /// **'Nein'**
  String get no;

  /// No description provided for @logout.
  ///
  /// In de, this message translates to:
  /// **'Abmelden'**
  String get logout;

  /// No description provided for @logoutConfirmMessage.
  ///
  /// In de, this message translates to:
  /// **'Willst du dich wirklich ausloggen?'**
  String get logoutConfirmMessage;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return AppLocalizationsDe();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
