# Basic Flutter Challenge

Ter uma classe **Repository** que vai ter um **Data Source** que dentro dele tem uma lista de Mil itens (Item: {id, content, isChecked}). Segue o seguinte código para criar as Strings e o status de habilitado:

```dart
import 'dart:math';

class Utils {
  static String generateRandomString(int len) {
    var random = Random();
    const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(len, (index) => _chars[random.nextInt(_chars.length)]).join(); 
  }

  static bool generateRandomEnabledState() {
    var random = Random();
    return random.nextInt(2) == 0 ? false : true;
  }
}
```

Criar um UI que tem uma lista na vertical de itens com texto e check box. No topo da tela precisa ter um botão com o texto "resetar todos os itens".
Comportamentos:

 - Quando checkbox estiver habilitado a cor do background do item deve mudar para um tema escuro (ex.: Texto branco e background escuro);
 - Ao clicar o botão "resetar todos os itens" todos os itens irão resetar os seus valores para o estado default;

Sejam criativos na UI e no design do código.


