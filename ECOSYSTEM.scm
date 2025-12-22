;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm — terrapin-ssg

(ecosystem
  (version "1.1.0")
  (name "terrapin-ssg")
  (type "satellite-ssg")
  (purpose "The DEFINITIVE Logo static site generator")
  (components "44/44")

  (language-identity
    (primary "Logo")
    (interpreter "UCBLogo")
    (rationale "terrapin-ssg exists to be THE Logo SSG. The entire engine is written in Logo.")
    (forbidden ("Python" "JavaScript" "TypeScript" "Ruby" "Go" "Rust"))
    (enforcement "This is not negotiable. Any non-Logo implementation will be rejected.")
    (adapter-exception "ReScript allowed in adapters/ for MCP integration only"))

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
      (name "noteg-ssg")
      (url "https://github.com/hyperpolymath/noteg-ssg")
      (relationship "sibling-satellite")
      (description "Ada/SPARK SSG - historical computing themed"))
    (project
      (name "rhodium-standard-repositories")
      (url "https://github.com/hyperpolymath/rhodium-standard-repositories")
      (relationship "standard")))

  (what-this-is
    "- The DEFINITIVE static site generator written in Logo
     - Turtle graphics become web pages
     - Educational and fun - teach kids programming through website building
     - Part of the poly-ssg satellite constellation
     - 44/44 components complete")

  (what-this-is-not
    "- NOT a Python interpreter for Logo (that would violate language rules)
     - NOT optional about being in Logo
     - NOT a template that can be reimplemented in other languages")

  (unique-features
    "- Turtle graphics to SVG conversion
     - Visual programming paradigm
     - Recursive pattern generation
     - Educational focus
     - REPL-driven development"))

(playbook
  (commands
    (build "just build")
    (test "just test-all")
    (repl "just repl")
    (serve "just serve")
    (ci "just ci")
    (security "just security"))

  (workflows
    (development "just clean build serve")
    (testing "just test-all")
    (release "just ci docs container-build")
    (deploy "just ci build deploy-gh")))
