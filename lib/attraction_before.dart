import 'package:flutter/material.dart';

class Attraction extends StatefulWidget {
  const Attraction({Key? key}) : super(key: key);

  @override
  State<Attraction> createState() => _AttractionState();
}

class _AttractionState extends State<Attraction> {
  bool like = false;
  int count = 40;

  TextStyle heading1 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  TextStyle heading2 = const TextStyle(
    fontSize: 15,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('asset/images/webp_original.jpg'),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Eiffel Tower',
                          style: heading1,
                        ),
                        Text(
                          'Paris, France',
                          style: heading2,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: (){
                             setState(() {
                               like = !like;
                               if(like){
                                count++;
                               }
                               else{
                                count--;
                               }
                             });
                          },
                          icon: Icon(like ? Icons.star : Icons.star_border_outlined),
                        ),
                        Text('$count'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.call),
                        ),
                        Text('CALL'),
                      ],
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.route),
                        ),
                        Text('ROUTE'),
                      ],
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.share),
                        ),
                        Text('SHARE'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const Text(
                  'The tower is 330 metres (1,083 ft) tall,[5] about the same height as an 81-storey building, and the tallest structure in Paris. Its base is square, measuring 125 metres (410 ft) on each side. During its construction, the Eiffel Tower surpassed the Washington Monument to become the tallest man-made structure in the world, a title it held for 41 years until the Chrysler Building in New York City was finished in 1930.',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
