#import "@preview/acrostiche:0.3.5": acr, acrpl
#import "@preview/note-me:0.2.1": *

// TODO: Echtzeit Arten müssen definiert werden

// = Fundamentals (old)
// - Fundamentals of face Recognition and Emotion Detection
// - Psychological Theories and Mechanisms of Smiling and Laughter
// - Overview of Machine Learning and Deep Learning Techniques in Visual Analysis

// #todo[
// - Theoretically we need to explain what human emotions are (emphasize on smiling)
// - Machine Learning | Done
// - Neural Networks | Done
//   - Convolutional Neural Networks | Done
//     - Feature Based
//     - Image Based
// Image Processing
// - Technologies

// further topics that need to be covered:
// - Haar Feature
// ]

// == History of Face Recognition
// Face recognition technology started in the 1960s, when early computer programs could analyze face features by measuring the distances between key points, such as the eyes and nose. A major milestone came in the 1990s with the introduction of the “eigenfaces” approach, which used mathematical algorithms to identify unique face characteristics automatically. This made face recognition significantly more accurate and practical, opening doors for its use in security and surveillance. By the early 2000s, it was implemented in airports and other high-security areas, particularly for public safety.

// Today, face recognition has become a common feature worldwide. In countries like China, it’s used extensively in public spaces for surveillance, shopping, and even as a payment method. In the United States, law enforcement agencies use it to identify suspects, while smartphones like iPhones and many Android devices offer face unlock features for secure access. Many airports globally also use face recognition to streamline passport control.

// Public reactions to face recognition are mixed. On the one hand, people appreciate its convenience for personal use and the added layer of security it provides in certain settings. However, there are significant privacy concerns. In the European Union, strict data privacy laws have slowed down its adoption for surveillance, and in the United States, several cities and states have passed legislation limiting its use. Many worry about data security, the potential for mass surveillance, and possible biases that could lead to misidentification. This ongoing debate has led to calls for more regulation to ensure that face recognition technology is used responsibly and ethically.

// @useCasesface@useCasesface2@useCaseface3

// #todo[
//   Wissenschaftliche Quellen raussuchen. Struktur passt mit dem Aufbau von Face Recognition auf Emotion Recognition.
//   Der rote Faden fehlt zwischen den einzelnen Kapiteln
// ]

// == Emotion Recognition
// Emotions play a significant role in this thesis and need to be described in detail to understand their importance and the technology used to recognize them.

// === Emotions
// Emotions are complex psychological states characterized by physiological changes, cognitive processes, and behavioral responses. They play a pivotal role in our daily lives, influencing communication, decision-making, and social interactions. Emotions are expressed through a variety of channels, including facial expressions, body language, vocal tone, and other nonverbal signals. Scientific research has identified six universal emotions: joy, sadness, fear, anger, surprise, and disgust @whatAreEmotions. These emotions are expressed and recognized similarly across all cultures, highlighting their fundamental importance to human experience.

// === History of Emotion Recognition

// The automotive industry is leveraging #acr("FER") technology to enhance driver safety and comfort. Emotion recognition systems in vehicles can detect a driver's mood and alertness, thereby adjusting safety mechanisms accordingly. For instance, these systems can alert drivers if they appear drowsy or distracted, potentially preventing accidents.

// Companies are also utilizing emotion detection tools to analyze consumer sentiments about products. For example, virtual try-on apps can benefit from emotion recognition by capturing a user's response to different makeup looks or hairstyles. This feedback is invaluable for brands, as it allows them to recommend products that customers are likely to enjoy and purchase, thus improving customer satisfaction and sales.

// In the field of market research, emotion detection tools can be employed for real-time analysis of viewer reactions to advertisements. This enables advertisers to optimize content for emotional engagement and tailor advertising strategies to the viewer's emotional state. By understanding and leveraging emotional responses, advertisers can create more impactful and effective marketing campaigns. @useCaseEmotion.

