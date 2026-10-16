import 'dart:io';

class Almoxarifado {
  static List<Map<String, dynamic>> menu = [
    { 'titulo': 'Listar todos os item', 'permissao': null, 'metodo': listar },
    { 'titulo': 'Cadastrar item', 'permissao': 'admin', 'metodo': cadastrar },
    { 'titulo': 'Excluir item', 'permissao': 'admin', 'metodo': excluir },
  ];

  static final List<String> informacoes = [];

  static void listar() {
    if (informacoes.isEmpty) {
      print('Nenhuma item cadastrado.');
    } else {
      print('Informações cadastradas:');
      for (int i=0; i<informacoes.length; i++) {
        print('- $i: ${informacoes[i]}');
      }
    }
  }

  static void cadastrar() {
    print('Digite o item que deseja cadastrar:');
    String? input = stdin.readLineSync();
    
    if (input != null && input.isNotEmpty) {
      print('Digite a categoria do item:');
      String? categoria = stdin.readLineSync();
      
      String itemFormatado = categoria != null && categoria.isNotEmpty ? '$input ($categoria)' : input;

      informacoes.add(itemFormatado);
      print('Item cadastrado.');
    } else {
      print('Nenhum item foi cadastrada.');
    }
  }

  static void excluir() {
    print('Digite o item que deseja excluir:');
    String? input = stdin.readLineSync() ?? '';
    int? index = int.tryParse(input);

    if (index != null && index >= 0 && index < informacoes.length) {
      informacoes.removeAt(index);
      print('Item excluído com sucesso.');
    } else {
      print('Item não encontrada.');
    }
  }
}
