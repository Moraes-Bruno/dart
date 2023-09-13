double saldo = 250;

// Exception personalizada
class SaldoInsuficienteException implements Exception {
  @override
  String toString() => 'Saldo insuficiente';
}

// Verifica se o usuário possui dinheiro suficiente e, em caso positivo, debita o valor de sua conta
void check(double valor) {
  if (valor > saldo) {
    throw SaldoInsuficienteException();
  } else {
    saldo -= valor;
  }
}

// Realiza a transação bancária
void transacao(double valor) {
  try {
    check(valor);
    print("Transação bem-sucedida. Saldo após transação: $saldo");
  } catch (e) {
    if (e is SaldoInsuficienteException) {
      print(e.toString());
    } else {
      print("Ocorreu um erro inesperado: $e");
    }
  } finally {
    print("Saldo atual: $saldo");
  }
}

void main() {
  transacao(200);
}
