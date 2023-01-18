part of home_view;

class _HomeDesktop extends StatelessWidget {
  _HomeDesktop();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    List<Widget> body = [
      SizedBox(
        width: width,
        height: height * 0.8,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              width: width * 0.45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      g.full_name,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: Colors.lightBlue),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: EntranceFader(
                        offset: Offset(-10, 0),
                        delay: Duration(seconds: 1),
                        duration: Duration(milliseconds: 800),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.lightBlue,
                            ),
                            Flexible(
                              child: TyperAnimatedTextKit(
                                isRepeatingAnimation: true,
                                speed: Duration(milliseconds: 50),
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.lightBlue),
                                text: g.nickname,
                              ),
                            ),
                          ],
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: width * 0.42,
                      child: Text(
                        g.subTitle,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.lightBlueAccent),
                      ),
                    ),
                  ),
                  Wrap(
                    // Generate 100 widgets that display their index in the List.
                    children: List.generate(g.socialMediaLinks.length, (index) {
                      // print(g.socialMediaLinks.elementAt(index)["fontAwesomeIcon"]);
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FloatingActionButton(
                          heroTag: null,
                          onPressed: () async {
                            final url = g.socialMediaLinks
                                .elementAt(index)["link"]
                                .toString();
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: FaIcon(g.socialMediaLinks
                              .elementAt(index)["fontAwesomeIcon"] as IconData),
                          backgroundColor: g.socialMediaLinks
                              .elementAt(index)["backgroundColor"] as Color,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              width: width * 0.40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/electronics.gif",
                    // height: 125.0,
                    // width: 125.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Center(
          child: Text(
        "By creating components that are durable, easy to use, and made out of materials that last we are able to help our customers save money and create projects that truly last.",
        style: Theme.of(context)
            .textTheme
            .headline2!
            .copyWith(color: Colors.lightBlue),
      )),
      
    ];

    g.skills.forEach((element) {
      body.add(_whatIdoItem(element, context));
    });

    body.add(MyFooter());
    return ListView(
      // children: body.reversed.toList(),
      children: body,
    );
  }

  _whatIdoItem(element, context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width,
      height: height * 0.6,
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: ProductsGrid(false),
      ),
    );
  }
}
