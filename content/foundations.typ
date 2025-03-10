#import "@preview/acrostiche:0.3.5": acr, acrpl
#import "@preview/note-me:0.2.1": *
#import "@preview/glossarium:0.5.4": gls

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
#acr("NN") are a type of #acr("ML") algorithm inspired by the structure and function of the human brain. 
They are composed of interconnected nodes, or "neurons," organized in layers. 
These networks are designed to recognize patterns in data and learn from experience, making them capable of performing complex tasks such as image recognition, natural language processing, and decision-making.

=== History of Neural Networks
Neural networks have come a long way since their origin in the 1940s.
Here is a brief overview of their evolution over the decades.

==== 1940s to 1970s

The birth of #acr("NN") can be traced back to 1943 when Warren McCulloch and Walter Pitts published their groundbreaking paper on how neurons might function. 
They proposed a simple model of #acrpl("NN") using electrical circuits, laying the foundation for future research in the field. @McCulloch1943

In 1949, Donald Hebb's seminal work, "The Organization of Behavior," introduced the concept of neural plasticity. 
Hebb proposed that neural pathways are strengthened through repeated use, a principle now known as Hebbian learning. 
This concept became fundamental to our understanding of how humans learn and would later influence the development of artificial #acr("NN"). @Hebb2005

The Dartmouth Conference in 1956, officially known as the Dartmouth Summer Research Project on Artificial Intelligence, is considered the founding event of the field of #acr("AI"). 
Organized by John McCarthy and others, it aimed to explore the potential for machines to simulate human intelligence through collaborative brainstorming among leading researchers @Mccarthy2006

A significant breakthrough came in 1959 when Bernard Widrow and Marcian Hoff of Stanford University developed the #acr("ADALINE") and #acr("MADALINE") models. 
#acr("ADALINE") was designed to recognize binary patterns, while #acr("MADALINE") became the first #acr("NN") applied to a real-world problem: eliminating echoes on phone lines @Graupe2018

In 1962, Widrow and Hoff introduced a learning procedure that would later influence the development of backpropagation algorithms. 
Their method examined the value before adjusting the weight, distributing the error across the network. 
This approach was a significant step towards creating more efficient learning algorithms for #acr("NN"). @Graupe2018

Despite these advancements, the field of #acrpl("NN") faced a setback in the late 1960s and early 1970s. 
The rise of traditional von Neumann architecture in computing overshadowed neural network research. Additionally, a paper suggesting the impossibility of extending single-layered networks to multiple layers further dampened enthusiasm in the field. 
Coupled with unfulfilled promises and philosophical concerns about "thinking machines," funding and research in neural networks declined significantly during this period. @Graupe2018

However, the field was not entirely dormant. 
In 1972, Teuvo Kohonen and James Anderson independently developed similar networks that would later contribute to the resurgence of interest in neural networks. 
In 1975, the first multilayered network was developed, albeit an unsupervised one.
@Anderson2000

==== 1980s to Present

The 1980s marked a renaissance for neural networks. 
In 1982, John Hopfield's presentation to the National Academy of Sciences introduced the concept of bidirectional connections in neural networks, sparking renewed interest in the field. 
The same year, Reilly and Cooper developed a "Hybrid network" with multiple layers, each employing different problem-solving strategies.
@Graupe2018

A pivotal moment came in 1986 when multiple research groups, including one led by David Rumelhart, independently developed the backpropagation algorithm. 
This breakthrough allowed for the training of multi-layer networks, greatly expanding the capabilities and potential applications of neural networks. @Graupe2018

The 1990s and 2000s saw an explosion of research and practical applications of neural networks. 
They began to be used in various fields, including pattern recognition, financial forecasting, and medical diagnosis. 
The advent of more powerful computing hardware and the availability of large datasets further accelerated progress in the field. @Anderson2000

In recent years, deep learning, a subset of neural networks with many layers, has revolutionized artificial intelligence. 
Breakthroughs in areas such as image and speech recognition, natural language processing, and game-playing AI (like AlphaGo) have been achieved using deep neural networks. @Anderson2000


Current research focuses on developing more efficient hardware for neural network computation, including specialized chips and optical computing. 
The goal is to create faster, more energy-efficient neural networks capable of learning and adapting in real-time. @Anderson2000

#pagebreak()
== Convolutional Neural Networks
Convolutional Neural Networks (CNNs) are a specialized type of deep neural network that are particularly effective for processing data with a grid-like topology, such as images, videos, and time-series data. 

=== Convolution

Convolution serves is important in various fields, e.g. image processing. 
It elegantly combines two functions, revealing how the shape of one is modified by the other. 
Understanding its principles is crucial for comprehending the mechanisms underlying many data processing techniques, including those employed in neural networks.  @Goodfellow-et-al-2016

