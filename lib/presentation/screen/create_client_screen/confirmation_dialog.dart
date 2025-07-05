part of './create_client_screen.dart';

class ConfirmationDialog extends ConsumerWidget {
  final TextEditingController _textControllerName;
  final TextEditingController _textControllerNickname;
  final TextEditingController _textControllerdauda;

  const ConfirmationDialog({
    super.key,
    required TextEditingController textControllerName,
    required TextEditingController textControllerNickname,
    required TextEditingController textControllerdauda,
  })  : _textControllerName = textControllerName,
        _textControllerNickname = textControllerNickname,
        _textControllerdauda = textControllerdauda;

  @override
  Widget build(BuildContext context, ref) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.spaceAround,
      title: const SizedBox(
        width: double.infinity,
        height: 30,
        child: Center(
          child: Text(
            "CONFIRMACIÓN",
            style: TextStyle(
              color: darkBlue,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      content: SizedBox(
        width: double.infinity,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "NOMBRE:",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(_textControllerName.value.text),
            const SizedBox(height: 10),
            const Text(
              "APODO:",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(_textControllerNickname.value.text),
            const SizedBox(height: 10),
            const Text(
              "DEUDA:",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(_textControllerdauda.value.text),
            const SizedBox(height: 20),
            const SizedBox(
              width: double.infinity,
              height: 20,
              child: Center(
                child: Text(
                  "¿Es correcta la información?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        FilledButton(
          onPressed: () async {
            await ref.read(clientDbProvider).createClient(Client(
                name: _textControllerName.value.text,
                nickName: _textControllerNickname.text,
                lastSale: DateTime.now(),
                lastPay: DateTime.now(),
                money: int.parse(_textControllerdauda.value.text)));
            await ref.read(lastSummaryProvider.notifier).insertNewSummary(ref
                .read(lastSummaryProvider)
                .copyWith(
                    totalFiados: ref.read(lastSummaryProvider).totalFiados +
                        int.parse(_textControllerdauda.text)));
            ref.invalidate(clientDbProvider);
            context.pop();
            context.pop();
          },
          child: const Text("SI"),
        ),
        FilledButton(
          onPressed: () {
            context.pop();
          },
          child: const Text("NO"),
        ),
      ],
    );
  }
}