// #pagebreak()
// == Machine Learning
// #acr("ML") is a subfield of #acr("AI") focused on enabling computers to learn from data and make predictions without explicit programming. The term "machine learning" was coined by Arthur Samuel in the 1950s, who developed algorithms that allowed computers to improve performance through experience. 

// Neural networks, a key component of #acr("ML"), are computational models inspired by the human brain. They consist of layers of interconnected neurons that process and learn from data. Early breakthroughs, including backpropagation, by researchers like Geoffrey Hinton and Yann LeCun, allowed neural networks to effectively handle tasks like pattern recognition.

// Today, #acr("ML") is widely applied across various fields, including supervised learning for tasks like medical diagnosis and unsupervised learning for clustering and recommendation systems. It is also central to advancements in natural language processing, image and speech recognition, and autonomous systems such as self-driving cars. The continued growth of data and computational power drives the increasing integration of #acr("ML") into modern technologies.
// @machineLearning
// #figure(
//   image("../images/zusammenhangML&NN.png"), caption: [Machine Learning Field]
// )
// #align(center)[This image was found in @machineLearningImage.]

// == Neural Networks

// A #acr("NN") is a general framework of interconnected nodes, or "neurons," organized in layers. Typically, it consists of an input layer, one or more hidden layers, and an output layer. In standard neural networks, each neuron in one layer connects to every neuron in the next, creating what is called a “fully connected” structure. This setup is suitable for tasks like classification, regression, and prediction. However, it is less efficient when handling large image data, as it does not inherently recognize spatial patterns, such as edges or textures, within images.

// That is for a #acr("CNN"). It is a specialized type of neural network designed to process image and video data effectively. #acrpl("CNN") use *convolutional layers* to apply filters to small sections of the image, allowing the network to extract features like edges, shapes, and textures. This convolutional process preserves the spatial relationships within the image, making #acrpl("CNN") exceptionally effective for tasks like image recognition and classification.

// The unique structure of #acrpl("CNN") often includes:
// - *Convolutional Layers* that extract essential features from the image,
// - *Pooling Layers* that reduce data volume while emphasizing significant features, and
// - *Fully Connected Layers* that integrate these features and produce the final classification.

// This architecture makes CNNs more efficient than standard neural networks by reducing the number of parameters and focusing on image-specific patterns, allowing CNNs to process visual data with a high degree of accuracy.

// @whatIsNN@whatIsCNN

// s#pagebreak()


= Fundamentals (new)
// #todo[
//   - What is a neural network
//     - History
//     - 1943: Warren McCulloch and Walter Pitts -> paper about neurons
//     - 1949: Donal Hebb -> neurla pathways ('the organization of behavior')
//     - 1950s: Nathanial Rochester
//     - 1959: Bernard Widrow and Marcian Hoff -> ADALINE, MADALINE
//     - 1962: Widrow & Hoff -> Learning Procedure (weights)
//     - von Neumann became popular and and neural research was left behind
//     - Statement: Multi Layered neural Networks are not possible to train
//       - 1969: Pereptrons: An Introduction to Computional Geometry (Marvin Minsky and Seymour Papert) -> Perceptrons are limited in their capabilities
//       - non-differentiable activation functions (step function)
//     - 1975: first multilayered network
//     - 1982: John Hopfield -> introduction of bidirectional lines (before only one way connections)
//     - 1982: US-Japan collaboration -> US feat of being leftbehind -> more funding
//     - 1986: Multi Layered NN became known to the public -> question arise: how can widrow-huff be expanded to multi layer nn
//       - 1986: Rumelhart, Hinton, Williams -> refuted limitation of multi layer nn due to back progpagation  
//   - what is convoulution
//     - History
//   - what is a cnn
//     - Neocognitron, LeNet-5, AlexNet, ZFNet, VGGNet, GoogLeNet, ResNet

    
// ]

== Neural Networks
Neural networks are a type of machine learning algorithm inspired by the structure and function of the human brain. 
They are composed of interconnected nodes, or "neurons," organized in layers. 
These networks are designed to recognize patterns in data and learn from experience, making them capable of performing complex tasks such as image recognition, natural language processing, and decision-making.

