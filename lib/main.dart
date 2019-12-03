import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Diane Ackerman',text: 'Artificial intelligence is growing up fast, as are robots whose facial expressions can elicit empathy and make your mirror neurons quiver.'),
    Quote(author: 'Colin Angle', text: 'It\'s going to be interesting to see how society deals with artificial intelligence, but it will definitely be cool.'),
    Quote(author: 'Claude Shannon',text: 'I visualize a time when we will be to robots what dogs are to humans, and I’m rooting for the machines.')
  ];
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote:quote)).toList(),
      ),
    );
  }
}

