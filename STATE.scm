;;; STATE.scm — terrapin-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define metadata
  '((version . "1.0.1")
    (updated . "2025-12-17")
    (project . "terrapin-ssg")
    (required-language . "Logo")))

(define language-enforcement
  '((primary-language . "Logo")
    (interpreter . "UCBLogo or compatible Logo interpreter")
    (file-extension . ".logo")
    (forbidden-languages . ("Python" "JavaScript" "TypeScript" "Ruby" "Go" "Rust"))
    (rationale . "terrapin-ssg is the DEFINITIVE Logo static site generator. It MUST be written entirely in Logo. No other implementation languages are permitted.")
    (enforcement . "strict")))

(define current-position
  '((phase . "v1.0.1 - Security Hardening Complete")
    (overall-completion . 100)
    (components ((logo-engine ((status . "complete") (file . "src/terrapin-ssg.logo") (completion . 100)))
                 (mcp-adapter ((status . "complete") (language . "ReScript") (completion . 100)))
                 (security ((status . "complete") (completion . 100)))))))

(define blockers-and-issues
  '((critical ())
    (high-priority ())))

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
      (notes . "Rewrote from Python to pure Logo. Enforced language requirements.")))))

(define state-summary
  '((project . "terrapin-ssg")
    (language . "Logo")
    (completion . 100)
    (blockers . 0)
    (updated . "2025-12-17")))
