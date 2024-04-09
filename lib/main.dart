import 'package:flutter/material.dart';

import 'book_tile.dart';

class Book {
  final String name;
  final String author;
  final String quote;
  final String uRL;
  final String uRL2;
  const Book(
      {required this.name,
      required this.author,
      required this.quote,
      required this.uRL,
      required this.uRL2});
}

class Movie {
  final String name;
  final String author;
  final String quote;
  final String uRL;
  const Movie(
      {required this.name,
      required this.author,
      required this.quote,
      required this.uRL});
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final List<Book> books = const [
    Book(
        name: '工藤 新一',
        author:
            '身材修长，外表英俊，是一个非常聪明和机智的人。在一次调查案件的过程中，他意外遭遇了一种名为“APTX4869”的神秘药物，使他变成了一個幼兒。',
        quote: '真相永遠只有一個',
        uRL:
            'https://th.bing.com/th/id/OIP.Orm-hnG2Bn1ltUi2vAvXLQAAAA?w=177&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        uRL2: 'image/ichi.jpg'),
    Book(
        name: '江戶川 柯南',
        author:
            '柯南是一个智慧过人的年轻侦探，具有与工藤新一相似的出色观察力和推理能力。尽管被迫变成了孩童，但柯南仍然展现出超越年龄的成熟和聪明才智。',
        quote: '我叫偵探是個柯南',
        uRL:
            'https://th.bing.com/th/id/OIP.UCcGYFvV_av6pzChhr7UCAHaEK?w=329&h=185&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        uRL2: 'image/konan.jpg'),
    Book(
        name: '灰原 哀',
        author:
            '原本是黑衣组织的一员，化名为宫野志保。但在一次任务中，她服用了APTX4869药物，导致她变成了一个幼小的孩童。她选择了隐藏自己的真实身份，以小学生的身份重新开始生活。',
        quote: '永不言棄，就是我的魔法',
        uRL:
            'https://th.bing.com/th/id/OIP.OtQK0CYKWkgROyCuYbUGpgHaEv?w=310&h=199&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        uRL2: 'image/hui.jpg'),
    Book(
        name: '毛利 蘭',
        author:
            '她是工藤新一（柯南的原身）的青梅竹马和好友，也是柯南在侦探小组中的成员之一。蘭是一个温柔善良、聪明正直的女孩，具有坚强的意志和勇敢的精神。',
        quote: '我沒事的小蘭',
        uRL:
            'https://th.bing.com/th/id/OIP.klZ1tJvtkD1luudvR0TdUAHaHa?w=187&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        uRL2: 'image/mau.jpg'),
    Book(
        name: '毛利 小五郎',
        author: '毛利蘭的爸爸，我們主人公工藤新一的岳父大人，脖子上面有好多針頭的名偵探。',
        quote: '爸爸@@你的脖子',
        uRL:
            'https://th.bing.com/th/id/OIP.XHXYLmxNW026W8k1WnGtfQHaHs?w=161&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        uRL2: 'image/mm.jpg'),
    Book(
        name: '降谷 零',
        author: '是一個為底在黑暗組織眾多探員中的一位，白色的頭髮以及黝黑的皮膚造就他率起的外表，是柯南的好幫手',
        quote: '黑衣組織成員都是臥底...',
        uRL:
            'https://th.bing.com/th/id/OIP.DfRgyMMF-yDtMuAg-SXBaQHaHa?w=186&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        uRL2: 'image/zero.jpg'),
    Book(
        name: '服部 平次',
        author: '是一位大阪黑雞，他老爸是大阪府警的頭頭，所以仗著這點非常的囂張，有著一台打檔摩托車。',
        quote: '永不言棄，就是我的魔法',
        uRL:
            'https://th.bing.com/th/id/OIP.DURRx95Evs1CgKisvJwcEQHaEK?w=305&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        uRL2: 'image/hachi.jpg'),
    Book(
        name: '白馬 探',
        author: '出現在怪盜1412當中的偵探以前生活在英國，現在跟黑羽快斗一同就讀日本的高中。',
        quote: '我是新世界的神',
        uRL:
            'https://th.bing.com/th/id/OIP.B-z604Jpcb12VyKiaAkGewHaEK?w=273&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        uRL2: 'image/horse.jpg'),
  ];

  final List<Movie> movies = const [
    Movie(
        name: '絕海的偵探',
        author: 'J.M.巴里',
        quote:
            '這是一部在2013年上映的電影，本劇中以神盾艦為舞台，柯南等人捲入了滲透該艦的事件，並與海上自衛隊人員一同展開了一系列冒險故事。',
        uRL:
            'https://th.bing.com/th/id/OIP.154HfybVdzPmQKtGmF-3OwHaKY?w=186&h=261&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
    Movie(
        name: '黑鐵的魚影',
        author: '安托萬·德·聖-埃克蘇佩',
        quote:
            '本作為柯南最新的電影版，本人於去年的首映有去看過，主要是在敘述黑衣組織使用AI技術找到小哀的下落，並在水下的潛水挺展開一系列對決。',
        uRL:
            'https://th.bing.com/th/id/OIP.tCnN3HcasdQDY24xzbpzrQHaKe?w=186&h=263&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
    Movie(
        name: '銀翼的魔術師',
        author: 'J.R.R.托爾金',
        quote: '這集是圍繞在怪盜基德身邊展開的故事，在飛機上殺人事件發生了，在與世間隔絕的飛行機中，柯南與基德展開世紀大對決。',
        uRL:
            'https://th.bing.com/th/id/OIP.wC6WiNvdnr5lHEXsK4QWswHaKY?w=186&h=261&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
    Movie(
        name: '異次元的狙擊手',
        author: 'J.K.羅琳',
        quote: '這是2014年的電影，是有關於美國海豹部隊隊員報酬的故事，故事圍繞在海豹部隊狙擊手以及柯南得小幫手美國FBI狙擊手之間展開。',
        uRL:
            'https://th.bing.com/th/id/OIP.LgpBviihfDZhs7lPifFfyQAAAA?w=186&h=286&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
    Movie(
        name: '零的執行人',
        author: '曹雪芹',
        quote:
            '這是在2018年的電影，這年我沒去電影院看，事件發生在東京高峰會前一周，有關於IOT恐攻，以及用足球踢彗星的神奇故事，非常的值得省思。',
        uRL:
            'https://th.bing.com/th/id/OIP.7me_jB01hw1plwg-nBOBfQHaKS?w=186&h=258&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
    Movie(
        name: '迷宮的十字路',
        author: '羅貫中',
        quote:
            '本集發表於我出生那年，我有去電影院看，主要是在敘述大阪黑雞與和葉的成年往事，順便帶出黑雞的青梅竹馬戀人遠山和葉就是他的初戀情人的有趣往事,這是我最喜歡的電影。',
        uRL:
            'https://th.bing.com/th/id/OIP.-RCPTC5pQ6WLmffS9RQVbAHaKa?w=186&h=262&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
    Movie(
        name: '偵探們的鎮魂歌',
        author: '吳承恩',
        quote:
            '這集是在說一個發生車禍的人想找出當年出事的原因找了一票的偵探，但因為得不到喜歡的答案，所以把很多偵探給殺了的故事，還好我們的死神出馬終結了這連串殺人事件。',
        uRL:
            'https://th.bing.com/th/id/OIP.xB127A6vq6idCqMStlej2AHaKY?w=186&h=261&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
    Movie(
        name: '水平線上的陰謀',
        author: '施耐庵',
        quote:
            '這是一個因為爸爸被陷害而立志復仇把船給炸了的暖心故事，故事圍繞在一艘大郵輪上，船上接連發生的兇殺案使得人心惶惶，沒想到最後船竟然還沉了。',
        uRL:
            'https://th.bing.com/th/id/OIP.AjWr31AW-kdFySXoPotd-QHaKc?w=186&h=262&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 200, 178, 204),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 181, 161, 185),
          toolbarHeight: 35,
          title: const Center(child: Text('名探偵コナン')),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
              padding: const EdgeInsets.all(20),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetail(book: books[index]),
                      ),
                    );
                  },
                  child: BookTile(book: books[index]),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: books.length,
            ),
            GridView.builder(
              itemCount: movies.length,
              padding: const EdgeInsets.all(5),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 10,
                childAspectRatio: 16 / 19,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetail2(movie: movies[index]),
                      ),
                    );
                  },
                  child: BookTile2(movie: movies[index]),
                );
              },
            ),
          ],
        ),
        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(text: 'Characters'),
            Tab(text: 'Movies'),
          ],
        ),
      ),
    );
  }
}

class BookDetail extends StatelessWidget {
  const BookDetail({super.key, required this.book});
  final Book book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 200, 178, 204),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 193, 172, 197),
        title: Text(book.name),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(book.uRL2),
            Text(
              book.quote,
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookDetail2 extends StatelessWidget {
  const BookDetail2({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 200, 178, 204),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 177, 159, 180),
        title: Text(movie.name),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                width: 350,
                child: Image.network(
                  movie.uRL,
                  fit: BoxFit.fill,
                )),
            Text(
              movie.quote,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
