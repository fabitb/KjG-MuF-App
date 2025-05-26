import 'package:kjg_muf_app/utils/extensions.dart';

class Strings {
  static const websiteURL = "https://muenchen.kjg.de/";
  static const midaBaseURL = "https://mida.kjg.de/DVMuenchenundFreising/";
  static const shopURL =
      "https://mida.kjg.de/DVMuenchenundFreising/?module=shop";
  static const contactEmailAddress = "info@kjg-muenchen.de";
  static const dataPrivacyLink = "https://muenchen.kjg.de/datenschutz-kjg-app/";
  static const newsletterSubscribeURL =
      "https://mida.kjg.de/DVMuenchenundFreising/?subscribe&dialog=1";

  // table headers returned form MiDa CSV Export
  static const midaCsvLinkHeader = "Link";
  static const midaCsvStatusHeader = "Status";
  static const midaCsvPlaceHeader = "Ort";
  static const midaCsvTitleHeader = "Veranstaltung";
  static const midaCsvDateHeader = "Datum";

  static String attachmentDownloadLink(String baseUrl, String attachment) {
    return "$baseUrl/?download=$attachment";
  }

  static String midaToken(String username, String passwordHash) =>
      "A/$username/$passwordHash";

  // assets
  static const dashboardBackground = "assets/mausis/mercimausi.png";
}
