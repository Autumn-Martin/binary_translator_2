# Binary Translator

## Instructions

1. Fork this Repository
1. Clone your forked repo to your computer.
1. Complete the activity below.
1. Push your solution to your forked repo
1. Submit a pull request from your repository to this repository

## Background

Unfortunately, computers are dumb. They can't understand the complexity of sentences or even words. They can only understand a 0 or a 1. A sequence of 1's and 0's is called binary, and looks something like this:

```
0010100010101110101101010110101101111101010
```

Even though Ruby code looks like words, eventually it gets translated into binary so the computer can understand it. Your job is to write a program that will translate a string of text into binary.

## Iteration 1

binary_translator.rb includes a map from a lowercase letter to binary that you will use to translate words. Use TDD to drive out the following behavior:

```ruby
require './lib/binary_translator'
=> true
bt = BinaryTranslator.new
=> #<BinaryTranslator:0x00007f85993a5720 @alpha_to_binary = {...}>
bt.translate("a")
=> "000001"
bt.translate("z")
=> "011010"
bt.translate("turing")
=> "010100010101010010001001001110000111"
```

## Iteration 2

Add support for capital letters. A capital letter should have the same translation as a lowercase letter. Use TDD to drive out the following behavior:

```ruby
require './lib/binary_translator'
=> true
bt = BinaryTranslator.new
=> #<BinaryTranslator:0x00007f85993a5720 @alpha_to_binary = {...}>
bt.translate("a")
=> "000001"
bt.translate("A")
=> "000001"
bt.translate("turing")
=> "010100010101010010001001001110000111"
bt.translate("TURING")
=> "010100010101010010001001001110000111"
```

## Iteration 3

Add support for characters that are not letters. Spaces should be translated to all 0's. All other non letter characters should be ignored. Use TDD to drive out the following behavior:

```ruby
require './lib/binary_translator'
=> true
bt = BinaryTranslator.new
=> #<BinaryTranslator:0x00007f85993a5720 @alpha_to_binary = {...}>
bt.translate(" ")
=> "000000"
bt.translate("!@{$#%^&*()}")
=> ""
bt.translate("Hello World!")
=> "001000000101001100001100001111000000010111001111010010001100000100"
```

## Iteration 4

Add support for translating from binary to text. Use TDD to drive out the following behavior:

```ruby
require './lib/binary_translator'
=> true
bt = BinaryTranslator.new
=> #<BinaryTranslator:0x00007f85993a5720 @alpha_to_binary = {...}>
bt.translate_to_text("001000000101001100001100001111000000010111001111010010001100000100")
=> "hello world"
```
