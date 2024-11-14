#import "template.typ": project, codefigure, hr, quote, note, weakbreak, caption_with_source

/// import acrostiche in every file you plan to use acronyms
#import "@preview/acrostiche:0.2.0": acr, acrpl

#show: project.with(
    // 'de' for german or 'en' for english.
    // Pull Requests for other languages are welcome! :)
    lang: "en",

    // Shows a line for a signature, if set to `false`,
    is_digital: true,

    // Display the confidential clause
    confidential_clause: false,

    ///
    /// Cover Sheet
    ///
    // Full title of your project
    title_long: "Die Entwicklung eines mimikerkennenden Systems zur
Erkennung lächelnder und lachender Gesichter",
    // Shortened title, which is displayed in the header on every page
    title_short: "???",
    // The type of your project
    type: "Studienarbeit 1 (T3_3101)",
    // Other information about you and your project
    firstname: "Jeremie Bents & Marvin Lindner",
    //lastname: "",
    signature_place: "Karlsruhe",
    matriculation_number: "???",
    course: "TINF21B2",
    submission_date: "???",
    processing_period: "11.10.2024 - ???",
    // supervisor_company: "Christian Klein",
    supervisor_university: "Dr. Roland Schätzle",

    // Disable the abstract by changing to `abstract: ()`
    // To load the abstract from a file use include("abstract.typ") instead of [...]`
    // If you only want one language, leave the comma at the end -> `("de", "Deutsch", []),` its necessary for syntax of the template
    abstract: (
      ("de", "Deutsch", include("content/extra/abstract_de.typ")),
      ("en", "English", include "content/extra/abstract_en.typ")
    ),

    // appendices: usage: ("Title", [content] || include("appendix.typ"))
    // change to `appendices: none` to remove appendix
    appendices: (
      ("Abbildungen", include("content/extra/fig_appendix.typ")), // appendix from file
    ),

    // Path/s to references - either .yaml or .bib files
    // * for `.yaml` files see: [hayagriva](https://github.com/typst/hayagriva)
    library_paths: ("bib.yaml"),

    // Specify acronyms here.
    // The first string is the acronym, the second is the singular form and the third is the plural form.
    // The plural form is optional, if not provided, the singular form `+ s` is used.
    //
    // Important: If you don't specify the plural form, make sure to append a `,` after the singular form.
    // This makes sure Typst doesn't interpret the list as a string
    acronyms: (
      "NN": ("Neural Network", ),
      "CNN": ("Convolutional Nerual Network", )
    ),
)


// You can now start writing :)

#include "content/introduction.typ"
#include "content/foundations.typ"
#include "content/research.typ"
#include "content/methodology.typ"
#include "content/modelImplementation.typ"
#include "content/websiteImplementation.typ"
#include "content/testing.typ"
#include "content/conclusion.typ"