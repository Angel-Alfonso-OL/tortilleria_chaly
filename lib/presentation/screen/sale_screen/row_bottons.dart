part of 'sales_screen.dart';

class _RowBottons extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    return Column(
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: darkBlue),
          child: Center(
            child: Text(
              ref.watch(lastSummaryProvider).tortillasVendidas.toString(),
              style: const TextStyle(
                color: white,
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _CustomFilledButton(value: 1),
            _CustomFilledButton(value: 2),
            _CustomFilledButton(value: 5),
            _CustomFilledButton(value: 10),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _CustomFilledButton(
              value: 1,
              positive: false,
            ),
            _CustomFilledButton(
              value: 5,
              positive: false,
            ),
          ],
        )
      ],
    );
  }
}

class _CustomFilledButton extends ConsumerWidget {
  final int value;
  final bool positive;

  _CustomFilledButton({
    required this.value,
    this.positive = true,
  });

  @override
  Widget build(BuildContext context, ref) {
    return FilledButton.icon(
      style: FilledButton.styleFrom(
        backgroundColor: positive ? pink : grey,
      ),
      label: positive
          ? Text(
              "+ $value",
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
            )
          : Text(
              "- $value",
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
            ),
      onPressed: () {
        if (positive) {
          ref.read(lastSummaryProvider.notifier).insertNewSummary(
                ref.read(lastSummaryProvider).copyWith(
                      tortillasVendidas:
                          ref.read(lastSummaryProvider).tortillasVendidas +
                              value,
                    ),
              );
        } else {
          ref.read(lastSummaryProvider.notifier).insertNewSummary(
                ref.read(lastSummaryProvider).copyWith(
                      tortillasVendidas:
                          ref.read(lastSummaryProvider).tortillasVendidas -
                              value,
                    ),
              );
        }
      },
    );
  }
}
