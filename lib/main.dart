import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> calls = [
    {
      'name': 'Akash',
      'number': '+91 98345 638783',
      'image': 'assets/images/img.png',
      'time': '02:45 PM',
      'status': Icons.phone_callback_rounded,
      'statusColor': Color(0xff93CB80),
      'state': true,
      'stateColour': Color(0xff93CB80),
    },
    {
      'name': 'Sankar',
      'number': '+91 80463 76786',
      'image': 'assets/images/img_1.png',
      'time': '02:45 PM',
      'status': Icons.phone_callback_rounded,
      'statusColor': Color(0xff93CB80),
      'state': true,
      'stateColour': Color(0xff93CB80),
    },
    {
      'name': 'John',
      'number': '+91 73684 89078',
      'image': 'assets/images/img_2.png',
      'time': '02:45 PM',
      'status': Icons.phone_callback_rounded,
      'statusColor': Color(0xff93CB80),
      'state': true,
      'stateColour': Color(0xff93CB80),
    },
    {
      'name': 'Kamatchi',
      'number': '+91 90537 43635',
      'image': 'assets/images/img_3.png',
      'time': '02:40 PM',
      'status': Icons.phone_callback_rounded,
      'statusColor': Color(0xff93CB80),
      'state': true,
      'stateColour': Color(0xffFBC863),
    },
    {
      'name': 'Robert',
      'number': '+91 80547 53625',
      'image': 'assets/images/img_4.png',
      'time': '01:27 PM',
      'status': Icons.phone_forwarded_rounded,
      'statusColor': Color(0xffE85461),
      'state': true,
      'stateColour': Color(0xff93CB80),
    },
    {
      'name': 'Niyas',
      'number': '+91 90436 54334',
      'image': 'assets/images/img_5.png',
      'time': '01:06 PM',
      'status': Icons.phone_callback_rounded,
      'statusColor': Color(0xff93CB80),
      'state': true,
      'stateColour': Color(0xff93CB80),
    },
    {
      'name': 'Alex',
      'number': '+91 91767 65774',
      'image': 'assets/images/img_6.png',
      'time': '12:45 PM',
      'status': Icons.phone_callback_rounded,
      'statusColor': Color(0xff93CB80),
      'state': true,
      'stateColour': Color(0xff93CB80),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,
        color: Color(0xff484554),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Calls',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff484554)),
                    ),
                    Icon(Icons.search_outlined,
                        size: 32.17, color: Color(0xff484554))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    width: 48,
                    height: 19,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'Today',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: calls.length,
              itemBuilder: (context, index) {
                final call = calls[index];
                return ListTile(
                  leading: Stack(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(call['image']),
                    ),
                    if (call['state'])
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: call['stateColour'],
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                  ]),
                  title: Text(
                    call['name'],
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff484554)),
                  ),
                  subtitle: Text(
                    call['number'],
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9B98A4)),
                  ),
                  trailing: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          call['status'],
                          color: call['statusColor'],
                          size: 16,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          call['time'],
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff484554)),
                        ),
                      ]),
                );
              },
            ),
          ),

        ],
      ),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width, 100),
            painter: BottomNavPainter(),
          ),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Transform.translate(
                  offset: Offset(0, 10),
                  child: Icon(Icons.chat_bubble_outline,
                    color: Color(0xff484554),),
                ),
                Transform.translate(
                  offset: Offset(0, -20),
                  child: Icon(Icons.home_outlined,
                    color: Color(0xff484554),),
                ),
                Transform.translate(
                  offset: Offset(0, 10),
                  child: Icon(Icons.call_outlined,
                  color: Color(0xff484554),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child:  CustomDialPadIcon(),
        backgroundColor: Color(0xffE7E6EE),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class BottomNavPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xffE7E6EE)!
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, size.height) // Start at the bottom left corner
      ..quadraticBezierTo(
        size.width * 0.20, 0, // Control point (left part of arch)
        size.width * 0.5, 0, // Peak of the arch in the center
      )
      ..quadraticBezierTo(
        size.width * 0.80, 0, // Control point (right part of arch)
        size.width, size.height, // End at the bottom right corner
      )
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);

    // Draw the clock needle-like shape in the middle
    final needlePath = Path()
      ..moveTo(size.width * 0.5 - 20, size.height) // Start left of center
      ..lineTo(size.width * 0.5, size.height - 20) // Draw to the peak
      ..lineTo(size.width * 0.5 + 20, size.height) // Draw back down to right of center
      ..close();

    canvas.drawPath(needlePath, Paint()..color = Color(0xff484554)!);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class CustomDialPadIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildColoredDot(Color(0xffBDBABA)),
            SizedBox(width: 4),
            buildColoredDot(Color(0xff9F9E9E)),
            SizedBox(width: 4),
            buildColoredDot(Color(0xff777777)),
          ],
        ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildColoredDot(Color(0xff9F9E9E)),
            SizedBox(width: 4),
            buildColoredDot(Color(0xff777777)),
            SizedBox(width: 4),
            buildColoredDot(Color(0xff505050)),
          ],
        ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildColoredDot(Color(0xff777777)),
            SizedBox(width: 4),
            buildColoredDot(Color(0xff505050)),
            SizedBox(width: 4),
            buildColoredDot(Color(0xff3A3A3A)),
          ],
        ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildColoredDot(Color(0xff3A3A3A)),
          ],
        ),
      ],
    );
  }

  Widget buildColoredDot(Color color) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}