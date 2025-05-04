part of './sales_screen.dart';

class _RowBottons extends StatelessWidget {
  const _RowBottons();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: darkBlue),
          child: const Center(
            child: Text(
              "100",
              style: TextStyle(
                color: white,
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _CustomFilledButton(value: 1),
            _CustomFilledButton(value: 2),
            _CustomFilledButton(value: 5),
            _CustomFilledButton(value: 10),
          ],
        ),
        const SizedBox(height: 10),
        const Row(
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

class _CustomFilledButton extends StatelessWidget {
  final int value;
  final bool positive;

  const _CustomFilledButton({
    required this.value,
    this.positive = true,
  });

  void _changeValue() {}

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