At its core, convolution involves a dynamic interaction between two functions: an input signal, representing the data to be processed, and a kernel, a function acting as a filter or feature detector. 
This interaction can be visualized as a "sliding" operation. 
The kernel is first "flipped" or reflected about its origin, then systematically shifted across the input signal. 
At each position, a point-wise multiplication occurs between the kernel's values and the corresponding values of the input signal. 
These products are then summed, yielding a single output value. 
This process is repeated as the kernel slides across the entire input, generating the output signal. @Goodfellow-et-al-2016

Intuitively, convolution can be interpreted as a form of weighted averaging. 
The kernel acts as a set of weights, emphasizing or suppressing specific features in the input. 
For instance, a kernel with uniform weights smooths the input, reducing noise. Conversely, a kernel with sharp transitions highlights edges or abrupt changes. @Goodfellow-et-al-2016

In image processing, convolution is instrumental for tasks such as blurring, sharpening, and edge detection. 
By applying different kernels, one can extract various features from an image. 
A kernel with a Gaussian distribution blurs the image, while a kernel designed to detect intensity gradients identifies edges. 
This ability to extract features is fundamental to Convolutional Neural Networks (CNNs), where convolution layers learn to automatically extract relevant features from input images. @Goodfellow-et-al-2016

=== History

The beginnings of #acr("CNN") start in the late 1950s and early 1960s with the work of Hubel and Wiesel, who studied the visual cortex of cats. 
Their research revealed that neurons in the visual cortex respond to specific patterns of light and dark, organized in a hierarchical manner. 
This discovery inspired the concept of receptive fields, where neurons respond to local regions of the input, laying the foundation for the convolutional operation. @Goodfellow-et-al-2016

In the 1980s, Kunihiko Fukushima introduced the Neocognitron, a hierarchical, multi-layered neural network designed to recognize handwritten characters. 
The Neocognitron incorporated concepts such as local receptive fields and weight sharing, which are fundamental to modern CNNs. 
However, due to computational limitations and the lack of effective training algorithms, the Neocognitron did not achieve widespread adoption. @Fukushima1983

A significant leap forward occurred in the late 1980s and early 1990s with the work of Yann LeCun and his colleagues at Bell Labs. 
They developed LeNet, a CNN architecture designed for handwritten digit recognition. 
LeNet demonstrated the effectiveness of backpropagation for training CNNs and showcased their ability to learn hierarchical representations of visual data. 
LeNet's success in recognizing handwritten digits for postal code recognition highlighted the practical potential of CNNs. @Goodfellow-et-al-2016

Despite LeNet's advancements, CNNs remained relatively niche for several years. 
The lack of powerful computing hardware and large datasets hindered their application to more complex tasks. 
However, the early 2000s witnessed a confluence of factors that catalyzed a resurgence in CNN research. 
The availability of powerful GPUs and the emergence of large-scale image datasets, such as ImageNet, provided the necessary resources for training deeper and more complex CNN architectures. @Goodfellow-et-al-2016

The watershed moment arrived in 2012 with the ImageNet Large Scale Visual Recognition Challenge (ILSVRC). 
Alex Krizhevsky, Ilya Sutskever, and Geoffrey Hinton introduced AlexNet, a deep CNN that achieved a groundbreaking performance, significantly outperforming traditional machine learning methods. 
AlexNet's success demonstrated the power of deep CNNs for large-scale image recognition and ignited the modern deep learning revolution. @Krizhevsky2017

Following AlexNet, numerous advancements further enhanced CNN architectures. 
VGGNet introduced deeper networks with smaller convolutional filters, demonstrating the benefits of increased depth. 
GoogLeNet and Inception architectures incorporated inception modules to capture features at multiple scales. 
ResNet introduced residual connections, enabling the training of extremely deep networks. @Goodfellow-et-al-2016

Beyond image recognition, CNNs have found applications in diverse fields, including natural language processing, speech recognition, and medical image analysis. 
Their ability to learn hierarchical representations and extract relevant features from complex data has made them a cornerstone of modern artificial intelligence. @Goodfellow-et-al-2016

#pagebreak()

#todo[add source from here on out]

=== Face Recognition
Face recognition technology allows computers to identify people from images or videos. 
This chapter explores how this technology developed, from early attempts to modern systems using advanced computer learning.

==== History

#heading(outlined: false, depth: 5, numbering: none)[Early Research]
Before deep learning, face recognition relied on various techniques that, while pioneering, faced significant limitations. 
Early methods focused on extracting geometric features or comparing pixel patterns directly. One prominent approach was the use of eigenfaces. 
This technique, developed in the early 1990s, employed Principal Component Analysis (PCA) to reduce the dimensionality of face images, representing faces as linear combinations of eigenvectors. 
While effective under controlled lighting and pose conditions, eigenfaces struggled with variations in illumination, head orientation, and facial expressions.

