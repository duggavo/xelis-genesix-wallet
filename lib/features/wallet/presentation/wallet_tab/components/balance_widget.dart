import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xelis_mobile_wallet/features/settings/application/app_localizations_provider.dart';
import 'package:xelis_mobile_wallet/features/settings/application/settings_state_provider.dart';
import 'package:xelis_mobile_wallet/features/wallet/application/wallet_provider.dart';
import 'package:xelis_mobile_wallet/features/wallet/presentation/wallet_tab/components/qr_dialog.dart';
import 'package:xelis_mobile_wallet/features/wallet/presentation/wallet_tab/components/transfer_to_dialog.dart';
import 'package:xelis_mobile_wallet/shared/providers/snackbar_content_provider.dart';
import 'package:xelis_mobile_wallet/shared/providers/snackbar_event.dart';
import 'package:xelis_mobile_wallet/shared/theme/constants.dart';
import 'package:xelis_mobile_wallet/shared/theme/extensions.dart';

class BalanceWidget extends ConsumerWidget {
  const BalanceWidget({super.key});

  void _showTransferToDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (_) => const TransferToDialog(),
    );
  }

  void _showQrDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (_) => const QrDialog(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = ref.watch(appLocalizationsProvider);
    final settings = ref.watch(settingsProvider);
    final walletSnapshot = ref.watch(walletStateProvider);

    // added 2000 in front to test text resize
    var displayBalance = walletSnapshot.xelisBalance;
    //var displayBalance = '${NumberFormat().format(balance)} XEL';
    if (settings.hideBalance) {
      displayBalance = 'HIDDEN';
    }

    return GridTile(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            loc.balance,
            style: context.headlineSmall!
                .copyWith(color: context.moreColors.mutedColor),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: Row(
              //key: ValueKey<String>(displayBalance),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectionArea(
                        child: AutoSizeText(
                          displayBalance,
                          maxLines: 1,
                          style: context.displayMedium,
                          minFontSize: 20,
                        ),
                      ),
                      !settings.hideBalance
                          ? SelectableText(
                              '0.00 USDT',
                              style: context.bodyLarge,
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
                const SizedBox(width: Spaces.medium),
                IconButton.filled(
                  icon: settings.hideBalance
                      ? const Icon(
                          Icons.visibility_rounded,
                        )
                      : const Icon(
                          Icons.visibility_off_rounded,
                        ),
                  tooltip: 'Hide balance',
                  onPressed: () {
                    ref
                        .read(settingsProvider.notifier)
                        .setHideBalance(!settings.hideBalance);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: Spaces.large),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: Spaces.medium,
            children: [
              Column(
                children: [
                  IconButton.filled(
                    onPressed: () {
                      _showTransferToDialog(context);
                    },
                    icon: const Icon(Icons.call_made_rounded),
                  ),
                  const SizedBox(height: Spaces.small),
                  Text(loc.send),
                ],
              ),
              Column(
                children: [
                  IconButton.filled(
                    onPressed: () {
                      // TODO
                      ref.read(snackbarContentProvider.notifier).setContent(
                            SnackbarEvent.info(message: loc.coming_soon),
                          );
                    },
                    icon: const Icon(Icons.local_fire_department_rounded),
                  ),
                  const SizedBox(height: Spaces.small),
                  const Text('Burn'),
                ],
              ),
              Column(
                children: [
                  IconButton.filled(
                    onPressed: () {
                      _showQrDialog(context);
                    },
                    icon: const Icon(Icons.call_received_rounded),
                  ),
                  const SizedBox(height: Spaces.small),
                  Text(loc.receive),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
