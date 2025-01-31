#import "@preview/clean-dhbw:0.1.0": *
#import "acronyms.typ": acronyms
#import "glossary.typ": glossary

#show: clean-dhbw.with(
  title: "Implementation on a smile tracking AI model ",
  authors: (
    (name: "Jeremie Bents", student-id: "1941564", course: "TINF22B2", course-of-studies: "Informatik"),
    (name: "Marvin Lindner", student-id: "4274538", course: "TINF22B2", course-of-studies: "Informatik")
  ),
  type-of-thesis: "Studienarbeit",
  acronyms: acronyms, // displays the acronyms defined in the acronyms dictionary
  at-university: true, // if true the company name on the title page and the confidentiality statement are hidden
  city: "Karlsruhe",
  bibliography: bibliography("bib.yaml"),
  date: datetime.today(),
  glossary: glossary, // displays the glossary terms defined in the glossary dictionary
  language: "en", // en, de
  supervisor: (university: "Prof. Dr. Roland Schätzle"),
  university: "Duale Hochschule Baden-Württemberg",
  university-location: "Karlsruhe",
  university-short: "DHBW",
  // for more options check the package documentation (https://typst.app/universe/package/clean-dhbw)
)

// Edit this content to your liking

#include "content/introduction.typ"
#include "content/foundations.typ"
#include "content/methodology.typ"
#include "content/modelImplementation.typ"
#include "content/websiteImplementation.typ"
#include "content/testing.typ"
#include "content/conclusion.typ"


// = Erläuterungen

// Im folgenden werden einige nützliche Elemente und Funktionen zum Erstellen von Typst-Dokumenten mit diesem Template erläutert.

// == Abkürzungen

// Verwende die `acr`-Funktion und deren Geschwister `acrpl`, `acrs` und `acrspl`, um Abkürzungen aus dem Abkürzungsverzeichnis einzufügen. Beispiele dafür sind: 

// - #acr("HTTP") – `acr`: Singular mit Erläuterung
// - #acrpl("API") – `acrpl`: Plural mit Erläuterung
// - #acrs("REST") - `acrs`: Singular ohne Erläuterung
// - #acrspl("API") – `acrspl`: Plural ohne Erläuterung

// == Glossar

// Verwende die `gls`-Funktion, um Ausdrücke aus dem Glossar einzufügen, die dann dorthin verlinkt werden. Ein Beispiel dafür ist: 

// - Eine #gls("Softwareschnittstelle") ist ein logischer Berührungspunkt in einem Softwaresystem. Sie ermöglicht und regelt den Austausch von Kommandos und Daten zwischen verschiedenen Prozessen und Komponenten.

// == Listen

// Es gibt Aufzählungslisten oder nummerierte Listen:

// - Dies
// - ist eine
// - Aufzählungsliste

// + Und
// + hier wird
// + alles nummeriert.

// == Abbildungen und Tabellen

// Abbildungen und Tabellen (mit entsprechenden Beschriftungen) werden wie folgt erstellt.

// === Abbildungen

// #figure(caption: "Eine Abbildung", image(width: 4cm, "assets/ts.svg"))

// === Tabellen

// #figure(
//   caption: "Eine Tabelle",
//   table(
//     columns: (1fr, 50%, auto),
//     inset: 10pt,
//     align: horizon,
//     table.header(
//       [],
//       [*Area*],
//       [*Parameters*],
//     ),

//     text("cylinder.svg"),
//     $ pi h (D^2 - d^2) / 4 $,
//     [
//       $h$: height \
//       $D$: outer radius \
//       $d$: inner radius
//     ],

//     text("tetrahedron.svg"), $ sqrt(2) / 12 a^3 $, [$a$: edge length],
//   ),
// )<table>

// == Programm Quellcode

// Quellcode mit entsprechender Formatierung wird wie folgt eingefügt:

// #figure(
//   caption: "Ein Stück Quellcode",
//   sourcecode[```ts
//     const ReactComponent = () => {
//       return (
//         <div>
//           <h1>Hello World</h1>
//         </div>
//       );
//     };

//     export default ReactComponent;
//     ```],
// )


// // == Verweise

// // Für Literaturverweise verwendet man die `cite`-Funktion oder die Kurzschreibweise mit dem \@-Zeichen:
// // - `#cite(form: "prose", <iso18004>)` ergibt: \ #cite(form: "prose", <iso18004>)
// // - Mit `@iso18004` erhält man: @iso18004

// // Tabellen, Abbildungen und andere Elemente können mit einem Label in spitzen Klammern gekennzeichnet werden (die Tabelle oben hat z.B. das Label `<table>`). Sie kann dann mit `@table` referenziert werden. Das ergibt im konkreten Fall: @table

// = Fazit

// #lorem(50)

// #lorem(120)

// #lorem(80)