import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Verse of the Day",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.share))
            ],
          ),
          const Text(
            '''“How great you are,Sovereign Lord! There is no one like you,and there is no God but you,as we have heard with our own.”''',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          const Text(
            "2 Samuel 7:22 NIV",
            style: TextStyle(
              color: Color(0xff8E8E93),
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: 'Roboto',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(
                Icons.menu,
                color: primaryColor,
              ),
              // const SizedBox(
              //   width: 5,
              // ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Compare versions".toUpperCase(),
                    style: const TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class MyNoteCard extends StatelessWidget {
  const MyNoteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  'My Notes',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              decoration: BoxDecoration(
                  color: const Color(0xffF2F2F7),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xffE5E5EA),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Character Focus",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Raleway'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                    style: TextStyle(
                        color: lightGray,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Raleway'),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.add_box_outlined,
                      color: primaryColor,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Add Notes",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            fontFamily: 'Roboto',
                          ),
                        ))
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      "Notes",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        fontFamily: 'Raleway',
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
