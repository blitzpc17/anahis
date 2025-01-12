import 'package:flutter/material.dart';

class SectionScreen extends StatefulWidget {
  const SectionScreen({
    super.key,
    required this.title,
    required this.images,
    required this.url,
  });

  final String title;
  final String url;
  final List<Image> images;

  static MaterialPageRoute route({
    required String title,
    required String url,
    required List<Image> images,
  }) =>
      MaterialPageRoute(
        builder: (context) {
          return SectionScreen(
            title: title,
            images: images,
            url: url,
          );
        },
      );

  @override
  State<SectionScreen> createState() => _SectionScreenState();
}

class _SectionScreenState extends State<SectionScreen> {
  late PageController _pageViewController;
  @override
  void initState() {
    _pageViewController = PageController(initialPage: 1);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: PageView(
          controller: _pageViewController,
          onPageChanged: (int numeroPaginaNueva) {
            _pageViewController.animateToPage(numeroPaginaNueva,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut);
          },
          //paginas de imagenes y videos
          children: [
            ListView(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              children: widget.images,
            ),
            Container(
              color: const Color.fromARGB(255, 240, 169, 213),
              child: Image.network(widget.url),
            )
          ],
        ),
      ),
    );
  }
}
