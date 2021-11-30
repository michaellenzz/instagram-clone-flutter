import 'package:flutter/material.dart';
import 'package:instagram_clone/home/post.dart';
import 'package:instagram_clone/home/stories_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 45,
                ),
              ],
            ),
            Row(
              children: [
                iconAppBar('assets/images/add.png'),
                iconAppBar('assets/images/love.png'),
                iconAppBar('assets/images/messenger.png'),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: const [
          Stories(),
          Divider(
            thickness: 2,
          ),
          Post('assets/images/pessoa2.jpg', 'feh.dellis',
              'assets/images/dog.jpg', '52', 'crisslowik 😻'),
          Post('assets/images/pessoa3.jpg', 'livia.ferr',
              'assets/images/pessoa4.jpg', '102', 'crisslowik 🥴'),
          Post('assets/images/pessoa4.jpg', 'denver_jhon',
              'assets/images/panda.jpg', '15', 'feh.dellis 🐼'),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.home_filled,
              size: 30,
            ),
            iconBar('assets/images/search.png'),
            iconBar('assets/images/add.png'),
            iconBar('assets/images/bag.png'),
            SizedBox(
              height: 25,
              child: circleImage('assets/images/pessoa1.jpg'),
            )
          ],
        ),
      ),
    );
  }

  iconAppBar(image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Image.asset(
        image,
        height: 21,
      ),
    );
  }

  iconBar(image) {
    return Image.asset(
      image,
      height: 23,
    );
  }

  circleImage(image) {
    return Center(
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
