import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class LanguageLearningHomePage extends StatefulWidget {
  const LanguageLearningHomePage({super.key});

  @override
  State<LanguageLearningHomePage> createState() => _LanguageLearningHomePageState();
}

class _LanguageLearningHomePageState extends State<LanguageLearningHomePage> {
  Future<List<String>> getTabs() async {
    await Future.delayed(Duration(milliseconds: 500));
    return [
      "Beginner",
      "Intermediate",
      "Advanced",
      "Expert",
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            16,
            16,
            16,
            0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: EdgeInsets.all(2),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                        ),
                        Gap(6),
                        Text(
                          "12",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Gap(6),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      HugeIcons.strokeRoundedNotification03,
                    ),
                  ),
                ],
              ),
              Gap(16),
              Text(
                "English for business",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Gap(16),
              Container(
                height: 160,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                        Gap(12),
                        Text("Today's Goal"),
                        Spacer(),
                        Icon(
                          HugeIcons.strokeRoundedEdit01,
                        ),
                      ],
                    ),
                    Text(
                      "6/8 Tasks",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    Container(
                      height: 28,
                      child: Row(
                        children: List.generate(25, (index) {
                          return Container(
                            width: 6,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: index < 20 ? Colors.green[400]! : Colors.green[100]!,
                              borderRadius: BorderRadius.circular(6),
                            ),
                          );
                        }),
                      ),
                    )
                  ],
                ),
              ),
              Gap(16),
              Text(
                "Course Progress",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Gap(16),
              Container(
                  height: 160,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total"),
                          Text(
                            "12/20",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Gap(18),
                      Container(
                        height: 12,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Container(
                              color: Colors.teal,
                            )),
                            Gap(4),
                            Expanded(
                                child: Container(
                              color: Colors.green,
                            )),
                            Gap(4),
                            Expanded(
                                child: Container(
                              color: Colors.deepOrange,
                            )),
                            Gap(4),
                            Expanded(
                                child: Container(
                              color: Colors.yellow,
                            )),
                          ],
                        ),
                      ),
                      Gap(24),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 6,
                          ),
                          Gap(4),
                          Text("Beginner"),
                          Gap(4),
                          Text(
                            "(45%)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(24),
                          CircleAvatar(
                            radius: 6,
                          ),
                          Gap(4),
                          Text("Intermediate"),
                          Gap(4),
                          Text(
                            "(20%)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Gap(12),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 6,
                          ),
                          Gap(4),
                          Text("Advanced"),
                          Gap(4),
                          Text(
                            "(26%)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(24),
                          CircleAvatar(
                            radius: 6,
                          ),
                          Gap(4),
                          Text("Expert"),
                          Gap(4),
                          Text(
                            "(15%)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
              Gap(16),
              Container(
                height: 42,
                child: FutureBuilder<List<String>>(
                  future: getTabs(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 5,
                            ),
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              border: Border.all(),
                              color: index == 0 ? Colors.teal : Colors.white,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Center(
                              child: Text(
                                snapshot.data?[index] ?? "",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: index == 0 ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  },
                ),
              ),
              Gap(16),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(HugeIcons.strokeRoundedAudioBook02),
                                    Text("Introduction"),
                                    Spacer(),
                                    Text("1/2"),
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.grey[200],
                                      child: Icon(
                                        Icons.keyboard_arrow_up,
                                      ),
                                    )


                                  ],
                                ),
                              )

                            ],
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              HugeIcons.strokeRoundedBook01,
                            ),
                            Gap(8),
                            Text("Basic Sentence"),
                            Spacer(),
                            Text("0/6"),
                            Gap(8),
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.grey[200],
                              child: Icon(
                                Icons.keyboard_arrow_down,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              HugeIcons.strokeRoundedHome13,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              HugeIcons.strokeRoundedBook02,
            ),
            label: "Course",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              HugeIcons.strokeRoundedMessage02,
            ),
            label: "Chatbot",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              HugeIcons.strokeRoundedUser,
            ),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
