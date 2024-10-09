import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/colors/constant_space.dart';
import 'comingsoon_widget.dart';
import 'everyoneswatching_widget.dart';

class ScreenNewAndHotPage extends StatelessWidget {
  const ScreenNewAndHotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              title: Text(
                "Hot & New",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                ),
                kwidth10,
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.white,
                ),
              ],
              bottom: const TabBar(
                tabs: [
                  Tab(text: "🍿 Coming Soon"),
                  Tab(
                    text: "👀 Everyone's Watching",
                  ),
                  // Text("🍿 Coming Soon",style: TextStyle(fontSize: 13 ),),
                  // Text("👀 Everyone's Watching",style: TextStyle(fontSize: 13 ),),
                ],
                isScrollable: true,
                unselectedLabelColor: Colors.white,
                labelColor: Colors.black,
                // indicatorPadding: EdgeInsets.all(5),
                indicatorWeight: 0.5,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
          ),
          body: const TabBarView(children: [
            BuildComingSoon(),
            BuildEveryonesWatching()
            // BuildEveryonesWatching(),
          ])),
    );
  }
}

class BuildComingSoon extends StatelessWidget {
  const BuildComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ComingSoonWidget(),
      itemCount: 10,);
   
  }
}

class BuildEveryonesWatching extends StatelessWidget {
  const BuildEveryonesWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: 10 ,
        itemBuilder: (context, index)=> const EveryonesWatchingWidget(),),
    );
  }
}




