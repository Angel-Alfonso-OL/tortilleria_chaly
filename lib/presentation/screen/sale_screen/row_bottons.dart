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
            _CustomFilledButton(value: 1, ref: ref),
            _CustomFilledButton(value: 2, ref: ref),
            _CustomFilledButton(value: 5, ref: ref),
            _CustomFilledButton(
              value: 10,
              ref: ref,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _CustomFilledButton(
              value: 1,
              positive: false,
              ref: ref,
            ),
            _CustomFilledButton(
              value: 5,
              positive: false,
              ref: ref,
            ),
          ],
        )
      ],
    );
  }
}

class _CustomFilledButton extends StatelessWidget {
  final int value;
  final bool positive;
  WidgetRef ref;

  _CustomFilledButton({
    required this.ref,
    required this.value,
    this.positive = true,
  });

  void _changeValue() {
    if(positive){
     // ref.read(summaryDbProvider).
    }
  }

  @override
  Widget build(BuildContext context) {
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
      onPressed: _changeValue,
    );
  }
}
