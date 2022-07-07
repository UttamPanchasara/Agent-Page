import 'package:agent_web/common/colors.dart';
import 'package:flutter/material.dart';

class Agent extends StatefulWidget {
  const Agent({Key? key}) : super(key: key);

  @override
  State<Agent> createState() => _AgentState();
}

class _AgentState extends State<Agent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            pageOne(),
            const SizedBox(height: 8.0),
            pageTwo(),
            const SizedBox(height: 8.0),
            pageNotification(),
            const SizedBox(height: 8.0),
            pageThree(),
            const SizedBox(height: 8.0),
            pageAboutUs(),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }

  bool isWebsiteView() {
    return (MediaQuery.of(context).size.width > 1200);
  }

  Widget pageOne() {
    return SizedBox(
      height: isWebsiteView() ? MediaQuery.of(context).size.height - 50 : null,
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: AppColors.chatColors.randomItem(),
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: isWebsiteView()
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pageOneList(),
                  )
                : Column(children: pageOneList()),
          ),
        ),
      ),
    );
  }

  double? imageBoxHeight() {
    return isWebsiteView() ? 700 : 500;
  }

  List<Widget> pageOneList() {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: SizedBox(
          height: imageBoxHeight(),
          child: Image.asset('assets/screens/s1.png'),
        ),
      ),
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const [
            FittedBox(
              child: Text(
                '"Don\'t be shy,\nAsk help on Agent"',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 48,
                  letterSpacing: 1,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            FittedBox(
              child: Text(
                'Get help by people around you,\nor help them.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 48,
                  color: AppColors.primaryColor,
                  letterSpacing: 1,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  Widget pageTwo() {
    return SizedBox(
      height: isWebsiteView() ? MediaQuery.of(context).size.height - 50 : null,
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: AppColors.chatColors.randomItem(),
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: isWebsiteView()
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pageTwoList())
                : Column(children: pageTwoList()),
          ),
        ),
      ),
    );
  }

  List<Widget> pageTwoList() {
    return [
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: const [
            FittedBox(
              child: Text(
                'Create Post,\nwith the topics related to your post',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 48,
                  letterSpacing: 1,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            FittedBox(
              child: Text(
                'Let Agent notify people around you who are interested in the topics you selected',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: AppColors.textColorGrey,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: SizedBox(
          height: imageBoxHeight(),
          child: Image.asset('assets/screens/s2.png'),
        ),
      ),
    ];
  }

  Widget pageThree() {
    return SizedBox(
      height: isWebsiteView() ? MediaQuery.of(context).size.height - 50 : null,
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: AppColors.chatColors.randomItem(),
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: isWebsiteView()
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pageThreeList(),
                  )
                : Column(children: pageThreeList()),
          ),
        ),
      ),
    );
  }

  List<Widget> pageThreeList() {
    return [
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: const [
            FittedBox(
              child: Text(
                'Get Info,\nwhenever someone tries to help.',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 48,
                  letterSpacing: 1,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            FittedBox(
              child: Text(
                'Agent will notify you and share the person info who wanted to helps you.',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: AppColors.textColorGrey,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: SizedBox(
          height: imageBoxHeight(),
          child: Image.asset('assets/screens/s3.png'),
        ),
      ),
    ];
  }

  Widget pageNotification() {
    return SizedBox(
      height: isWebsiteView() ? MediaQuery.of(context).size.height * 0.7 : null,
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: AppColors.chatColors.randomItem(),
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: isWebsiteView()
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: notificationList(),
                  )
                : Column(children: notificationList()),
          ),
        ),
      ),
    );
  }

  List<Widget> notificationList() {
    return [
      Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * (isWebsiteView() ? 0.25 : 0.5),
                child: ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    'assets/screens/n2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              SizedBox(
                width: MediaQuery.of(context).size.width * (isWebsiteView() ? 0.25 : 0.5),
                child: ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    'assets/screens/n1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            FittedBox(
              child: Text(
                'Get notified,',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 48,
                  letterSpacing: 1,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            FittedBox(
              child: Text(
                'Agent will notify you whenever someone wants to help you,\nor creates post with the topics you\'re interested in.',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: AppColors.textColorGrey,
                  letterSpacing: 1,
                ),
              ),
            ),
          ],
        ),
      )
    ];
  }

  Widget pageAboutUs() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: AppColors.chatColors.randomItem(),
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FittedBox(
                  child: Text(
                    'Connect with us,',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      letterSpacing: 1,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                FittedBox(
                  child: Text(
                    '@ www.vipl.io',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: AppColors.textColorGrey,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                Center(
                  child: FittedBox(child: Text('©2021  Vishwakarma Infotech Private Limited')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
