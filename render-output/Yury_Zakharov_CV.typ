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
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
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
    day: 16,
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

Senior backend software engineer with over 30 years of professional experience and long-term specialisation in the .NET ecosystem since its initial release.
Deep hands-on expertise in C\# and ownership of large, business-critical, regulated systems operating at market-leading scale across the UK, Australia, and the United States.
Strongly opinionated about software quality, correctness, and system design. Works in a declarative, functional-inspired style, applying concepts from functional programming to production C\# code to improve domain clarity, determinism, and long-term maintainability. Emphasises explicit domain modelling, verification-friendly designs, and requirement-driven development over ad hoc or patch-oriented solutions.
Approaches software development systematically, designing new functionality in the context of existing systems and addressing defects through root-cause analysis and structural remediation. Particularly effective in legacy modernisation initiatives, balancing evolutionary change with operational stability in regulated environments.
Acts as a technical leader within teams, focusing on architectural integrity, developer productivity, tooling, and engineering practices. Regularly mentors engineers and supports technical decision-making, while preferring senior individual-contributor and technical leadership roles over formal people management.

== Experience

#regular-entry(
  [
    #strong[Independent Technical Work], Independent \/ Career Transition

  ],
  [
    Nov 2025 – present

  ],
  main-column-second-row: [
    - Advanced work on .NET 10, functional design, and declarative system architecture, spec-driven AI coding agents

    - Open-source tooling and personal R&D projects

    - Active preparation for senior\/principal backend engineering roles

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
    #summary[UK market leader in financial advice software, operating regulated, business-critical platforms.]

    

    `Senior backend engineer working on a UK market-leading financial advice platform operating as a regulated, business-critical system across the UK, Australia, and the USA. Acted as a technical leader within a 10-person team, collaborating closely with multiple dependent teams. Focused on legacy modernisation, contract clarity, system correctness, and sustained improvements to developer productivity in a highly regulated environment.

    `

    

    - Introduced and enforced a contract-first development approach, significantly reducing ambiguity across internal and external APIs.

    - Extended an in-house domain-specific language with a SQL backend, broadening ORM support and lowering the entry barrier for developers.

    - Formalised Swagger\/OpenAPI-based integration testing, removing approximately 10\% of low-value tests and substantially improving test stability and confidence.

    - Regularly mentored engineers and facilitated internal technical education sessions focused on functional design principles and correctness.

  ],
)

#regular-entry(
  [
    #strong[Senior Software Developer], #link("http://www.allenovery.com/")[Allen & Overy] -- London, UK

  ],
  [
    Apr 2018 – Feb 2019

  ],
  main-column-second-row: [
    #summary[Global legal services firm.]

    

    `Backend-focused engineer contributing to the integration of a new enterprise Document Management System within a global legal services firm. Worked on replacing a legacy platform inside a complex corporate infrastructure, with emphasis on system integration, reliability, and controlled, low-risk migration.

    `

    

    - Designed and implemented integration components between the new DMS and existing enterprise systems.

    - Contributed to de-risking the DMS migration through incremental integration and validation strategies.

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
    #summary[International energy trading organisation.]

    

    `Senior backend developer maintaining and evolving business-critical gas and energy trading systems for an international energy trading organisation. Focused on system stability, correctness, and the gradual reduction of technical debt in a high-risk, time-sensitive trading environment.

    `

    

    - Delivered new trading features aligned with evolving business requirements while maintaining system stability.

    - Reduced technical debt and improved code quality through systematic refactoring and static analysis.

    - Improved testability and reliability of services integrated with industry-standard platforms such as Xoserve Gemini and OpenLink Endur.

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
    #summary[Financial services company specialising in FX products.]

    

    `Backend and integration-focused developer working on a client-facing online FX trading platform for a financial services company specialising in foreign exchange products. Actively involved in low-latency system integration, automation, and production reliability improvements.

    `

    

    - Integrated the online trading platform with Barclays FX using FIX 4.2, reducing order execution latency from minutes to milliseconds.

    - Automated reconciliation processes using SWIFT data, reducing hours of manual work to seconds with high accuracy.

    - Designed and introduced a CI solution, significantly reducing production risk and deployment overhead.

    - Contributed to data migration from a bespoke CRM to Microsoft Dynamics, improving data quality and operational efficiency.

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
    #summary[Global risk management and financial services consultancy.]

    

    `Senior developer contributing to backend, desktop, and web components of an enterprise financial platform within a global risk management and financial services consultancy. Focused on architecture, modularity, and testability across a large, multi-product system.

    `

    

    - Contributed to the architecture and development of a modular enterprise platform integrating multiple internal products.

    - Maintained high automated test coverage and promoted coding standards across the team.

    - Worked closely with QA to improve system reliability and release confidence.

  ],
)

