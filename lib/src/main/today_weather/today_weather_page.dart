import 'package:cached_network_image/cached_network_image.dart';
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
            backgroundColor: theme.colorScheme.surfaceVariant,
            foregroundColor: Colors.white,
            pinned: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
            title: const Text("بغداد العراق"),
            expandedHeight: MediaQuery.sizeOf(context).height / 2,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: CachedNetworkImage(
                imageUrl:
                    "https://lh3.googleusercontent.com/u/0/drive-viewer/AITFw-wIczn1LqSHFIeQbt-_X0NsDh2DgT-5x2tWqoFnPNLZ6LzQZPaIvWgzS5DM5QQQ1LJjpmcTyGQGvZ6yWb08PS3YPUSs=w1592-h1720",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverGap(12),
          const SliverFillRemaining(),
        ],
      ),
    );
  }
}
