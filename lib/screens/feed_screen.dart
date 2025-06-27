import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/app_packages.dart';

final tabIndexProvider = StateProvider((ref) => 0);

class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          AppBar(
            centerTitle: true,
            // backgroundColor: AppColors.normalGreenColor,
            forceMaterialTransparency: true,
            title: Text(
              'Feed',
              // style: TextStyle(
              //   fontWeight: FontWeight.w500,
              //   color: AppColors.whiteColor,
              // ),
            ),
            // leading: IconButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   icon: Icon(Icons.arrow_back_ios),
            // ),
            actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
          ),

          Expanded(
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: DefaultTabController(
                length: 4,
                child: Consumer(
                  builder: (
                    BuildContext context,
                    WidgetRef ref,
                    Widget? child,
                  ) {
                    final tabIndexVariable = ref.watch(tabIndexProvider);
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 8,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 9),
                          child: Text(
                            'Your Feed',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        TabBar(
                          // indicatorSize: TabBarIndicatorSize.tab,
                          labelColor: Theme.of(context).primaryColor,
                          indicatorColor: Theme.of(
                            context,
                          ).primaryColor.withValues(alpha: 1),
                          dividerColor: Colors.transparent,
                          labelPadding: EdgeInsets.symmetric(
                            horizontal: 11,
                            vertical: 11,
                          ),
                          unselectedLabelColor: Theme.of(context).cardColor,
                          tabAlignment: TabAlignment.start,
                          isScrollable: true,
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                          onTap: (val) {
                            ref.read(tabIndexProvider.notifier).state = val;
                          },
                          tabs: [
                            Text('Things To Do'),
                            Text('Flights'),
                            Text('Hotels'),
                            Text('Food'),
                          ],
                        ),
                        Flexible(
                          // fit: FlexFit.loose,
                          child: IndexedStack(
                            index: tabIndexVariable,
                            children: _tabBarScreens,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final List<Widget> _tabBarScreens = [
  ThingsToDoTab(),
  FlightsTab(),
  HotelsTab(),
  FoodsTab(),
];
// int myIndex = 0;
