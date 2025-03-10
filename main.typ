#import "@preview/clean-dhbw:0.2.1": *
#import "acronyms.typ": acronyms
#import "glossary.typ": glossary

#show: clean-dhbw.with(
  title: "Improving Performance in Real-Time Emotion Recognition",
  authors: (
    (name: "Jeremie Bents", student-id: "1941564", course: "TINF22B2", course-of-studies: "Informatik"),
    (name: "Marvin Lindner", student-id: "4274538", course: "TINF22B2", course-of-studies: "Informatik")
  ),
  type-of-thesis: "Studienarbeit",
  acronyms: acronyms, // displays the acronyms defined in the acronyms dictionary
  at-university: true, // if true the company name on the title page and the confidentiality statement are hidden
  city: "Karlsruhe",
  bibliography: bibliography("literature.bib"),
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