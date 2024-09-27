import 'enum_theme_type.dart';
import 'themes/a11y-dark.dart';
import 'themes/a11y-light.dart';
import 'themes/agate.dart';
import 'themes/an-old-hope.dart';
import 'themes/androidstudio.dart';
import 'themes/arduino-light.dart';
import 'themes/arta.dart';
import 'themes/ascetic.dart';
import 'themes/atelier-cave-dark.dart';
import 'themes/atelier-cave-light.dart';
import 'themes/atelier-dune-light.dart';
import 'themes/atelier-estuary-light.dart';
import 'themes/atelier-forest-light.dart';
import 'themes/atelier-heath-dark.dart';
import 'themes/atelier-heath-light.dart';
import 'themes/atelier-plateau-dark.dart';
import 'themes/atelier-savanna-dark.dart';
import 'themes/atelier-seaside-dark.dart';
import 'themes/atelier-sulphurpool-dark.dart';
import 'themes/atom-one-dark-reasonable.dart';
import 'themes/atom-one-dark.dart';
import 'themes/atom-one-light.dart';
import 'themes/brown-paper.dart';
import 'themes/codepen-embed.dart';
import 'themes/color-brewer.dart';
import 'themes/darcula.dart';
import 'themes/dark.dart';
import 'themes/default.dart';
import 'themes/docco.dart';
import 'themes/dracula.dart';
import 'themes/far.dart';
import 'themes/foundation.dart';
import 'themes/github-gist.dart';
import 'themes/github.dart';
import 'themes/gml.dart';
import 'themes/googlecode.dart';
import 'themes/gradient-dark.dart';
import 'themes/grayscale.dart';
import 'themes/gruvbox-dark.dart';
import 'themes/gruvbox-light.dart';
import 'themes/hopscotch.dart';
import 'themes/hybrid.dart';
import 'themes/idea.dart';
import 'themes/ir-black.dart';
import 'themes/isbl-editor-dark.dart';
import 'themes/isbl-editor-light.dart';
import 'themes/kimbie.dark.dart';
import 'themes/kimbie.light.dart';
import 'themes/lightfair.dart';
import 'themes/magula.dart';
import 'themes/mono-blue.dart';
import 'themes/monokai-sublime.dart';
import 'themes/monokai.dart';
import 'themes/night-owl.dart';
import 'themes/nord.dart';
import 'themes/obsidian.dart';
import 'themes/ocean.dart';
import 'themes/paraiso-dark.dart';
import 'themes/paraiso-light.dart';
import 'themes/pojoaque.dart';
import 'themes/purebasic.dart';
import 'themes/qtcreator_dark.dart';
import 'themes/qtcreator_light.dart';
import 'themes/railscasts.dart';
import 'themes/rainbow.dart';
import 'themes/routeros.dart';
import 'themes/school-book.dart';
import 'themes/shades-of-purple.dart';
import 'themes/solarized-dark.dart';
import 'themes/solarized-light.dart';
import 'themes/sunburst.dart';
import 'themes/tomorrow-night-blue.dart';
import 'themes/tomorrow-night-bright.dart';
import 'themes/tomorrow-night-eighties.dart';
import 'themes/tomorrow-night.dart';
import 'themes/tomorrow.dart';
import 'themes/vs.dart';
import 'themes/vs2015.dart';
import 'themes/xcode.dart';
import 'themes/xt256.dart';
import 'themes/zenburn.dart';

