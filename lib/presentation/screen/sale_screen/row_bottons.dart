part of 'sales_screen.dart';

class _RowBottons extends ConsumerWidget {
  final Summary lastSummary;

  _RowBottons({required this.lastSummary});

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
              lastSummary.tortillasVendidas.toString(),
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
            _CustomFilledButton(value: 1, lastSummary: lastSummary),
            _CustomFilledButton(value: 2, lastSummary: lastSummary),
            _CustomFilledButton(value: 5, lastSummary: lastSummary),
            _CustomFilledButton(value: 10, lastSummary: lastSummary),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _CustomFilledButton(
              value: 1,
              positive: false,
              lastSummary: lastSummary,
            ),
            _CustomFilledButton(
              value: 5,
              positive: false,
              lastSummary: lastSummary,
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
  final Summary lastSummary;

  _CustomFilledButton({
    required this.lastSummary,
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
      onPressed: () {},
    );
  }
}
