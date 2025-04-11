import 'package:flutter/material.dart';
import 'package:wealth_wizard/UI/welcome_packs/personalinfo1.dart';
import 'package:wealth_wizard/constants/app_images.dart';
import 'package:wealth_wizard/utills/imageanimations.dart';
import 'package:wealth_wizard/utills/styles.dart';

class RegistrationTokenPage extends StatefulWidget {
  const RegistrationTokenPage({Key? key}) : super(key: key);
  @override
  State<RegistrationTokenPage> createState() => _RegistrationTokenPageState();
}

class _RegistrationTokenPageState extends State<RegistrationTokenPage> {
  List<String> _otp = [];
  String bgMain1 = AppImages.leafBG;
  String leafIcon = AppImages.leaficon;

  void _onKeyPressed(String value) {
    setState(() {
      if (value == 'OK') {
        if (_otp.length == 6) {
          // Handle OTP submission here
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => personalinfo1Page()));
        }
      } else if (value == 'X') {
        if (_otp.isNotEmpty) {
          _otp.removeLast();
        }
      } else {
        if (_otp.length < 6) {
          _otp.add(value);
        }
      }
    });
  }

  Widget _buildOtpBox(String? digit) {
    return Container(
      margin: const EdgeInsets.all(6),
      width: 45,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.green.shade800,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        digit ?? '',
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  Widget _buildKey(String label) {
    return GestureDetector(
      onTap: () => _onKeyPressed(label),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white),
        ),
        alignment: Alignment.center,
        child: label == 'X'
            ? const Icon(Icons.backspace, color: Colors.white)
            : Text(
                label,
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
      ),
    );
  }

  Widget _buildKeypad() {
    const keys = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9'],
      ['X', '0', 'OK'],
    ];
    return Column(
      children: keys
          .map(
            (row) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: row.map(_buildKey).toList(),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              top: 0,
              right: -size.width * 0.2,
              duration: Duration(seconds: 1),
              child: WidgetAnimator(
                component: Container(
                  height: size.height * 0.3,
                  width: size.width,
                  child: imgAnimation2(
                    url: bgMain1,
                    time: Duration(seconds: 2),
                    beginx: 0.10,
                    endx: 0,
                    beginy: 0.1,
                    endy: 0,
                    width: size.width,
                    height: size.height,
                    transition: PositionedTransition,
                  ),
                ),
                transition: Transform,
                animPattern: Curves.easeIn,
                pixle: Colors.transparent,
                time: Duration(seconds: 1),
                animType: "nothing",
                xAxis: 0,
                yAxis: 0,
              ),
            ),

            // Background wave image or animation placeholder can go here
            SingleChildScrollView(
              child: Column(
                children: [
                  // Back button & logo
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const Spacer(),
                    ],
                  ),
                  // Top text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                          'Phone Verification',
                          style: dark22BoldStyle,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Your wealth wizard account is being created.',
                          style: dark14Style,
                        ),
                        SizedBox(height: 6),
                        Text.rich(
                          TextSpan(
                            text:
                                'Enter the verification code we just sent to your number ',
                            children: [
                              TextSpan(
                                text: '08012345678',
                                style: TextStyle(
                                    color: wizardGreen,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // OTP container
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 10,
                    ),
                    height: size.height * 0.8,
                    decoration: BoxDecoration(
                      color: wizardGreen,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'OTP will expire in\n4:59s',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        // OTP boxes
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            6,
                            (index) => _buildOtpBox(
                              index < _otp.length ? _otp[index] : null,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        // Keypad
                        _buildKeypad(),
                        const SizedBox(height: 20),
                        const Text(
                          'Request new OTP',
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
