import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16), // MEMO: 両脇に一律16pxマージン
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // header -start-
                  const SizedBox(height: 44),
                  Row(
                    children: [
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZdNUK1GYGHDF838IEhQwivLYL9UE34Nn97Q&s',
                        width: 100,
                      ),
                      const SizedBox(width: 6),
                      const Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      const Spacer(),
                      const Text(
                        '♡',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(width: 24),
                      const Icon(
                        Icons.chat_bubble_outline,
                      ),
                      const SizedBox(width: 24),
                      const Icon(
                        Icons.border_all,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // header -end-

                  // Stories -start-
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 60, // 外枠の幅
                            height: 60, // 外枠の高さ
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFEC467A),
                                width: 3, // 外枠の幅
                              ),
                              shape: BoxShape.circle, // 円形
                            ),
                            child: ClipOval(
                              child: Image.network(
                                'https://lohas.nicoseiga.jp/thumb/10832546i?1634473071',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Gourmet Kirby',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),

                      Column(
                        children: [
                          Container(
                            width: 60, // 外枠の幅
                            height: 60, // 外枠の高さ
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFEC467A),
                                width: 3, // 外枠の幅
                              ),
                              shape: BoxShape.circle, // 円形
                            ),
                            child: ClipOval(
                              child: Image.network(
                                'https://lohas.nicoseiga.jp/thumb/11019005i?1661092794',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'メタナイト',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),

                      Column(
                        children: [
                          Container(
                            width: 60, // 外枠の幅
                            height: 60, // 外枠の高さ
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFEC467A),
                                width: 3, // 外枠の幅
                              ),
                              shape: BoxShape.circle, // 円形
                            ),
                            child: ClipOval(
                              child: Image.network(
                                'https://www.ndw.jp/ndw/wordpress/wp-content/uploads/2022/09/kirby-dede-main-scaled.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'デデデ大王',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),

                      Column(
                        children: [
                          Container(
                            width: 60, // 外枠の幅
                            height: 60, // 外枠の高さ
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFEC467A),
                                width: 3, // 外枠の幅
                              ),
                              shape: BoxShape.circle, // 円形
                            ),
                            child: ClipOval(
                              child: Image.network(
                                'https://pbs.twimg.com/media/ENmpztCUEAAWCWE.png',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Woods',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),

                      Column(
                        children: [
                          Container(
                            width: 60, // 外枠の幅
                            height: 60, // 外枠の高さ
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFEC467A),
                                width: 3, // 外枠の幅
                              ),
                              shape: BoxShape.circle, // 円形
                            ),
                            child: ClipOval(
                              child: Image.network(
                                'https://lohas.nicoseiga.jp/thumb/11040438i?1664116097',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'ワドルディ',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Stories -end-

                  // Post -start-
                  // PostUserIcon -start-
                  Row(
                    children: [
                      Container(
                        width: 26, // 外枠の幅
                        height: 26, // 外枠の高さ
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle, // 円形にするため
                        ),
                        child: ClipOval(
                          child: Image.network(
                            'https://lohas.nicoseiga.jp/thumb/11019005i?1661092794',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        'メタナイト',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        '...',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // PostUserIcon -end-
                  const SizedBox(height: 12),
                  AspectRatio(
                    aspectRatio: 1.0, // 正方形にする場合のアスペクト比
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaQKjr9yAFJYvafcfr_6tTa5UC36AGZ-qxHg&s',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  const Row(
                    children: [
                      const Text(
                        '♡',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(width: 24),
                      const Icon(
                        Icons.chat_bubble_outline,
                      ),
                      const SizedBox(width: 24),
                      const Icon(
                        Icons.share,
                      ),
                      Spacer(),
                      const Icon(
                        Icons.save,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '13 Likes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    'メタナイト',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    '久しぶりの休日♫   青空の下、お弁当を持って公園ピクニック!!',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  // Post -end-
                  const SizedBox(height: 24),

                  // Post(2) -start-
                  // PostUserIcon -start-
                  Row(
                    children: [
                      Container(
                        width: 26, // 外枠の幅
                        height: 26, // 外枠の高さ
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle, // 円形にするため
                        ),
                        child: ClipOval(
                          child: Image.network(
                            'https://www.ndw.jp/ndw/wordpress/wp-content/uploads/2022/09/kirby-dede-main-scaled.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        'デデデ大王',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        '...',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // PostUserIcon -end-
                  const SizedBox(height: 12),
                  AspectRatio(
                    aspectRatio: 1.0, // 正方形にする場合のアスペクト比
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoumE3m--c67BwpssqjUBODOAK6FDqEoeFdQ&s',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  const Row(
                    children: [
                      const Text(
                        '♡',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(width: 24),
                      const Icon(
                        Icons.chat_bubble_outline,
                      ),
                      const SizedBox(width: 24),
                      const Icon(
                        Icons.share,
                      ),
                      Spacer(),
                      const Icon(
                        Icons.save,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '42 Likes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    'デデデ大王',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    'カービーに全部食べられた。。萎えた。',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  // Post -end-

                ],
              ),
            ),
          ],
          ),
    ),
    );
  }
}