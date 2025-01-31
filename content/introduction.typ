#import "@preview/note-me:0.2.1": *
#import "@preview/acrostiche:0.3.5": acr, acrpl

// context from project definition
/*
Projektziel: 

Studienarbeit besteht aus der Entwicklung eines Softwaresystems.

Zum Projektziel gehört außerdem die Ausarbeitung der Arbeit selbst und der Dokumentationen. Folgende Themen müssen im Rahmen der Ausarbeitung recherchiert oder bearbeitet werden:

- Grundlagensammlung (Modelle trainieren in Python)
- Anforderungsanalyse

Kernanforderungen an das Softwaresystem:

Das Ziel dieser Arbeit ist es, der Serie „Last One Laughing" (LOL) einen Service zur Verfügung zu stellen, der lächelnde und lachende Gesichter automatisch erkennt.

Folgende Punkte gehören zu den funktionalen Anforderungen:

- Gesichtserkennung: Der Service überwacht die Kamerastreams. Bei erkannter Bewegung wird mittels Bilderkennungs-Algorithmen überprüft, ob sich ein Gesicht im Bild befindet.
- Mimikerkennung: Wurde ein Gesicht erkannt, prüft der Service, ob es lächelt oder lacht.
- Aktion: Bei erkannter Mimik wird ein Alarm ausgelöst.
- Streaming: Die Kameradaten werden an den Server gesendet, damit unser Service diese analysieren kann.
- Motorsteuerung (optional): Da sich die Menschen im Raum bewegen, soll eine Kamera diese Gesichter trotzdem verfolgen können.

Weitere nicht-funktionale Anforderungen sind:

- Zuverlässigkeit: Erkennungen von Personen und deren Aktionen müssen konstant zuverlässig erfolgen. Fehleinschätzungen dürfen keine falschen Aktionen auslösen.
- Reaktionszeit: Sobald ein lächelndes oder lachendes Gesicht erkannt wird, muss die Reaktion nahezu in Echtzeit erfolgen, um die Person unmittelbar zu informieren.
- Datenschutz: Kameraaufnahmen und daraus extrahierte Daten werden nur kurzzeitig und verschlüsselt gespeichert.

Technische Anforderungen:

Der Service wird in Python geschrieben, da diese Sprache im KI-Bereich weit verbreitet ist und viele Foren und Bibliotheken zur Verfügung stellt.

Informationen zum Betreuer:

Es finden nach Bedarf Absprachen mit unserem Betreuer statt, um ihn stets auf den neuesten Stand zu bringen.
*/


/* Planning of Chapter
= Introduction

== Motivation
#todo[
  - state the general topic and give some background
  - provide a review of the literature related to the topic
  - define the terms and scope of the topic
]

== Problem
#todo[
  - outline the current situation
  - evaluate the current situation (advantages/ disadvantages) and identify the gap
]

== Research Framework and Objectives

#todo[
  - identify the importance of the proposed research
- state the research problem/ questions
- state the research aims and/or research objectives
- state the hypotheses
- outline the order of information in the thesis
- outline the methodology
] 
*/

// real introduction chapter starts here:

= Introduction

== Motivation
The primary motivation behind this study is to develop a robust software system capable of automatically detecting smiling and laughing faces. The project is inspired by the popular series #acr("LOL"), where the ability to monitor and analyze face expressions in real-time can significantly enhance the viewing experience. This study aims to leverage advanced face recognition and emotion detection technologies to create a service that can accurately identify and respond to face expressions. The literature review will cover existing methods and technologies in face recognition and emotion detection, highlighting the advancements and challenges in the field. The scope of this study includes the development, implementation, and evaluation of the proposed system.

== Problem
The current state of face recognition and emotion detection technologies presents several challenges and limitations. While there have been significant advancements, existing systems often struggle with accuracy and real-time performance, especially in dynamic environments. The primary problem addressed in this study is the need for a reliable and efficient system that can detect smiling and laughing faces in real-time with high accuracy. The gap identified is the lack of a specialized solution tailored for the specific requirements of the #acr("LOL") series, including real-time monitoring, immediate response, and high reliability. This study aims to bridge this gap by developing a system that meets these specific needs.

// Eigentlich müsste man hier schon ein oder ein paar papers zitieren und die Forschungslücke genauer beschreiben. 
//! TODO: Suche paper für problem 

== Research Framework and Objectives
The importance of this research lies in its potential to enhance the viewing experience of the #acr("LOL") series by providing a reliable and efficient face expression detection system. The research problem is to develop a system that can accurately detect smiling and laughing faces in real-time. The research aims and objectives include:
- Developing a face recognition module to detect faces in camera streams.
- Implementing an emotion detection module to identify smiling and laughing expressions.
- Ensuring real-time performance and immediate response to detected expressions.
- Evaluating the system's accuracy and reliability through comprehensive testing.

// --- Den Teil könnte man für Schätzle erstmal rauslassen

The hypotheses of this study are:
1. The proposed system will accurately detect smiling and laughing faces in real-time.
2. The system will provide immediate responses to detected expressions with minimal latency.

// ---

The methodology includes the development of the system using Python, leveraging existing libraries and frameworks for face recognition and emotion detection. The study will also involve extensive testing and evaluation to ensure the system meets the defined requirements.

== Thesis Structure
The order of information in this thesis will follow a structured approach:
1. *Introduction*: Provides the motivation, problem statement, and research objectives.
2. *Literature Review*: Reviews existing methods and technologies in face recognition and emotion detection.
3. *Methodology*: Details the development process, tools, and techniques used.
4. *Implementation*: Describes the implementation of the face recognition and emotion detection modules.
5. *Testing and Evaluation*: Presents the testing procedures, results, and evaluation of the system's performance.
6. *Conclusion*: Summarizes the findings, discusses the implications, and suggests future work.


// --- Lass das vielleicht drin

#todo[
  Diese Struktur ist sehr generisch und im Verlaufe der Dokumentation unserer Ergebnisse und der Entwicklung des Systems werden wir die Struktur anpassen müssen.
]

// ---