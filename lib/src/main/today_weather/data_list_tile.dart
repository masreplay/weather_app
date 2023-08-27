import 'package:weather_app/common_lib.dart';
import 'package:weather_app/src/main/flex_padded.dart';

class DataListTile extends StatelessWidget {
  const DataListTile({
    super.key,
    required this.title,
    required this.icon,
    required this.child,
  });

  final Widget title;

  final IconData icon;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = theme.colorScheme.secondaryContainer;
    final foregroundColor = theme.colorScheme.onSecondaryContainer;

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ColumnPadded(
        gap: 0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RowPadded(
            gap: 8,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.colorScheme.primary,
                ),
                child: Icon(icon, color: theme.colorScheme.onPrimary),
              ),
              Expanded(
                child: DefaultTextStyle(
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: foregroundColor,
                  ),
                  child: title,
                ),
              ),
            ],
          ),
          const Gap(12),
          child,
        ],
      ),
    );
  }
}

class ItemListTile extends StatelessWidget {
  const ItemListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  final Widget title;
  final Widget subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = theme.colorScheme.secondaryContainer;
    final foregroundColor = theme.colorScheme.onSecondaryContainer;

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: RowPadded(
        gap: 8,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.colorScheme.primary,
            ),
            child: Icon(icon, color: theme.colorScheme.onPrimary),
          ),
          ColumnPadded(
            gap: 0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultTextStyle(
                style: theme.textTheme.titleMedium!.copyWith(
                  color: foregroundColor,
                  fontWeight: FontWeight.bold,
                ),
                child: title,
              ),
              DefaultTextStyle(
                style: theme.textTheme.titleSmall!.copyWith(
                  color: foregroundColor,
                ),
                child: subtitle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
