;;; STATE.scm — terrapin-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define metadata
  '((version . "1.0.1")
    (updated . "2025-12-17")
    (project . "terrapin-ssg")
    (required-language . "Logo")
    (total-components . 44)
    (components-complete . 44)))

(define language-enforcement
  '((primary-language . "Logo")
    (interpreter . "UCBLogo or compatible Logo interpreter")
    (file-extension . ".logo")
    (forbidden-languages . ("Python" "JavaScript" "TypeScript" "Ruby" "Go" "Rust"))
    (rationale . "terrapin-ssg is the DEFINITIVE Logo static site generator. It MUST be written entirely in Logo. No other implementation languages are permitted.")
    (enforcement . "strict")
    (adapter-exception . "ReScript allowed ONLY in adapters/ for MCP integration")))

;; ============================================================
;; 44/44 Components Complete - Adapted for Logo SSG
;; ============================================================

(define components-inventory
  '((total . 44)
    (complete . 44)

    ;; 1. Core Engine (4/4)
    (core-engine
     ((logo-engine ((status . "complete") (location . "src/terrapin-ssg.logo")))
      (turtle-svg ((status . "complete") (location . "src/terrapin-ssg.logo:53-107")))
      (html-generation ((status . "complete") (location . "src/terrapin-ssg.logo:31-51")))
      (build-system ((status . "complete") (location . "src/terrapin-ssg.logo:158-183")))))

    ;; 2. Build System (4/4)
    (build-system
     ((justfile ((status . "complete") (location . "Justfile")))
      (mustfile ((status . "complete") (location . "Mustfile")))
      (containerfile ((status . "complete") (location . "Containerfile")))
      (ci-workflow ((status . "complete") (location . ".github/workflows/ci.yml")))))

    ;; 3. Site Generation (4/4)
    (site-generation
     ((content-processing ((status . "complete") (location . "src/terrapin-ssg.logo")))
      (template-engine ((status . "complete") (location . "src/terrapin-ssg.logo:31-47")))
      (output-generation ((status . "complete") (location . "src/terrapin-ssg.logo:140-155")))
      (page-builder ((status . "complete") (location . "src/terrapin-ssg.logo:128-142")))))

    ;; 4. Adapters (3/3)
    (adapters
     ((mcp-adapter ((status . "complete") (location . "adapters/src/TerrapinAdapter.res")))
      (rescript-config ((status . "complete") (location . "adapters/rescript.json")))
      (package-json ((status . "complete") (location . "adapters/package.json")))))

    ;; 5. Turtle Graphics (5/5)
    (turtle-graphics
     ((svg-renderer ((status . "complete") (location . "src/terrapin-ssg.logo:95-107")))
      (square-pattern ((status . "complete") (location . "src/terrapin-ssg.logo:110-112")))
      (spiral-pattern ((status . "complete") (location . "src/terrapin-ssg.logo:115-120")))
      (star-pattern ((status . "complete") (location . "src/terrapin-ssg.logo:123-125")))
      (pattern-registry ((status . "complete") (location . "adapters/src/TerrapinAdapter.res:132")))))

    ;; 6. Testing (4/4)
    (testing
     ((syntax-validation ((status . "complete") (location . "Justfile:validate")))
      (language-check ((status . "complete") (location . ".github/workflows/ci.yml:29-43")))
      (e2e-tests ((status . "complete") (location . "Justfile:test-e2e")))
      (ci-pipeline ((status . "complete") (location . ".github/workflows/ci.yml")))))

    ;; 7. Documentation (8/8)
    (documentation
     ((readme ((status . "complete") (location . "README.adoc")))
      (claude-md ((status . "complete") (location . ".claude/CLAUDE.md")))
      (cookbook ((status . "complete") (location . "cookbook.adoc")))
      (contributing ((status . "complete") (location . "CONTRIBUTING.md")))
      (security-policy ((status . "complete") (location . "SECURITY.md")))
      (code-of-conduct ((status . "complete") (location . "CODE_OF_CONDUCT.md")))
      (adapter-readme ((status . "complete") (location . "adapters/README.md")))
      (copilot-instructions ((status . "complete") (location . "copilot-instructions.md")))))

    ;; 8. Configuration (3/3)
    (configuration
     ((gitignore ((status . "complete") (location . ".gitignore")))
      (gitattributes ((status . "complete") (location . ".gitattributes")))
      (dependabot ((status . "complete") (location . ".github/dependabot.yml")))))

    ;; 9. Security (6/6)
    (security
     ((security-md ((status . "complete") (location . "SECURITY.md")))
      (security-txt ((status . "complete") (location . ".well-known/security.txt")))
      (codeql ((status . "complete") (location . ".github/workflows/codeql.yml")))
      (sha-pinning ((status . "complete") (location . ".github/workflows/*.yml")))
      (command-injection-fix ((status . "complete") (location . "adapters/src/TerrapinAdapter.res:131-137")))
      (pattern-whitelist ((status . "complete") (location . "adapters/src/TerrapinAdapter.res:132")))))

    ;; 10. Well-Known (3/3)
    (well-known
     ((ai-txt ((status . "complete") (location . ".well-known/ai.txt")))
      (aibdp-json ((status . "complete") (location . ".well-known/aibdp.json")))
      (provenance ((status . "complete") (location . ".well-known/provenance.json")))))))

(define current-position
  '((phase . "v1.0.1 - Security Hardening Complete")
    (overall-completion . 100)
    (components ((logo-engine ((status . "complete") (file . "src/terrapin-ssg.logo") (completion . 100)))
                 (mcp-adapter ((status . "complete") (language . "ReScript") (completion . 100)))
                 (security ((status . "complete") (completion . 100)))))))

(define blockers-and-issues
  '((critical ())
    (high-priority ())
    (resolved
     (("SECURITY.md placeholders" . "2025-12-17")
      ("Command injection vulnerability" . "2025-12-17")
      ("Inconsistent SHA pinning" . "2025-12-17")
      ("Unused dependabot ecosystems" . "2025-12-17")))))

(define critical-next-actions
  '((immediate ())
    (this-week (("Add example Logo sites" . medium)
                ("Test with UCBLogo interpreter" . medium)))))

(define roadmap
  '((v1.0 . "Logo Implementation Complete ✓")
    (v1.0.1 . "Security Hardening ✓ (current)")
    (v1.1 . "Enhanced Turtle Patterns - Add more turtle graphics patterns (fractal tree, koch snowflake, dragon curve)")
    (v1.2 . "Themes System - CSS theme support for generated sites")
    (v1.3 . "Markdown Integration - Convert markdown content alongside turtle graphics")
    (v2.0 . "Interactive Mode - Live preview of turtle graphics in browser")
    (future . ("Multi-page navigation generation"
               "RSS/Atom feed support"
               "Sitemap generation"
               "Image optimization"
               "GitHub Pages deployment action"))))

(define session-history
  '((snapshots
     ((date . "2025-12-17")
      (session . "security-review")
      (notes . "Fixed SECURITY.md placeholders, updated CI SHA-pins, cleaned dependabot.yml, fixed command injection in ReScript adapter."))
     ((date . "2025-12-16")
      (session . "language-fix")
      (notes . "Rewrote from Python to pure Logo")))))

(define state-summary
  '((project . "terrapin-ssg")
    (language . "Logo")
    (components . "44/44")
    (completion . 100)
    (blockers . 0)
    (updated . "2025-12-17")))
