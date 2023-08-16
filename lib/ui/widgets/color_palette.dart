import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette({
    Key? key,
    // así se reciben en el constructor, por ejemplo
    required this.baseColor,
    required this.callback,
  }) : super(key: key);

  // atributos de la clase, por ejemplo
  final String baseColor;

  // también se puede tener como un atributo un callback, necesiario ya que es un
  // widget sin estado, por ejemplo
  final Function(String) callback;

  // el callback se puede llamar así en el GestureDetector
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    // padding para crear espacio alrededor del widget
    return Padding(
        padding: const EdgeInsets.all(8.0),
        // vamos a mostrar los elementos en un row
        child: Row(children: [
          Expanded(
              flex: 4,
              child: GestureDetector(
                  onTap: () => callback(baseColor.toString()),
                  child: Container(
                      height: 100, color: ColorUtils.FromHex(baseColor))))
        ]));
  }
}
