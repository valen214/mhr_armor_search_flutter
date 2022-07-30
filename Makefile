



run:
	flutter run --hot -d web-server --web-port 8000 --web-hostname 0.0.0.0

generate_intl_messages_arb:
	flutter pub run intl_generator:extract_to_arb --output-dir=lib/l10n lib/main.dart

serve:
# try without set
#	set "PATH=%PATH%;%LOCALAPPDATA%\Pub\Cache\bin"
	flutter pub global run webdev:webdev \
			serve --hostname 0.0.0.0 web:8000 --log-requests  --injected-client

install:
	flutter pub global activate webdev