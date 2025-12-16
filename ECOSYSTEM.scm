;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm — terrapin-ssg

(ecosystem
  (version "1.0.0")
  (name "terrapin-ssg")
  (type "satellite-ssg")
  (purpose "The DEFINITIVE Logo static site generator")

  (language-identity
    (primary "Logo")
    (rationale "terrapin-ssg exists to be THE Logo SSG. The entire engine is written in Logo.")
    (forbidden ("Python" "JavaScript" "TypeScript" "Ruby" "Go"))
    (enforcement "This is not negotiable. Any non-Logo implementation will be rejected."))

  (position-in-ecosystem
    "Satellite SSG in the poly-ssg constellation. Each satellite is the definitive SSG for its language.")

  (related-projects
    (project
      (name "poly-ssg-mcp")
      (url "https://github.com/hyperpolymath/poly-ssg-mcp")
      (relationship "hub")
      (description "Unified MCP server for 28+ SSGs - provides adapter interface")
      (differentiation
        "poly-ssg-mcp = Hub with all SSG adapters via MCP
         terrapin-ssg = The Logo SSG engine"))
    (project
      (name "hackenbush-ssg")
      (url "https://github.com/hyperpolymath/hackenbush-ssg")
      (relationship "sibling-satellite")
      (description "JavaScript SSG - another satellite in the constellation"))
    (project
      (name "rhodium-standard-repositories")
      (url "https://github.com/hyperpolymath/rhodium-standard-repositories")
      (relationship "standard")))

  (what-this-is
    "- The DEFINITIVE static site generator written in Logo
     - Turtle graphics become web pages
     - Educational and fun - teach kids programming through website building
     - Part of the poly-ssg satellite constellation")

  (what-this-is-not
    "- NOT a Python interpreter for Logo (that would violate language rules)
     - NOT optional about being in Logo
     - NOT a template that can be reimplemented in other languages"))
