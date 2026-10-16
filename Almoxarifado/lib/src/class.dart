class Item {
  final int id;
  String nome;
  String categoria;

  /// Quantidade disponível para retirada no estoque.
  int quantidadeDisponivel;

  Item({
    required this.id,
    required this.nome,
    required this.categoria,
    this.quantidadeDisponivel = 0,
  });
}

class Retirada {
  final int id;
  final Item item;
  final int quantidade;
  final String solicitante;
  final String perfilSolicitante;
  final DateTime data;

  Retirada({
    required this.id,
    required this.item,
    required this.quantidade,
    required this.solicitante,
    required this.perfilSolicitante,
    DateTime? data,
  }) : data = data ?? DateTime.now();
}
