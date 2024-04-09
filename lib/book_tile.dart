// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:practice_3_20/main.dart';

class BookTile extends StatelessWidget {
  BookTile({super.key, required this.book}) {
    print('create ${book.name}');
  }
  final Book book;

  @override
  Widget build(BuildContext context) {
    print('build ${book.name}');
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 150,height: 160,child: Image.network(book.uRL,fit: BoxFit.fitHeight,)),
        //Image.asset('image/ichi.jpg'),  asset測試
        const SizedBox(width: 20,),
        Expanded(//置中好用
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(book.name,style: const TextStyle(fontSize: 20),),
              Text(book.author),
            ],
          ),
        ),
      ],
    );
  }
}

class BookTile2 extends StatelessWidget {
  BookTile2({super.key, required this.movie}) {
    print('create ${movie.name}');
  }
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    print('build ${movie.name}');
    return Card(
      elevation: 4,
      color: const Color.fromARGB(255, 164, 153, 167),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // 圆角卡片
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(child: Image.network(movie.uRL,fit: BoxFit.fill,height: 224,width: 170,)),
          //Text(book.name),
        ],
      ),
    );
  }
}
