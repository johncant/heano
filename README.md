# Heano - Theano for Haskell

Theano is a Python library for defining symbolic mathematical operations and compiling them to run on the CPU or GPU. It uses symbolic differentiation, which is extremely useful in training a neural network, especially a recurrent one.

http://www.deeplearning.net/software/theano/

This repo aims to work out if Theano for Haskell already exists in the form of accelerate and ad, and if not, to create it.

# Turns out it might already exist :) Woohoo!

You can write expressions, differentiate them using
[ad](https://github.com/ekmett/ad), and run them using
[accelerate](https://github.com/AccelerateHS/accelerate)

It would be nice to get confirmation that the evaluation is indeed taking place on the Accelerate backend and not just splitting the AST into 2 ASTs and being evaluated in Haskell.

Now to use grad and proper arrays. :)