const Map<ThemeType, dynamic> themeMap = {
  ThemeType.a11yDark: a11yDarkTheme,
  ThemeType.a11yLight: a11yLightTheme,
  ThemeType.agate: agateTheme,
  ThemeType.anOldHope: anOldHopeTheme,
  ThemeType.androidstudio: androidstudioTheme,
  ThemeType.arduinoLight: arduinoLightTheme,
  ThemeType.arta: artaTheme,
  ThemeType.ascetic: asceticTheme,
  ThemeType.atelierCaveDark: atelierCaveDarkTheme,
  ThemeType.atelierCaveLight: atelierCaveLightTheme,
  ThemeType.atelierDuneLight: atelierDuneLightTheme,
  ThemeType.atelierEstuaryLight: atelierEstuaryLightTheme,
  ThemeType.atelierForestLight: atelierForestLightTheme,
  ThemeType.atelierHeathDark: atelierHeathDarkTheme,
  ThemeType.atelierHeathLight: atelierHeathLightTheme,
  ThemeType.atelierPlateauDark: atelierPlateauDarkTheme,
  ThemeType.atelierSavannaDark: atelierSavannaDarkTheme,
  ThemeType.atelierSeasideDark: atelierSeasideDarkTheme,
  ThemeType.atelierSulphurpoolDark: atelierSulphurpoolDarkTheme,
  ThemeType.atomOneDarkReasonable: atomOneDarkReasonableTheme,
  ThemeType.atomOneDark: atomOneDarkTheme,
  ThemeType.atomOneLight: atomOneLightTheme,
  ThemeType.brownPaper: brownPaperTheme,
  ThemeType.codepenEmbed: codepenEmbedTheme,
  ThemeType.colorBrewer: colorBrewerTheme,
  ThemeType.darcula: darculaTheme,
  ThemeType.dark: darkTheme,
  ThemeType.defaultTheme: defaultTheme,
  ThemeType.docco: doccoTheme,
  ThemeType.dracula: draculaTheme,
  ThemeType.far: farTheme,
  ThemeType.foundation: foundationTheme,
  ThemeType.githubGist: githubGistTheme,
  ThemeType.github: githubTheme,
  ThemeType.gml: gmlTheme,
  ThemeType.googlecode: googlecodeTheme,
  ThemeType.gradientDark: gradientDarkTheme,
  ThemeType.grayscale: grayscaleTheme,
  ThemeType.gruvboxDark: gruvboxDarkTheme,
  ThemeType.gruvboxLight: gruvboxLightTheme,
  ThemeType.hopscotch: hopscotchTheme,
  ThemeType.hybrid: hybridTheme,
  ThemeType.idea: ideaTheme,
  ThemeType.irBlack: irBlackTheme,
  ThemeType.isblEditorDark: isblEditorDarkTheme,
  ThemeType.isblEditorLight: isblEditorLightTheme,
  ThemeType.kimbieDark: kimbieDarkTheme,
  ThemeType.kimbieLight: kimbieLightTheme,
  ThemeType.lightfair: lightfairTheme,
  ThemeType.magula: magulaTheme,
  ThemeType.monoBlue: monoBlueTheme,
  ThemeType.monokaiSublime: monokaiSublimeTheme,
  ThemeType.monokai: monokaiTheme,
  ThemeType.nightOwl: nightOwlTheme,
  ThemeType.nord: nordTheme,
  ThemeType.obsidian: obsidianTheme,
  ThemeType.ocean: oceanTheme,
  ThemeType.paraisoDark: paraisoDarkTheme,
  ThemeType.paraisoLight: paraisoLightTheme,
  ThemeType.pojoaque: pojoaqueTheme,
  ThemeType.purebasic: purebasicTheme,
  ThemeType.qtcreatorDark: qtcreatorDarkTheme,
  ThemeType.qtcreatorLight: qtcreatorLightTheme,
  ThemeType.railscasts: railscastsTheme,
  ThemeType.rainbow: rainbowTheme,
  ThemeType.routeros: routerosTheme,
  ThemeType.schoolBook: schoolBookTheme,
  ThemeType.shadesOfPurple: shadesOfPurpleTheme,
  ThemeType.solarizedDark: solarizedDarkTheme,
  ThemeType.solarizedLight: solarizedLightTheme,
  ThemeType.sunburst: sunburstTheme,
  ThemeType.tomorrowNightBlue: tomorrowNightBlueTheme,
  ThemeType.tomorrowNightBright: tomorrowNightBrightTheme,
  ThemeType.tomorrowNightEighties: tomorrowNightEightiesTheme,
  ThemeType.tomorrowNight: tomorrowNightTheme,
  ThemeType.tomorrow: tomorrowTheme,
  ThemeType.vs: vsTheme,
  ThemeType.vs2015: vs2015Theme,
  ThemeType.xcode: xcodeTheme,
  ThemeType.xt256: xt256Theme,
  ThemeType.zenburn: zenburnTheme,
};