=== History of Neural Networks
Neural networks have come a long way since their inception in the 1940s. 
Here is a brief overview of their evolution over the decades.

==== 1940s to 1970s

The birth of neural networks can be traced back to 1943 when neurophysiologist Warren McCulloch and mathematician Walter Pitts published their groundbreaking paper on how neurons might function. 
They proposed a simple model of neural networks using electrical circuits, laying the foundation for future research in the field. @McCulloch1943

In 1949, Donald Hebb's seminal work, "The Organization of Behavior," introduced the concept of neural plasticity. 
Hebb proposed that neural pathways are strengthened through repeated use, a principle now known as Hebbian learning. 
This concept became fundamental to our understanding of how humans learn and would later influence the development of artificial neural networks. @Hebb2005

The Dartmouth Conference in 1956, officially known as the Dartmouth Summer Research Project on Artificial Intelligence, is considered the founding event of the field of artificial intelligence (AI). 
Organized by John McCarthy and others, it aimed to explore the potential for machines to simulate human intelligence through collaborative brainstorming among leading researchers @Mccarthy2006

A significant breakthrough came in 1959 when Bernard Widrow and Marcian Hoff of Stanford University developed the ADALINE (Adaptive Linear Element) and MADALINE (Multiple ADALINE) models. 
ADALINE was designed to recognize binary patterns, while MADALINE became the first neural network applied to a real-world problem: eliminating echoes on phone lines @Graupe2018

In 1962, Widrow and Hoff introduced a learning procedure that would later influence the development of backpropagation algorithms. 
Their method examined the value before adjusting the weight, distributing the error across the network. 
This approach was a significant step towards creating more efficient learning algorithms for neural networks. @Graupe2018

Despite these advancements, the field of neural networks faced a setback in the late 1960s and early 1970s. 
The rise of traditional von Neumann architecture in computing overshadowed neural network research. Additionally, a paper suggesting the impossibility of extending single-layered networks to multiple layers further dampened enthusiasm in the field. 
Coupled with unfulfilled promises and philosophical concerns about "thinking machines," funding and research in neural networks declined significantly during this period. @Graupe2018

However, the field was not entirely dormant. 
In 1972, Teuvo Kohonen and James Anderson independently developed similar networks that would later contribute to the resurgence of interest in neural networks. 
In 1975, the first multilayered network was developed, albeit an unsupervised one.

#todo[source?]

==== 1980s to Present

The 1980s marked a renaissance for neural networks. In 1982, John Hopfield's presentation to the National Academy of Sciences introduced the concept of bidirectional connections in neural networks, sparking renewed interest in the field. The same year, Reilly and Cooper developed a "Hybrid network" with multiple layers, each employing different problem-solving strategies.
@Graupe2018

A pivotal moment came in 1986 when multiple research groups, including one led by David Rumelhart, independently developed the backpropagation algorithm. 
This breakthrough allowed for the training of multi-layer networks, greatly expanding the capabilities and potential applications of neural networks. @Graupe2018

The 1990s and 2000s saw an explosion of research and practical applications of neural networks. 
They began to be used in various fields, including pattern recognition, financial forecasting, and medical diagnosis. 
The advent of more powerful computing hardware and the availability of large datasets further accelerated progress in the field. @2000

In recent years, deep learning, a subset of neural networks with many layers, has revolutionized artificial intelligence. 
Breakthroughs in areas such as image and speech recognition, natural language processing, and game-playing AI (like AlphaGo) have been achieved using deep neural networks. @2000


Current research focuses on developing more efficient hardware for neural network computation, including specialized chips and optical computing. 
The goal is to create faster, more energy-efficient neural networks capable of learning and adapting in real-time. @2000

== Convolutional Neural Networks
Convolutional Neural Networks (CNNs) are a specialized type of deep neural network that are particularly effective for processing data with a grid-like topology, such as images, videos, and time-series data. @Thoma2017

=== Convolution



=== History
