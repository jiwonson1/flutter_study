import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {

  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // stateless widget으로 navigate하기 위해서 materialpageroute로 감싸기.
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(title: title, thumb: thumb, id: id),
        fullscreenDialog: true, // 상단 왼쪽 나가는 버튼을 x로 만듦.
        ),
        );
      },
      child: Column(
          children: [
            Hero(
              tag: id, 
              child: Container(
                width: 250,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      offset: const Offset(10, 10),
                      color: Colors.black.withOpacity(0.3),
                    )
                  ],
                ),
                child: Image.network(thumb),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
          ],
        ),
    );
  }
}