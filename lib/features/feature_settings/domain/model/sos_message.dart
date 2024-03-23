enum SosMessageEnum { messageOne, messageTwo, messageThree }

class SosMessage {
  final String message;
  final SosMessageEnum messageEnum;

  const SosMessage({required this.message, required this.messageEnum});
}
