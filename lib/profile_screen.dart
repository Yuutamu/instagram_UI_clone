import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/main.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  
  final List<Map<String, String>> stories = [
  {
    'StoryImageUrl': 'https://pics.prcm.jp/yasasanowake/71057852/jpeg/71057852_220x220.jpeg',
    'label': 'Healthy',
  },
  {
    'StoryImageUrl': 'https://pics.prcm.jp/yasasanowake/71057852/jpeg/71057852_220x220.jpeg',
    'label': 'Meat',
  },
  {
    'StoryImageUrl': 'https://pics.prcm.jp/yasasanowake/71057852/jpeg/71057852_220x220.jpeg',
    'label': 'Fish',
  },
  {
    'StoryImageUrl': 'https://pics.prcm.jp/yasasanowake/71057852/jpeg/71057852_220x220.jpeg',
    'label': 'Vegetables',
  },
];

  // MEMO: MyFeedScreen の Post画像URL
  final images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz8J48hWJRuRjS-sUaXAXCQZrwzm5oTYzXpA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKYvHzMHPTjlO5TIFfoXMPSMCixRxz1xlKjg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaQKjr9yAFJYvafcfr_6tTa5UC36AGZ-qxHg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQArc5ryuHFl-bProX1y3qz5_nPMvC-XOZz-g&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF0hV-k8S4HGjalq4kJl2qcbGhERc9Z98qxg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfdT780ESR34T8tjRYyz1g0Tt8ZKfAP7u6Iw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSghHTHaC67cm8CrfvbtfiNByhu-ma_FHR7hg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsChTdVw1ZhzMkR6c_EYtWkwqm02SSHJVFlA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJzpTvo90y1VuCIicw2BR1VQlfiObmPIl3Gg&s',
  ];

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
                  // Header -start-
                  SizedBox(height: 44),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Gourmet Kirby',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 12),
                      Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      Spacer(),
                      Icon(
                        Icons.border_all,
                      ),
                      SizedBox(width: 24),
                      Icon(
                        Icons.menu,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Header -end-

                  // ProfileIcon & Number of xxx -start-
                  Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://lohas.nicoseiga.jp/thumb/10832546i?1634473071',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Spacer(),
                  
                      const Column(
                        children: [
                          Text(
                            '6,892',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text('Posts'),
                        ],
                      ),
                      const SizedBox(width: 24),
                  
                      const Column(
                        children: [
                          Text(
                            '37.4K',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text('Followers'),
                        ],
                      ),
                      const SizedBox(width: 24),
                  
                      const Column(
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text('Following'),
                        ],
                      ),
                      const SizedBox(width: 24),
                  
                    ],
                  ),
                  const SizedBox(height: 8),
                  // ProfileIcon & Number of xxx -end-

                  // Texts -start-
                  const Text(
                    'Gourmet Kirby',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  
                  const Text(
                    'Food & Cooking',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6E6E6E), // カラーコードを指定
                    ),
                  ),

                  const Text(
                    '🍳Love eating',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),

                  const Text(
                    '🍋I want to inhale all food in the world',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),

                  const Text(
                    'Tokyo, Japan',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF004C8B), // カラーコードを指定
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Texts -end-

                  // Stories -start-
                  // MEMO：List.generate(処理を行う数, 処理)でMap のようなことを行っている。
                  Row(
                    children: List.generate(stories.length, (index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: InstagramStoryItem(
                          StoryImageUrl: stories[index]['StoryImageUrl']!,
                          label: stories[index]['label']!,
                        ),
                      );
                    }),

                  ),
                  const SizedBox(height: 24),
                  // Stories -end-

                  // Icons -start- 
                  const Row(
                    children: [
                      Expanded(
                        child: Icon(
                        Icons.grid_on,
                        color: Color(0xFF000000),
                        ),
                      ),
                      Expanded(
                        child: Icon(
                        Icons.video_call,
                        color: Color(0xFFC4C4C4),
                        ),
                      ),
                      Expanded(
                        child: Icon(
                        Icons.person_outline,
                        color: Color(0xFFC4C4C4),
                        ),
                      ),
                    ],
                  ),
                  // Icons -end- 
                ],
              ),
            ),

            // GridView -start-
            GridView.count(
              shrinkWrap:  true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: images.map((imageURL) {
                return InstagramPostItem(imageUrl: imageURL);
              }).toList(),
           ),
            // GridView -end-
            
          ],
          
        ),
      ),
    );
  }
}