// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get onlyRegisteredEvents => 'Nur angemeldete Veranstaltungen';

  @override
  String get hideCommitteeMeetings => 'Gremiensitzungen ausblenden';

  @override
  String get filterByOrganizer => 'Nach Veranstalter filtern';

  @override
  String get filterByDate => 'Nach Datum filtern';

  @override
  String get resetFilter => 'Filter zurücksetzen';

  @override
  String get events => 'Veranstaltungen';

  @override
  String greeting(String name) {
    return 'Hallo $name!';
  }

  @override
  String get news => 'Neuigkeiten';

  @override
  String get noNewsAvailable =>
      'Wir konnten leider keine Neuigkeiten laden. Versuche es einfach später nochmal!';

  @override
  String get activities => 'Aktionen';

  @override
  String get noActivitiesAvailable =>
      'Wir konnten leider keine Aktionen laden. Versuche es einfach später nochmal!';

  @override
  String get subscribeToNewsletter =>
      'Melde dich für unseren Newsletter an, um nichts mehr zu verpassen!';

  @override
  String get login => 'Einloggen';

  @override
  String get username => 'Benutzername';

  @override
  String get password => 'Passwort';

  @override
  String get loginMida => 'Login Mida';

  @override
  String get loggingIn => 'Einloggen...';

  @override
  String get signupText =>
      'Du hast noch keinen Mida Zugang oder willst KjG Mitglied werden?';

  @override
  String get writeEmail => 'Schreib uns eine Mail!';

  @override
  String loggedInText(String name) {
    return 'Du bist eingeloggt $name';
  }

  @override
  String get dontAskAgain => 'Nicht erneut nachfragen';

  @override
  String get download => 'Herunterladen';

  @override
  String get downloadDescription =>
      'Alle Anhänge dieser Veranstaltung in der App offline verfügbar machen. Verwalte die Anhänge unter Mehr > Anhänge';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get ok => 'OK';

  @override
  String get error => 'Fehler';

  @override
  String get fileErrorDescription =>
      'Es können aktuell nur PDF Dateien oder Bilder geöffnet werden';

  @override
  String get delete => 'Löschen';

  @override
  String get deleteDescription =>
      'Die Anhänge sind dann nicht mehr offline verfügbar';

  @override
  String get attachments => 'Anhänge';

  @override
  String get unknownError => 'Unbekannter Fehler';

  @override
  String get noInternet => 'Keine Internetverbindung';

  @override
  String get loginError => 'Falscher Nutzername oder Passwort';

  @override
  String get gameDatabase => 'Spieledatenbank';

  @override
  String get website => 'Website';

  @override
  String get shop => 'Shop';

  @override
  String get dataPrivacy => 'Datenschutz';

  @override
  String get kjgMuF => 'KjG München und Freising';

  @override
  String get organizer => 'Veranstalter';

  @override
  String contact(Object name) {
    return 'Kontakt: $name';
  }

  @override
  String get eventRegister => 'Anmelden';

  @override
  String get eventUnregister => 'Abmelden';

  @override
  String get registeredLabel => 'Du bist angemeldet';

  @override
  String get noPlaceFound => 'Es konnte kein Ort gefunden werden';

  @override
  String get savedAttachments => 'Gespeicherte Anhänge';

  @override
  String get attachmentsDeleteTitle => 'Anhänge löschen';

  @override
  String get attachmentsDeleteMessage =>
      'Willst du wirklich alle Anhänge löschen?';

  @override
  String get attachmentsDescription =>
      'Hier siehst du alle Anhänge die aktuell offline verfügbar sind. Zum Löschen eines Anhangs von der Seite wischen.';

  @override
  String get notFound => 'Nicht gefunden';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nein';

  @override
  String get logout => 'Abmelden';

  @override
  String get logoutConfirmMessage => 'Willst du dich wirklich ausloggen?';

  @override
  String get search => 'Suche';

  @override
  String get apiToken => 'API-Token';

  @override
  String get typeInAPIToken => 'Gib deinen API-Token ein';

  @override
  String get resetPlayedGames => 'Gespielte Spiele zurücksetzen?';

  @override
  String get resetPlayedGamesDescription =>
      'Möchtest du, dass alle Spiele wieder auf ungespielt zurückgesetzt werden?';

  @override
  String get showOnlyUnplayedGames => 'Nur ungespielte Spiele anzeigen';

  @override
  String get showOnlyReviewedGames => 'Nur reviewed Spiele anzeigen';

  @override
  String get action => 'Action';

  @override
  String get thinking => 'Denken';

  @override
  String get categories => 'Kategorien';

  @override
  String get material => 'Material';

  @override
  String get ageRestrictions => 'Altersbeschränkungen';

  @override
  String get spaceRestrictions => 'Raumbeschränkungen';

  @override
  String get goalOfGame => 'Ziel des Spiels';

  @override
  String get preparationsInstructions => 'Spielaufbau';

  @override
  String get gameplayInstructions => 'Spielablauf';

  @override
  String get endingInstructions => 'Spielende';

  @override
  String thanksToGameAuthor(String name) {
    return 'Danke an $name für das Erstellen des Spiels!';
  }
}
