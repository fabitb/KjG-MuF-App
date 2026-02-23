gen:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

translation:
	fvm flutter gen-l10n

get:
	fvm flutter pub get

clean:
	fvm flutter clean

doctor:
	fvm flutter doctor

test:
	fvm flutter test

format:
	fvm dart format .

splash:
	fvm dart run flutter_native_splash:create

icon:
	fvm dart run flutter_launcher_icons

watch:
	fvm dart run build_runner watch