import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:weather_app/common_lib.dart';
import 'package:weather_app/src/widgets/flex_padded.dart';

class DefaultErrorWidget extends StatelessWidget {
  const DefaultErrorWidget({
    super.key,
    required this.error,
    required this.stackTrace,
    required this.refresh,
  });

  final Object? error;
  final StackTrace? stackTrace;
  final VoidCallback? refresh;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    if (kDebugMode) {
      log('Error', error: error, stackTrace: stackTrace);
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ColumnPadded(
          children: [
            Text(l10n.defaultErrorMessage),
            ElevatedButton(
              onPressed: refresh,
              child: Text(l10n.retry),
            ),
          ],
        ),
      ),
    );
  }
}
