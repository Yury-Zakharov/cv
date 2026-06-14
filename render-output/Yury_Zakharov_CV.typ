// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Yury Zakharov",
  title: "Yury Zakharov - CV",
  footer: context { [#emph[Yury Zakharov -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in June 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.4in,
  page-bottom-margin: 0.4in,
  page-left-margin: 0.4in,
  page-right-margin: 0.4in,
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
    month: 6,
    day: 14,
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

Senior .NET backend engineer and technical leader with 15+ years of experience designing high-integrity, large-scale regulated systems, financial platforms, and distributed architectures. Expert in C\#, domain-driven design, contract-first API development, and functional-inspired code. Proven track record of modernizing volatile legacy codebases, enhancing system correctness, and elevating team engineering standards across UK and international markets. Seeking remote-first Senior Backend or Technical Lead positions.

== Experience

#regular-entry(
  [
    #strong[Senior Backend Consultant & R&D Engineer], Independent Technical Consultancy -- London, UK

  ],
  [
    Nov 2025 – present

  ],
  main-column-second-row: [
    - Delivering independent technical analysis, architectural proofs-of-concept, and deep-dive research into .NET 10 performance optimizations.

    - Developing commercial-grade, open-source compliance validation engines and local-first developer tooling to ensure data correctness in distributed environments.

    - Engineering highly resilient, zero-cloud-dependency backend prototypes utilizing advanced declarative and specification-driven design patterns.

    - Evaluating and designing specification-driven development workflows utilizing autonomous AI agents to automate contract verification and accelerate compliance testing.

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

    

    - Introduced contract-first development across cross-functional teams, reducing integration defects by #strong[5\%] and accelerating API delivery timelines.

    - Extended in-house domain-specific language with SQL backend, improving developer productivity and broadening ORM support

    - Formalised Swagger\/OpenAPI integration testing, removing #strong[\~10\%] of low-value tests and greatly improving stability and confidence

    - Mentored engineers and ran internal sessions on functional design and system correctness, raising team capability and engineering standards

    - Pioneered the safe adoption and governance of GitHub Copilot within the backend engineering team, establishing best practices that accelerated delivery lifecycles while maintaining strict architectural patterns.

  ],
)

#regular-entry(
  [
    #strong[Senior Software Engineer (Contract)], Regulated Financial Institutions (Allen & Overy, Mizuho, Vanquis Bank) -- London, UK

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

    

    - Delivered core trading features and minimized technical debt through systematic refactoring and static analysis while maintaining strict system stability.

    - Substantially improved the testability and operational reliability of backend services integrated with Xoserve Gemini and OpenLink Endur.

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

    

    - Integrated platform with Barclays FX using FIX 4.2, reducing order execution latency from #strong[minutes to milliseconds]

    - Automated SWIFT reconciliation processes, cutting manual work from #strong[hours to seconds]

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
    Jan 2000 – May 2014

  ],
  main-column-second-row: [
    #summary[Backend-focused engineering roles spanning banking, corporate analytics, and high-volume enterprise systems.]

    

    - Architected and delivered data-intensive backend integrations, messaging infrastructure, and relational database systems.

    - Championed early automation, continuous integration, and rigid testing standards across legacy software environments.

  ],
)

== Technologies

#strong[Backend Engineering (.NET):] Expert – C\#, .NET, .NET Core, ASP.NET, ASP.NET Core, Web APIs, REST, OpenAPI, Swagger

#strong[Architecture & Design:] Advanced – Backend Architecture, Domain Modelling, Modular Design, Legacy System Modernisation, API Design, Contract-First Development

#strong[Engineering Practices:] Advanced – Declarative Design, Functional Programming Concepts, Specification-Driven Development, Testing and Verification, CI\/CD, Developer Tooling, Typescript, Elm & Elm Architecture

#strong[Data & Integration:] Advanced – SQL Server, Relational Databases, Messaging, RabbitMQ, AWS SQS, AWS SNS, System Integration, NHibernate, Entity Framework, Dapper

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
