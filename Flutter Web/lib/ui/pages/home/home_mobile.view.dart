part of home_view;

class _HomeMobile extends StatelessWidget {
  _HomeMobile();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    List<Widget> body = [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              g.full_name,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: Colors.lightBlue),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: EntranceFader(
                offset: Offset(-10, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.lightBlue,
                    ),
                    TyperAnimatedTextKit(
                      isRepeatingAnimation: true,
                      speed: Duration(milliseconds: 50),
                      textStyle: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Colors.lightBlue),
                      text: g.nickname,
                    ),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: width,
              child: Text(
                g.subTitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.lightBlueAccent),
                textAlign: TextAlign.center,
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
                    final url =
                        g.socialMediaLinks.elementAt(index)["link"].toString();
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

          // SizedBox(height: 20),
          Image.asset(
            "assets/images/electronics.gif",
            height: width,
            width: width,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 00),
        ],
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
        padding: const EdgeInsets.only(top: 10.0),
        child: ProductsGridMobile(false),
      ),
    );
  }
}
