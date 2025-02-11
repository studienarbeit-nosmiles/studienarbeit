#import "@preview/acrostiche:0.3.5": acr, acrpl
#import "@preview/note-me:0.2.1": *

= Fundamentals
- Fundamentals of face Recognition and Emotion Detection
- Psychological Theories and Mechanisms of Smiling and Laughter
- Overview of Machine Learning and Deep Learning Techniques in Visual Analysis

#todo[
  Marvin: planned structure:
- Theoretically we need to explain what human emotions are (emphasize on smiling)
- Machine Learning | Done
- Neural Networks | Done
  - Convolutional Neural Networks | Done
    - Feature Based
    - Image Based
Image Processing
- Technologies

further topics that need to be covered:
- Haar Feature
]

== History of Face Recognition
Face recognition technology started in the 1960s, when early computer programs could analyze face features by measuring the distances between key points, such as the eyes and nose. A major milestone came in the 1990s with the introduction of the “eigenfaces” approach, which used mathematical algorithms to identify unique face characteristics automatically. This made face recognition significantly more accurate and practical, opening doors for its use in security and surveillance. By the early 2000s, it was implemented in airports and other high-security areas, particularly for public safety.

Today, face recognition has become a common feature worldwide. In countries like China, it’s used extensively in public spaces for surveillance, shopping, and even as a payment method. In the United States, law enforcement agencies use it to identify suspects, while smartphones like iPhones and many Android devices offer face unlock features for secure access. Many airports globally also use face recognition to streamline passport control.

Public reactions to face recognition are mixed. On the one hand, people appreciate its convenience for personal use and the added layer of security it provides in certain settings. However, there are significant privacy concerns. In the European Union, strict data privacy laws have slowed down its adoption for surveillance, and in the United States, several cities and states have passed legislation limiting its use. Many worry about data security, the potential for mass surveillance, and possible biases that could lead to misidentification. This ongoing debate has led to calls for more regulation to ensure that face recognition technology is used responsibly and ethically.

@useCasesface@useCasesface2@useCaseface3

#todo[
  Revise due to poor source quality and lack of references.
  Also maybe move this to another spot
]

== Emotion Recognition
Emotions play a significant role in this thesis and need to be described in detail to understand their importance and the technology used to recognize them.

=== Emotions
Emotions are complex psychological states characterized by physiological changes, cognitive processes, and behavioral responses. They play a pivotal role in our daily lives, influencing communication, decision-making, and social interactions. Emotions are expressed through a variety of channels, including facial expressions, body language, vocal tone, and other nonverbal signals. Scientific research has identified six universal emotions: joy, sadness, fear, anger, surprise, and disgust @whatAreEmotions. These emotions are expressed and recognized similarly across all cultures, highlighting their fundamental importance to human experience.

=== Application of Emotion Recognition

The automotive industry is leveraging #acr("FER") technology to enhance driver safety and comfort. Emotion recognition systems in vehicles can detect a driver's mood and alertness, thereby adjusting safety mechanisms accordingly. For instance, these systems can alert drivers if they appear drowsy or distracted, potentially preventing accidents.

Companies are also utilizing emotion detection tools to analyze consumer sentiments about products. For example, virtual try-on apps can benefit from emotion recognition by capturing a user's response to different makeup looks or hairstyles. This feedback is invaluable for brands, as it allows them to recommend products that customers are likely to enjoy and purchase, thus improving customer satisfaction and sales.

In the field of market research, emotion detection tools can be employed for real-time analysis of viewer reactions to advertisements. This enables advertisers to optimize content for emotional engagement and tailor advertising strategies to the viewer's emotional state. By understanding and leveraging emotional responses, advertisers can create more impactful and effective marketing campaigns. @useCaseEmotion.

#pagebreak()
== Machine Learning
#acr("ML") is a subfield of #acr("AI") focused on enabling computers to learn from data and make predictions without explicit programming. The term "machine learning" was coined by Arthur Samuel in the 1950s, who developed algorithms that allowed computers to improve performance through experience. 

Neural networks, a key component of #acr("ML"), are computational models inspired by the human brain. They consist of layers of interconnected neurons that process and learn from data. Early breakthroughs, including backpropagation, by researchers like Geoffrey Hinton and Yann LeCun, allowed neural networks to effectively handle tasks like pattern recognition.

Today, #acr("ML") is widely applied across various fields, including supervised learning for tasks like medical diagnosis and unsupervised learning for clustering and recommendation systems. It is also central to advancements in natural language processing, image and speech recognition, and autonomous systems such as self-driving cars. The continued growth of data and computational power drives the increasing integration of #acr("ML") into modern technologies.
@machineLearning
#figure(
  image("../images/zusammenhangML&NN.png"), caption: [Machine Learning Field]
)
#align(center)[This image was found in @machineLearningImage.]

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