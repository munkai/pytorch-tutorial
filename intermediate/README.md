# Credits

This is a remix from https://github.com/DeepLearningDTU/02456-deep-learning

# Content

This is the next steps in learning how to use PyTorch.
The purpose is to get the audience to get the audience familiar with building machine learning models in PyTorch.

**NOTE** In these labs cuda is used extensively.
If you have a cuda enabled machine, read the README.md in the root of this repo on how to use nvidia-docker.

## Lab 1: Feed Forward Network

In this lab you will implement a simple feed forward neural network in PyTorch.

### Reading material

- http://neuralnetworksanddeeplearning.com/chap1.html
- http://neuralnetworksanddeeplearning.com/chap2.html

### 1.1-FFN

Train a FFN classifier to solve the half moon problem.

### 1.2-FFN

Train a FFN classifier to recognize handwritten digits.

## Lab 2: Convolutional Neural Network

In this lab you will implement a convolutional neural network in PyTorch.

### Reading material

- http://cs231n.github.io/convolutional-networks/
- http://neuralnetworksanddeeplearning.com/chap6.html

### 2.1-CNN

Train a CNN classifier to recognize handwritten digits.

### 2.2-CNN

Use the cluttered MNIST dataset along with a Spatial Transformer Network to make a CNN classifier to recognize handwritten digits.

This lab contains first real use of cuda support.

## Lab 3: Autoencoders

Autoencoders and MNIST.

### Reading material

- https://www.cs.toronto.edu/~hinton/science.pdf

### 3.1-AE

Train an autoencoder on MNIST to encode a target given some input.

## Lab 4: Recurrent Neural Networks and Sequences

This lab shows how sequences can be used with recurrent neural networks to learn to classify text.

### Reading material

- https://www.youtube.com/watch?v=yCC09vCHzF8
- http://karpathy.github.io/2015/05/21/rnn-effectiveness/
- https://einstein.ai/research/learning-when-to-skim-and-when-to-read
- http://papers.nips.cc/paper/5021-distributed-representations-of-words-andphrases

### 4.1-Sequences

Train a bag of words model to classify positive and negative sentences.

### 4.2-RNN

Train a recurrent neural network to classify positive and negative sentences.
Note this lab is very slow without a GPU. See `README.md` in root folder.

## Lab 5: Leaf Classification with Kaggle

Combine all previous labs (FFN, CNN, RNN) to compete in the [leaf classification challenge](https://www.kaggle.com/c/leaf-classification).

### Reading material

*Nothing.*

### 5.1-Kaggle

Train different models and submit the results to Kaggle.

## Lab 6: Final exam

Test your newly acquired skills on the most notorious classification challenges: Text Entailment.

### Reading material

- Stanford Natural Language Inference (SNLI), [Bowman et al.](https://nlp.stanford.edu/pubs/snli_paper.pdf)
- [Rocktäschel et al.](https://arxiv.org/abs/1509.06664)
- [McCann et al.](https://arxiv.org/abs/1708.00107) (bleeding edge research, advanced reading material, focus on the BCN model in section five)

### 6.1-final_exam_SNLI

Build data loader, model, loss function, optimizer and training loop from scratch.
Notice that replicating the BCN model is a difficult task and may take a significant amount of time.