Another early strategy involved geometric feature-based methods. These techniques aimed to measure distances and ratios between facial landmarks, such as the eyes, nose, and mouth. 
By comparing these measurements, systems could attempt to identify individuals. 
However, the accuracy of these methods was highly dependent on precise landmark detection and was also vulnerable to variations in pose and expression.

Template matching was also employed, where a stored image of a face was directly compared to an input image. 
These methods were computationally simple but extremely sensitive to changes in lighting, pose, and scale.
These early attempts, while laying the groundwork for future advancements, highlighted the need for more robust and adaptable techniques capable of handling real-world variations.

#heading(outlined: false, depth: 5, numbering: none)[Impact]
The emergence of Convolutional Neural Networks (CNNs) revolutionized face recognition. 
CNNs' ability to automatically learn hierarchical features from raw pixel data significantly improved accuracy and robustness. 
Key architectures like DeepFace (Facebook) demonstrated the power of deep learning in achieving near-human-level face recognition performance. 
DeepFace utilized a deep neural network with multiple layers to learn complex representations of faces, achieving a breakthrough in accuracy on benchmark datasets.

FaceNet (Google) introduced the concept of embedding faces into a high-dimensional space where similar faces are close together. 
It used a triplet loss function, which trained the network to distinguish between different individuals while ensuring that faces of the same person were tightly clustered. 
This approach provided a highly efficient and accurate method for face verification and identification.

DeepID (Chinese University of Hong Kong) focused on learning discriminative features for face identification. 
It demonstrated the effectiveness of training deep networks with large-scale datasets and advanced loss functions, leading to significant improvements in face recognition accuracy.

CNNs addressed many of the limitations of earlier methods. 
They could handle variations in pose, lighting, and occlusion through their learned feature representations. 
Data augmentation techniques further enhanced the robustness of these models by exposing them to a wide range of input variations during training.

#heading(outlined: false, depth: 5, numbering: none)[Modern Face Recognition]
Modern face recognition systems leverage vast datasets like MS-Celeb-1M and VGGFace2, enabling the training of highly accurate models. 
Advanced loss functions, such as ArcFace and CosFace, have been developed to further improve discriminative power by maximizing inter-class variance and minimizing intra-class variance.

Applications of face recognition have expanded significantly, including security systems, access control, social media tagging, personalized experiences, and law enforcement. 
However, the widespread use of face recognition has raised significant ethical concerns. 
Issues such as privacy violations, potential for misuse, and algorithmic bias have prompted calls for regulations and responsible development practices.

#pagebreak()
=== Facial Expresson Recognition
Facial expression recognition, or #acr("FER"), enables computers to understand emotions by analyzing facial expressions. 
This chapter explains the history of #acr("FER"), from basic emotion studies to the use of powerful computer programs.

==== History

#heading(outlined: false, depth: 5, numbering: none)[Early Research]
The foundation of emotional recognition research was laid by the pioneering work of Paul Ekman, who identified six basic emotions universally expressed through facial expressions: happiness, sadness, anger, fear, surprise, and disgust.

Early attempts at automated #acr("FER") relied on the Facial Action Coding System (FACS). 
FACS, developed by Ekman and Friesen, provides a comprehensive system for coding facial muscle movements. 
Researchers used FACS to analyze facial expressions and develop rule-based systems for emotion classification. 
These systems relied on predefined rules that mapped specific AU combinations to emotional states.

However, rule-based systems were limited by their reliance on manual feature extraction and their inability to handle subtle variations in expressions. 
They also struggled with the complexity of real-world scenarios, where expressions are often nuanced and context-dependent.

#heading(outlined: false, depth: 5, numbering: none)[CNNs and FER]
The application of CNNs to #acr("FER") has significantly improved accuracy and robustness. 
CNNs can automatically learn relevant features from facial images, eliminating the need for manual feature extraction. 
Deep learning models have demonstrated superior performance in recognizing a wide range of emotions, including subtle and compound expressions.

Data augmentation plays a crucial role in training effective #acr("FER") models. 
Techniques such as random cropping, flipping, and rotation are used to increase the diversity of training data and improve the model's ability to generalize. 
Due to the relative scarcity of labeled emotional data, data augmentation is extremely important in this field.

For video-based #acr("FER"), temporal information is crucial. 
Recurrent Neural Networks (RNNs) and 3D CNNs are used to capture the temporal dynamics of facial expressions. 
RNNs can model the sequential nature of expressions, while 3D CNNs can extract spatio-temporal features directly from video frames.

Despite advancements, #acr("FER") still faces challenges. 
Subtle expressions, cultural differences in expression, dataset bias, and the need to incorporate contextual information remain active areas of research. 
Ethical concerns regarding the potential for misinterpretation and misuse of #acr("FER") technology have also emerged, emphasizing the need for responsible development and deployment.