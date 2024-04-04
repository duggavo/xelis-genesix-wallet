import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xelis_mobile_wallet/shared/providers/snackbar_content_provider.dart';
import 'package:xelis_mobile_wallet/shared/providers/snackbar_event.dart';
import 'package:xelis_mobile_wallet/shared/theme/constants.dart';
import 'package:xelis_mobile_wallet/shared/theme/extensions.dart';

class SnackBarInitializerWidget extends ConsumerStatefulWidget {
  const SnackBarInitializerWidget({required this.child, super.key});

  final Widget child;

  @override
  ConsumerState<SnackBarInitializerWidget> createState() =>
      _SnackBarInitializerWidgetState();
}

class _SnackBarInitializerWidgetState
    extends ConsumerState<SnackBarInitializerWidget> {
  void _showInfoSnackBar(BuildContext context, Widget widget) {
    var messenger = ScaffoldMessenger.of(context);
    messenger.clearSnackBars();
    messenger.showSnackBar(
      SnackBar(
        content: widget,
        duration:
            const Duration(milliseconds: AppDurations.displayTimeSnackbar),
        //width: 280.0,
        //elevation: 2,
        behavior: SnackBarBehavior.floating,
        showCloseIcon: true,
        closeIconColor: context.colors.onBackground,
      ),
    );
  }

  void _showErrorSnackBar(BuildContext context, Widget widget) {
    var messenger = ScaffoldMessenger.of(context);
    messenger.clearSnackBars();
    messenger.showSnackBar(
      SnackBar(
        content: widget,
        // long duration for error or we don't have time do see the error
        duration: const Duration(days: 1),
        dismissDirection: DismissDirection.down,
        //width: 280.0,
        //elevation: 2,
        behavior: SnackBarBehavior.floating,
        showCloseIcon: true,
        closeIconColor: context.colors.error,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(snackbarContentProvider, (previous, next) {
      if (next != null) {
        switch (next) {
          case Info():
            _showInfoSnackBar(
                context,
                Text(next.message, style: context.bodyLarge
                    //?.copyWith(color: context.colors.primary),
                    ));
          case Error():
            _showErrorSnackBar(
                context,
                Text(
                  next.message,
                  style:
                      context.bodyLarge?.copyWith(color: context.colors.error),
                ));
        }
      }
    });
    return widget.child;
  }
}
