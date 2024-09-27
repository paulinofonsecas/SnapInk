import 'package:flutter/material.dart';
import 'package:print_script/app/consts/const_default_gradients.dart';
import 'package:print_script/app/controller.dart';

import 'package:print_script/app/components/toolbar.dart';
import 'package:print_script/app/theme/enum_theme_type.dart';
import 'package:print_script/app/components/widget_to_image_wrapper.dart';
import 'package:print_script/app/theme/language/enum_languages.dart';

import '../theme/code_editor/flutter_code_editor.dart';

class CodeEditor extends StatefulWidget {
  CodeEditor({super.key});

  @override
  State<CodeEditor> createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor> {
  double? containerWidth;

  double? containerHeight;
  ValueNotifier<double>dragAreaSize = ValueNotifier(100);
  ValueNotifier<bool>resizing = ValueNotifier(false);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: containerWidth,
      child: WidgetsToImageWrapper(
        controller: widgetsToImageController,
        child: ListenableBuilder(
          builder: (context, value) {
            return AnimatedContainer(
              padding: EdgeInsets.all(Controller.padding.value),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: Controller.backgroundColor.value.gradient)),
              duration: const Duration(milliseconds: 400),
              child: Flexible(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(Controller.borderRadius.value),
                      child: ValueListenableBuilder(
                        builder: (context,theme,_) {
                          return CodeTheme(
                              data: CodeThemeData(styles: theme.themeValue),
                              child: AnimatedOpacity(
                                opacity: Controller.opactity.value,
                                duration: const Duration(milliseconds: 300),
                                child: Builder(
                                  builder: (context) {
                                    return CodeField(
                                      wrap: true,
                                      gutterStyle: GutterStyle(

                                          showFoldingHandles: false,
                                          showErrors: false,
                                          showLineNumbers:
                                              Controller.showLines.value),
                                      controller: CodeController(
                                          text: Controller.code, language: Controller.selectedLanguage.value.languageValue)
                                    );
                                  }
                                ),
                              ));
                        }, valueListenable: Controller.selectedTheme,
                      ),
                    ),
                    Positioned(
                     right: 1,
                      top: 0.7,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.resizeLeft,
                        onHover: (v){
                          resizing.value=true;
                        },
                        onExit: (v){
                          resizing.value=false;

                        },
                        child: GestureDetector(

                          onPanUpdate: (details) {
                            if (containerWidth == null) {
                              final box = (widget.key as GlobalKey)
                                  .currentContext!
                                  .findRenderObject() as RenderBox;
                              containerHeight = box.size.height;
                              containerWidth = box.size.width;
                            }

                            setState(() {
                              if (containerWidth != null && containerHeight != null) {
                                containerWidth = containerWidth! + details.delta.dx;
                                dragAreaSize.value+=details.delta.dy;
                              }
                            });
                          },
                          child: ValueListenableBuilder(
                            builder: (context,onHover,_) {
                              return AnimatedContainer(
                                  duration:const Duration(milliseconds: 200),
                                  decoration: BoxDecoration(
                                    color: onHover? Theme.of(context).colorScheme.onPrimaryContainer:Colors.transparent,

                                    borderRadius: const BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                  ),
                                  width: 10,
                                  height: 400
                              );
                            }, valueListenable: resizing,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          listenable: Controller(),
        ),
      ),
    );
  }
}
