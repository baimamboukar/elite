import 'package:elite_one/src/app/assets.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  PageController? _controller;

  void _pageListener() {
    setState(() {});
  }

  @override
  void initState() {
    _controller = PageController(viewportFraction: 0.6);
    _controller!.addListener(_pageListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.removeListener(_pageListener);
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dragon Ball'),
        backgroundColor: Colors.black54,
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        controller: _controller,
        itemCount: 5,
        itemBuilder: (context, index) {
          double? currentPage = 0;
          try {
            currentPage = _controller!.page;
          } catch (_) {}

          final num resizeFactor =
              1 - (((currentPage! - index).abs() * 0.3).clamp(0.0, 1.0));
          final currentCharacter = characters[index];
          return ListItem(
            character: currentCharacter,
            resizeFactor: resizeFactor as double,
            onTap: () {},
          );
        },
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    required this.character,
    required this.resizeFactor,
    required this.onTap,
    super.key,
  });
  final Character character;
  final double resizeFactor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.4;
    final width = MediaQuery.of(context).size.width * 0.85;
    return InkWell(
      onTap: onTap,
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: width * resizeFactor,
          height: height * resizeFactor,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: height / 4,
                bottom: 0,
                child: Hero(
                  tag: 'background_${character.title}',
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(character.color!),
                            Colors.white,
                          ],
                          stops: const [
                            0.4,
                            1.0,
                          ],
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(
                          left: 20,
                          bottom: 10,
                        ),
                        child: Text(
                          character.title!,
                          style: TextStyle(
                            fontSize: 24 * resizeFactor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Hero(
                  tag: 'image_${character.title}',
                  child: Image.asset(
                    character.avatar!,
                    width: width / 2,
                    height: height,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Character {
  Character({
    this.avatar,
    this.title,
    this.description,
    this.color,
  });
  final String? avatar;
  final String? title;
  final String? description;
  final int? color;
}

final characters = [
  Character(
    title: 'Goku',
    description: 'Goku is the main protagonist',
    avatar: Assets.assetsImagesFootball,
    color: 0xFFE83835,
  ),
  Character(
    title: 'Goku',
    description: 'Goku is the main protagonist',
    avatar: Assets.assetsImagesFootball,
    color: 0xFFE83835,
  ),
  Character(
    title: 'Goku',
    description: 'Goku is the main protagonist',
    avatar: Assets.assetsImagesFootball,
    color: 0xFFE83835,
  ),
  Character(
    title: 'Goku',
    description: 'Goku is the main protagonist',
    avatar: Assets.assetsImagesFootball,
    color: 0xFFE83835,
  ),
];
