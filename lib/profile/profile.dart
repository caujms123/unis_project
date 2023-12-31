import 'package:flutter/material.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfilePage(),
      theme: ThemeData(
        fontFamily: 'NanumSquareRound',  // 글꼴을 프로젝트에 추가해야 합니다.
      ),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My 프로필",
          style: TextStyle(
            fontFamily: 'NanumSquareRoundEB',  // 해당 폰트를 프로젝트에 추가하고, 이름을 확인하세요
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    // backgroundImage: AssetImage('path/to/your/image.jpg'), // 이미지를 assets에 추가하고 여기에 경로를 지정하세요
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "닉네임: 물만두",
                        style: TextStyle(
                          fontFamily: 'NanumSquareRoundB',  // 해당 폰트를 프로젝트에 추가하고, 이름을 확인하세요
                        ),
                      ),
                      Text(
                        "학과(학부): 소프트웨어학부",
                        style: TextStyle(
                          fontFamily: 'NanumSquareRoundB',  // 해당 폰트를 프로젝트에 추가하고, 이름을 확인하세요
                        ),
                      ),
                      Text(
                        "보유 포인트: 2000",
                        style: TextStyle(
                          fontFamily: 'NanumSquareRoundB',  // 해당 폰트를 프로젝트에 추가하고, 이름을 확인하세요
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: TextField(
                maxLength: 15,
                decoration: InputDecoration(
                  labelText: '자기소개',
                ),
              ),
            ),
            // ... 이전 코드 생략

            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "질문",
                            style: TextStyle(
                              fontFamily: 'NanumSquareRoundEB',
                              fontSize: width * 0.05,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // "질문" 숫자를 클릭했을 때의 행동을 여기에 구현
                            },
                            child: Text(
                              "0", // 이 값을 실제 질문의 수로 대체하세요
                              style: TextStyle(
                                fontFamily: 'NanumSquareRoundEB',
                                fontSize: width * 0.05,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "답변",
                            style: TextStyle(
                              fontFamily: 'NanumSquareRoundEB',
                              fontSize: width * 0.05,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // "답변" 숫자를 클릭했을 때의 행동을 여기에 구현
                            },
                            child: Text(
                              "0", // 이 값을 실제 답변의 수로 대체하세요
                              style: TextStyle(
                                fontFamily: 'NanumSquareRoundEB',
                                fontSize: width * 0.05,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "가입 스터디",
                            style: TextStyle(
                              fontFamily: 'NanumSquareRoundEB',
                              fontSize: width * 0.05,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // "가입 스터디" 숫자를 클릭했을 때의 행동을 여기에 구현
                            },
                            child: Text(
                              "0", // 이 값을 실제 가입 스터디의 수로 대체하세요
                              style: TextStyle(
                                fontFamily: 'NanumSquareRoundEB',
                                fontSize: width * 0.05,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded) {
                      // 이 부분에서 상태를 업데이트하여 패널을 확장하거나 축소하세요
                    },
                    children: [
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text('수강 중인 과목'),
                          );
                        },
                        body: ListTile(
                          title: Text('과목 1'), // 이 부분을 실제 과목 리스트로 대체하세요
                        ),
                        isExpanded: false, // 이 값을 패널의 현재 상태에 따라 업데이트하세요
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text('수강한 과목'),
                          );
                        },
                        body: ListTile(
                          title: Text('과목 A'), // 이 부분을 실제 과목 리스트로 대체하세요
                        ),
                        isExpanded: false, // 이 값을 패널의 현재 상태에 따라 업데이트하세요
                      ),
                    ],
                  ),
                ],
              ),
            ),
// ... 이어지는 코드 생략
          ],
        ),
      ),
    );
  }
}
