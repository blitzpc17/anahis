import 'package:flutter/material.dart';
import 'package:proyecto_secciones/src/utils/image_assets.dart';

import '../../section/view/section_screen.dart';

class SectionCard extends StatelessWidget {
  const SectionCard(this.text,
      {super.key, required this.icon, required this.images, required this.url});

  final String text;
  final String url;
  final Image icon;
  final List<Image> images;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final navigator = Navigator.of(context);
        navigator.push(SectionScreen.route(
          title: text,
          images: images,
          url: url,
        ));
      },
      child: SizedBox(
        height: 100,
        width: 180,
        child: Column(
          children: [
            icon,
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
