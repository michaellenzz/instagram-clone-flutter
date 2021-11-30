// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final photoUser, user, photo, comment, likes;
  const Post(this.photoUser, this.user, this.photo, this.likes, this.comment,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            circleImage(photoUser),
             Expanded(
                child: Text(
              user,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            )),
            const Icon(Icons.more_horiz)
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Image.asset(photo),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                iconPost('assets/images/love.png', 27),
                iconPost('assets/images/chat.png', 29),
                iconPost('assets/images/send.png', 28),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                iconPost('assets/images/save.png', 27),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text(
            '$likes curtidas',
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text(
            comment,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text(
            'Há 1 hora',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 11,
                color: Colors.grey[500]),
          ),
        ),
      ],
    );
  }

  iconPost(image, double size) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset(
          image,
          height: size,
        ));
  }

  circleImage(image) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
