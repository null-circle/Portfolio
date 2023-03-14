# Royal Flush

![Kartenspielende Zirkusleute (Circus people playing cards), Gert Heinrich Wollheim](./Images/Kartenspielende%20Zirkusleute%20-%20Gert%20Heinrich%20Wollheim%20.jpeg)

_When you finally realise why you should not play cards with a clown..._

## The Problem

This is my attempt to solve [Project Euler Problem 54](https://projecteuler.net/problem=54) using data analysis.

We are given a 1000 line text file where each line represents a pair of 5-card poker hands.

``` text
8C TS KC 9H 4S 7D 2S 5D 3S AC
5C AD 5D AC 9C 7C 5H 8D TD KS
3H 7H 6S KC JS QH TD JC 2D 8S
...
```

Each card is encoded as rank + suit: "8C" indicates eight of clubs, etc.

The first five cards are player 1's hand and the second five are player 2's hand.

The goal is for us to determine, for each pair of hands, who was the winner by applying the standard ranking of poker hands, so that we can find out how many hands player 1 won.

Evaluation of poker hands is quite a complex matter and this is not a simple problem.
