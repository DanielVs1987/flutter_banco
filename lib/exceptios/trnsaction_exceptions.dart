import '../models/account.dart';

class SenderNotExistsException implements Exception {
  final String message;
  SenderNotExistsException({this.message = "Remetente não existe."});
}

class ReceiverNotExistsException implements Exception {
  final String message;
  ReceiverNotExistsException({this.message = "Destinatário não existe."});
}

class InsufficientFundsException implements Exception {
  String message; // Mensagem amigável
  Account cause; // Objeto causador da exceção
  double amount; // Informações específicas
  double taxes; // Informações específicas

  InsufficientFundsException({
    this.message = "Fundos insuficientes para a transação.",
    required this.cause,
    required this.amount,
    required this.taxes,
  });
}