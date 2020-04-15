import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class MemoryController {
  int _items;
  int _itemsAux;

  bool isFinished = false;
  List<int> _list = List<int>();
  List<GlobalKey<FlipCardState>> _cardKeys = List<GlobalKey<FlipCardState>>();
  List<bool> _cardsFlip = List<bool>();

  List<int> get list => _list;
  List<GlobalKey<FlipCardState>> get cardKeys => _cardKeys;
  List<bool> get cardsFlip => _cardsFlip;

  MemoryController(this._items) {
    insertItems(_items);
    _itemsAux = _items;
  }

  insertItems(int value) {
    for (var i = 0; i < value; i++) {
      _list.add(i);
      _list.add(i);
      _cardKeys.add(GlobalKey<FlipCardState>());
      _cardKeys.add(GlobalKey<FlipCardState>());
      _cardsFlip.add(true);
      _cardsFlip.add(true);
    }
    _list.shuffle();
  }

  toggleAll() {
    for (var card in _cardKeys) {
      card.currentState.toggleCard();
    }
  }

  toggle(int index) {
    _cardKeys[index].currentState.toggleCard();
  }

  bool isStarted = false;
  int _cardState = 0;
  int _previousIndex;
  int _currentIndex;

  toggledCard(int index, BuildContext context) async {
    if (isStarted) {
      if (_cardState == 0) {
        _cardKeys[index].currentState.toggleCard();
        _previousIndex = index;
        _cardState = 1;
      } else if (_cardState == 1) {
        _cardKeys[index].currentState.toggleCard();
        _currentIndex = index;
        _cardState = 2;
      }
      if (_cardState == 2) {
        if (_list[_previousIndex] == _list[_currentIndex]) {
          _cardState = 0;
          _itemsAux--;
          if (_itemsAux == 0) {
            isFinished = true;
            isStarted = false;
            _ackAlert(context);
            await Future.delayed(Duration(seconds: 1));
            toggleAll();
          }
        } else {
          _cardState = 3;
          await Future.delayed(Duration(milliseconds: 700));
          _cardKeys[_previousIndex].currentState.toggleCard();
          _cardKeys[_currentIndex].currentState.toggleCard();
          _cardState = 0;
        }
      }
    }
  }

  start() async {
    _itemsAux = _items;
    _list.shuffle();
    await Future.delayed(Duration(milliseconds: 300));

    toggleAll();
    await Future.delayed(Duration(seconds: 1));
    toggleAll();
    isStarted = true;
  }
  Future<void> _ackAlert(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Finalizado'),
        content: const Text('Jogo finalizado'),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
}
