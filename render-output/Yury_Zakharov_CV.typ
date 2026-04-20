// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Yury Zakharov",
  title: "Yury Zakharov - CV",
  footer: context { [#emph[Yury Zakharov -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Apr 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.45in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Raleway",
  typography-font-family-name: "Raleway",
  typography-font-family-headline: "Raleway",
  typography-font-family-connections: "Raleway",
  typography-font-family-section-titles: "Raleway",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: false,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: left,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.12cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.12cm,
  entries-highlights-space-between-items: 0.12cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 4,
    day: 20,
  ),
)


= Yury Zakharov

#connections(
  [#connection-with-icon("location-dot")[London, GB]],
  [#link("mailto:colonelcolt@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[colonelcolt\@gmail.com]]],
  [#link("tel:+44-7722-850063", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[07722 850063]]],
  [#link("https://github.com/Yury-Zakharov", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[Yury-Zakharov]]],
  [#link("https://linkedin.com/in/uzakharov", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[uzakharov]]],
)


== Summary

Senior .NET backend engineer with 15+ years in senior\/technical-lead roles and 30 years total experience. Specialises in C\#, large-scale regulated systems, legacy modernisation, contract-first architecture, domain-driven design, functional-inspired code, microservices and distributed systems. Proven track record delivering measurable improvements in correctness, performance, developer productivity and mentoring across financial, trading, and enterprise platforms in UK, Australia and USA. Seeking senior backend \/ technical-lead roles (remote-first preferred).

== Experience

#regular-entry(
  [
    #strong[Senior .NET Engineer (Independent)], Independent Technical Research -- London, GB

  ],
  [
    Nov 2025 – present

  ],
  main-column-second-row: [
    - Deep work on .NET 10, functional\/declarative architecture, spec-driven development and modern engineering practices

    - Built open-source tooling and personal R&D projects to stay current with cloud-native and AI-assisted development

    - Actively preparing for senior\/principal backend roles

  ],
)

#regular-entry(
  [
    #strong[Senior Software Engineer], #link("https://www.intelliflo.com/")[Intelliflo Ltd] -- Wimbledon, UK

  ],
  [
    Mar 2019 – Oct 2025

  ],
  main-column-second-row: [
    #summary[UK market leader in financial advice software. Senior backend engineer on regulated, business-critical platform operating across UK, Australia and USA. Collaborative technical leader in 10-person team focused on legacy modernisation, contract clarity, system correctness and developer productivity.]

    

    - Introduced contract-first development, significantly reducing API ambiguity and integration issues across internal\/external teams

    - Extended in-house domain-specific language with SQL backend, improving developer productivity and broadening ORM support

    - Formalised Swagger\/OpenAPI integration testing, removing \~10\% of low-value tests and greatly improving stability and confidence

    - Mentored engineers and ran internal sessions on functional design and system correctness, raising team capability and engineering standards

  ],
)

#regular-entry(
  [
    #strong[Senior Software Engineer (Contract)], Contract Roles (Allen & Overy, Mizuho, Vanquis Bank) -- London, UK

  ],
  [
    Apr 2018 – Mar 2019

  ],
  main-column-second-row: [
    #summary[Contract backend engineer delivering integration and compliance projects for three regulated financial institutions.]

    

    - Allen & Overy. Designed DMS integration components and incremental validation to de-risk migration

    - Mizuho. Led FIX protocol enhancements to achieve full MIFID II compliance for trading system

    - Vanquis Bank. Delivered integration to new credit-scoring system as part of major platform renovation

  ],
)

#regular-entry(
  [
    #strong[Senior Software Developer], #link("http://www.gazprom-mt.com/")[Gazprom Marketing & Trading] -- London, UK

  ],
  [
    Oct 2017 – Apr 2018

  ],
  main-column-second-row: [
    #summary[International energy trading organisation. Senior backend developer maintaining business-critical gas and energy trading systems.]

    

    - Delivered new trading features while maintaining high system stability in high-risk environment

    - Reduced technical debt through systematic refactoring and static analysis

    - Improved testability and reliability of services integrated with Xoserve Gemini and OpenLink Endur

  ],
)

#regular-entry(
  [
    #strong[Software Developer], #link("https://www.halofinancial.com/")[Halo Financial Limited] -- London, UK

  ],
  [
    Sept 2015 – Oct 2017

  ],
  main-column-second-row: [
    #summary[Financial services company specialising in FX products. Backend and integration developer on client-facing online FX trading platform.]

    

    - Integrated platform with Barclays FX using FIX 4.2, reducing order execution latency from minutes to milliseconds

    - Automated SWIFT reconciliation processes, cutting manual work from hours to seconds

    - Designed and introduced CI solution, significantly reducing production risk and deployment time

    - Migrated data from bespoke CRM to Microsoft Dynamics

  ],
)

#regular-entry(
  [
    #strong[Senior .NET Software Developer], #link("http://www.towerswatson.com/en-GB")[Towers Watson] -- Reigate, UK

  ],
  [
    May 2014 – Sept 2015

  ],
  main-column-second-row: [
    #summary[Global risk management and financial services consultancy. Senior developer on large modular enterprise financial platform.]

    

    - Contributed to architecture and development of modular platform integrating multiple internal products

    - Maintained high automated test coverage and promoted coding standards

    - Worked with QA to improve system reliability and release confidence

  ],
)

#regular-entry(
  [
    #strong[Software Engineer \/ Senior Engineer], Earlier Career (Various) -- UK & Russia

  ],
  [
    July 1995 – May 2011

  ],
  main-column-second-row: [
    #summary[Backend-focused roles in banking, trading, analytics, government and enterprise systems.]

    

    - Designed and delivered data-intensive backend systems and integrations

    - Introduced automation, messaging buses, and quality practices across multiple environments

  ],
)

== Technologies

#strong[Backend Engineering (.NET):] Expert – C\#, .NET, .NET Core, ASP.NET, ASP.NET Core, Web APIs, REST, OpenAPI, Swagger

#strong[Architecture & Design:] Advanced – Backend Architecture, Domain Modelling, Modular Design, Legacy System Modernisation, API Design, Contract-First Development

#strong[Engineering Practices:] Advanced – Declarative Design, Functional Programming Concepts, Specification-Driven Development, Testing and Verification, CI\/CD, Developer Tooling

#strong[Data & Integration:] Advanced – SQL Server, Relational Databases, Messaging, RabbitMQ, AWS SQS, AWS SNS, System Integration

#strong[Cloud & Modern Practices:] Working Knowledge – Azure, CI\/CD pipelines, Microservices, Distributed Systems, Containerisation (Docker, Podman)

#strong[Financial Systems & Protocols:] Working Knowledge – Financial Systems, Trading Systems, FIX Protocol (4.x), SWIFT Messaging, Settlement and Reconciliation, Low-Latency Systems, Regulated Environments

== Awards

#strong[Certified SAFe® 6 Scrum Master:] Scaled Agile

== Education

  #education-entry(
  [
    #strong[Moscow Institute of Chemical Engineering], Chemical Engineering -- Russia

  ],
  [
  ],
  main-column-second-row: [
  ],
)
