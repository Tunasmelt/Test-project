enum Suit {
  spades,
  diamonds,
  clubs,
  hearts,
}

final cardValues = <String>[
  'A',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  'King',
  'Queen',
  'Jack',
];

class Card {
  final Suit suit;
  final String value;
  const Card(this.suit, this.value);

  @override
  String toString() {
    return '"$value of ${suit.name}"';
  }
}

void main(List<String> args) {
  final deck = [];
  for (var suit in Suit.values) {
    for (var i in cardValues) {
      final card = Card(suit, i);
      deck.add(card);
      print(card.toString());
    }
  }
  deck.shuffle();
  print(deck);
}
