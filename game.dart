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

List<Card> getHand(int handSize, List<Card> deck) {
  final hand = <Card>[];
  for (var i = 0; i < handSize; i++) {
    final lastIndex = deck.length - 1;
    final card = deck.removeAt(lastIndex);
    hand.add(card);
  }
  return hand;
}

void main(List<String> args) {
  final deck = <Card>[];
  for (var suit in Suit.values) {
    for (var i in cardValues) {
      final card = Card(suit, i);
      deck.add(card);
      print(card.toString());
    }
  }
  deck.shuffle();
  print(deck);
  final hand = getHand(5, deck);
  print('Hand: $hand');
  print('Remaining cards in deck: $deck');
}
