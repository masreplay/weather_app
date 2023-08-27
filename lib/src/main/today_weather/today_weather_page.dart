import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/router/app_router.dart';

@RoutePage()
class TodayWeatherPage extends StatefulHookConsumerWidget {
  const TodayWeatherPage({super.key});

  @override
  ConsumerState<TodayWeatherPage> createState() => _TodayWeatherPageState();
}

class _TodayWeatherPageState extends ConsumerState<TodayWeatherPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final scrolledTo = useState(false);
    final collapsedHeight = MediaQuery.sizeOf(context).height / 4;
    final expandedHeight = MediaQuery.sizeOf(context).height / 2;

    return Scaffold(
      body: NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            scrolledTo.value = notification.metrics.isScrolled(
              amount: 2 / 3,
              max: expandedHeight,
              min: collapsedHeight,
            );
          }
          return true;
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: theme.colorScheme.surfaceVariant,
              foregroundColor:
                  scrolledTo.value ? theme.colorScheme.onSurface : Colors.white,
              pinned: true,
              actions: [
                if (kDebugMode) Text(scrolledTo.value.toString()),
                IconButton(
                  onPressed: () {
                    context.router.push(const SearchRoute());
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
              title: const Text("بغداد العراق"),
              collapsedHeight: collapsedHeight,
              expandedHeight: expandedHeight,
              flexibleSpace: ClipRRect(
                borderRadius: BorderRadius.circular(36),
                child: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: CachedNetworkImage(
                    imageUrl:
                        "https://lh3.googleusercontent.com/u/0/drive-viewer/AITFw-wIczn1LqSHFIeQbt-_X0NsDh2DgT-5x2tWqoFnPNLZ6LzQZPaIvWgzS5DM5QQQ1LJjpmcTyGQGvZ6yWb08PS3YPUSs=w1592-h1720",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SliverFillRemaining(),
          ],
        ),
      ),
    );
  }
}

class TabsNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const TabsNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.red,
      width: 200,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

extension on ScrollMetrics {
  // if x the space between the expanded height and the collapsed height is scrolled
  bool isScrolled({
    required double amount,
    required double min,
    required double max,
  }) =>
      pixels >= (max - min) * amount;
}
