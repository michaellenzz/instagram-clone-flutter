import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 91,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          circleImageAdd('assets/images/pessoa1.jpg'),
          circleImage('assets/images/pessoa2.jpg', 'feh.dellis'),
          circleImage('assets/images/pessoa3.jpg', 'livia.ferr'),
          circleImage('assets/images/pessoa4.jpg', 'denver_jhon'),
          circleImage('assets/images/pessoa5.jpg', 'van_persie'),
        ],
      ),
    );
  }

  circleImage(image, user) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.pink, width: 2.5),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image))),
            ),
          ),
          Text(
            user,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  circleImageAdd(image) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(image))),
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 12,
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1.5),
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue),
                    child: const Icon(Icons.add,
                        size: 14, color: Colors.white),
                  ))
            ],
          ),
          const Text(
            'Seu story',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
