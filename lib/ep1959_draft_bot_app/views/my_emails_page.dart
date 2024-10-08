import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyEmailsPage extends StatefulWidget {
  const MyEmailsPage({super.key});

  @override
  State<MyEmailsPage> createState() => _MyEmailsPageState();
}

class _MyEmailsPageState extends State<MyEmailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "My Email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Gap(24),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ),
              Gap(24),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color.fromRGBO(114, 102, 255, 1),
                  ),
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cached,
                      size: 28,
                      color: Color.fromRGBO(114, 102, 255, 1),
                    ),
                    Gap(8),
                    Text(
                      "Rewrite",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromRGBO(114, 102, 255, 1),
                      ),
                    )
                  ],
                ),
              ),
              Gap(32),
              SizedBox(
                height: 54,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color.fromRGBO(114, 102, 255, 1),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Discard",
                            style: TextStyle(
                              color: Color.fromRGBO(114, 102, 255, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap(16),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(114, 102, 255, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "Select",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
