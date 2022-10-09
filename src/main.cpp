#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QDir>
#include <QFontDatabase>
#include <QLocale>
#include <QTranslator>

bool loadFont(const QString &path);
bool loadFonts();

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
  QGuiApplication app(argc, argv);

  loadFonts();

  QTranslator translator;
  const QStringList uiLanguages = QLocale::system().uiLanguages();
  for (const QString &locale : uiLanguages) {
    const QString baseName = "Transmitter-QML_" + QLocale(locale).name();
    if (translator.load(":/i18n/" + baseName)) {
      app.installTranslator(&translator);
      break;
    }
  }

  QQmlApplicationEngine engine;
  const QUrl url(QStringLiteral("qrc:/main.qml"));
  QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
      &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
          QCoreApplication::exit(-1);
      }, Qt::QueuedConnection);
  engine.load(url);

  return app.exec();
}

bool loadFonts() {
  QDir fonts_dir(":/resource/fonts");
  if (!fonts_dir.exists())
    return false;

  const QStringList name_filters = QStringList() << "*.ttf";
  const auto info_list = fonts_dir.entryInfoList(name_filters, QDir::Files);

  foreach (auto& file, info_list)
    loadFont(file.filePath());

  return true;
}

bool loadFont(const QString &path) {
  bool fontWarningShown(false);
  QFile res(path);
  if (res.open(QIODevice::ReadOnly) == false) {
    if (fontWarningShown == false) {
        fontWarningShown = true;
    }
  } else {
    int fontID(-1);
    fontID = QFontDatabase::addApplicationFontFromData(res.readAll());
    if (fontID == -1 && fontWarningShown == false) {
      fontWarningShown = true;
    }
  }

  return fontWarningShown;
}