#regular-entry(
  [
    #strong[Senior .NET Software Developer], #link("http://www.sigma-systems.com/")[Sigma Systems (Tribold Limited)] -- Cwmbran, UK

  ],
  [
    May 2011 – May 2014

  ],
  main-column-second-row: [
    #summary[Provider of product catalog and pricing solutions.]

    

    `Senior engineer in an R&amp;D unit for a provider of enterprise product catalog and pricing solutions. Responsible for backend architecture, API design, and exploratory technical work, with a strong focus on specification-driven and test-driven development practices.

    `

    

    - Designed backend architectures and APIs for enterprise pricing and catalog systems.

    - Researched and introduced BDD practices using SpecFlow within existing projects.

    - Led architectural design for web-based versions of established desktop products.

  ],
)

#regular-entry(
  [
    #strong[Senior .NET Software Developer], #link("http://transtel.com/")[Transtel Communications Ltd] -- Cheltenham, UK

  ],
  [
    July 2010 – May 2011

  ],
  main-column-second-row: [
    #summary[Broadcasting systems provider.]

    

    `Senior developer responsible for the modernisation of broadcasting software and development infrastructure for a broadcasting systems provider. Focused on improving build automation, deployment reliability, and overall engineering efficiency.

    `

    

    - Introduced automated build and deployment pipelines, reducing release cycles from days to hours.

  ],
)

#regular-entry(
  [
    #strong[Senior Software Engineer], #link("http://www.ligastavok.com/en/")[Ligastavok] -- Moscow, Russia

  ],
  [
    Mar 2009 – May 2010

  ],
  main-column-second-row: [
    #summary[Large betting and analytics platform.]

    

    `Senior software engineer designing and implementing scalable, low-latency backend systems for a large betting and analytics platform. Focused on enterprise messaging, distributed communication, and analytical reporting for business-critical operations.

    `

    

    - Built a highly available enterprise message bus enabling reliable communication between distributed branches and central systems.

    - Delivered analytical reporting solutions that significantly improved analyst productivity and insight quality.

  ],
)

#regular-entry(
  [
    #strong[Software Engineer \/ Senior Engineer], Earlier Career (Various) -- Russia

  ],
  [
    July 1995 – Feb 2009

  ],
  main-column-second-row: [
    #summary[Various organisations (banking, trading, analytics, government, enterprise systems).]

    

    `Early career spanning the full software lifecycle with a consistent focus on backend systems, databases, and data-intensive analytical platforms.

    `

    

    - Designed and implemented backend systems for banking, trading, and analytical applications.

    - Built data-intensive systems used in both commercial and governmental environments.

  ],
)

== Technologies

#strong[Backend Engineering (.NET):] Expert – C\#, .NET, .NET Core, ASP.NET, ASP.NET Core, Web APIs, REST, OpenAPI, Swagger

#strong[Architecture & Design:] Advanced – Backend Architecture, Domain Modelling, Modular Design, Legacy System Modernisation, API Design, Contract-First Development

#strong[Engineering Practices:] Advanced – Declarative Design, Functional Programming Concepts, Specification-Driven Development, Testing and Verification, CI\/CD, Developer Tooling

#strong[Data & Integration:] Advanced – SQL Server, Relational Databases, Messaging, RabbitMQ, AWS SQS, AWS SNS, System Integration

#strong[Financial Systems & Protocols:] Working Knowledge – Financial Systems, Trading Systems, FIX Protocol (4.x), SWIFT Messaging, Settlement and Reconciliation, Low-Latency Systems, Regulated Environments

== Awards

#strong[Certified SAFe® 6 Scrum Master:] Scaled Agile
