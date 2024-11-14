#import "@preview/acrostiche:0.2.0": acr, acrpl

= Theoretical Foundations
- Fundamentals of Facial Recognition and Emotion Detection
- Psychological Theories and Mechanisms of Smiling and Laughter
- Overview of Machine Learning and Deep Learning Techniques in Visual Analysis


== Neural Networks

A #acr("NN") is a general framework of interconnected nodes, or "neurons," organized in layers. Typically, it consists of an input layer, one or more hidden layers, and an output layer. In standard neural networks, each neuron in one layer connects to every neuron in the next, creating what is called a “fully connected” structure. This setup is suitable for tasks like classification, regression, and prediction. However, it is less efficient when handling large image data, as it does not inherently recognize spatial patterns, such as edges or textures, within images.

That is for a #acr("CNN"). It is a specialized type of neural network designed to process image and video data effectively. #acrpl("CNN") use *convolutional layers* to apply filters to small sections of the image, allowing the network to extract features like edges, shapes, and textures. This convolutional process preserves the spatial relationships within the image, making #acrpl("CNN") exceptionally effective for tasks like image recognition and classification.

The unique structure of #acrpl("CNN") often includes:
- *Convolutional Layers* that extract essential features from the image,
- *Pooling Layers* that reduce data volume while emphasizing significant features, and
- *Fully Connected Layers* that integrate these features and produce the final classification.

This architecture makes CNNs more efficient than standard neural networks by reducing the number of parameters and focusing on image-specific patterns, allowing CNNs to process visual data with a high degree of accuracy.

@whatIsCNN

#pagebreak()