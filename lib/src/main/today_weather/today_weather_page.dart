import 'package:gap/gap.dart';
import 'package:weather_app/common_lib.dart';

@RoutePage()
class TodayWeatherPage extends StatefulWidget {
  const TodayWeatherPage({super.key});

  @override
  State<TodayWeatherPage> createState() => _TodayWeatherPageState();
}

class _TodayWeatherPageState extends State<TodayWeatherPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: theme.colorScheme.primary,
            pinned: true,
            actions: [
              IconButton(
                onPressed: () {
                  context.router.pushNativeRoute(MaterialPageRoute(
                    builder: (context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text("implement"),
                        ),
                      );
                    },
                  ));
                },
                icon: const Icon(
                  Icons.notifications_outlined,
                ),
              )
            ],
            title: Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text("Iraq Baghdad"),
            ),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                    const Gap(12),
                  ],
                ),
              ),
            ),
          ),
          const SliverGap(12),
          SliverFillRemaining(),
        ],
      ),
    );
  }
}
