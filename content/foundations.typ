#import "@preview/acrostiche:0.2.0": acr, acrpl

= Theoretical Foundations
- Fundamentals of Facial Recognition and Emotion Detection
- Psychological Theories and Mechanisms of Smiling and Laughter
- Overview of Machine Learning and Deep Learning Techniques in Visual Analysis

== History of Facial Recognition
Facial recognition technology started in the 1960s, when early computer programs could analyze facial features by measuring the distances between key points, such as the eyes and nose. A major milestone came in the 1990s with the introduction of the “eigenfaces” approach, which used mathematical algorithms to identify unique facial characteristics automatically. This made facial recognition significantly more accurate and practical, opening doors for its use in security and surveillance. By the early 2000s, it was implemented in airports and other high-security areas, particularly for public safety.

Today, facial recognition has become a common feature worldwide. In countries like China, it’s used extensively in public spaces for surveillance, shopping, and even as a payment method. In the United States, law enforcement agencies use it to identify suspects, while smartphones like iPhones and many Android devices offer face unlock features for secure access. Many airports globally also use facial recognition to streamline passport control.

Public reactions to facial recognition are mixed. On the one hand, people appreciate its convenience for personal use and the added layer of security it provides in certain settings. However, there are significant privacy concerns. In the European Union, strict data privacy laws have slowed down its adoption for surveillance, and in the United States, several cities and states have passed legislation limiting its use. Many worry about data security, the potential for mass surveillance, and possible biases that could lead to misidentification. This ongoing debate has led to calls for more regulation to ensure that facial recognition technology is used responsibly and ethically.

@useCasesFacial@useCasesFacial2@useCaseFacial3

== Emotion Recognition
The automotive industry is using FER to enhance driver safety and comfort. Emotion recognition systems in vehicles can detect a driver’s mood and alertness, adjusting safety mechanisms accordingly. #linebreak()
But also Companies use emotion detection tools to analyze consumer sentiments about products. For example, virtual try-on apps can benefit from emotion recognition by capturing the user’s response to different makeup looks or hairstyles. This feedback can help brands recommend products that customers are likely to enjoy and purchase.

For market research, emotion detection tools can be used for real-time analysis of viewer reactions to ads, allowing advertisers to optimize content for emotional engagement and tailor advertising to the viewer’s emotional state @useCaseEmotion.

#pagebreak()
== Machine Learning
#acr("ML") is a subfield of #acr("AI") focused on enabling computers to learn from data and make predictions without explicit programming. The term "machine learning" was coined by Arthur Samuel in the 1950s, who developed algorithms that allowed computers to improve performance through experience. 

Neural networks, a key component of #acr("ML"), are computational models inspired by the human brain. They consist of layers of interconnected neurons that process and learn from data. Early breakthroughs, including backpropagation, by researchers like Geoffrey Hinton and Yann LeCun, allowed neural networks to effectively handle tasks like pattern recognition.

Today, #acr("ML") is widely applied across various fields, including supervised learning for tasks like medical diagnosis and unsupervised learning for clustering and recommendation systems. It is also central to advancements in natural language processing, image and speech recognition, and autonomous systems such as self-driving cars. The continued growth of data and computational power drives the increasing integration of #acr("ML") into modern technologies.
@machineLearning
#figure(
  image("../images/zusammenhangML&NN.png"), caption: [Machine Learning Field]
)
#align(center)[This image was found from @machineLearningImage.]

== Neural Networks

A #acr("NN") is a general framework of interconnected nodes, or "neurons," organized in layers. Typically, it consists of an input layer, one or more hidden layers, and an output layer. In standard neural networks, each neuron in one layer connects to every neuron in the next, creating what is called a “fully connected” structure. This setup is suitable for tasks like classification, regression, and prediction. However, it is less efficient when handling large image data, as it does not inherently recognize spatial patterns, such as edges or textures, within images.

That is for a #acr("CNN"). It is a specialized type of neural network designed to process image and video data effectively. #acrpl("CNN") use *convolutional layers* to apply filters to small sections of the image, allowing the network to extract features like edges, shapes, and textures. This convolutional process preserves the spatial relationships within the image, making #acrpl("CNN") exceptionally effective for tasks like image recognition and classification.

The unique structure of #acrpl("CNN") often includes:
- *Convolutional Layers* that extract essential features from the image,
- *Pooling Layers* that reduce data volume while emphasizing significant features, and
- *Fully Connected Layers* that integrate these features and produce the final classification.

This architecture makes CNNs more efficient than standard neural networks by reducing the number of parameters and focusing on image-specific patterns, allowing CNNs to process visual data with a high degree of accuracy.

@whatIsNN@whatIsCNN

#pagebreak()