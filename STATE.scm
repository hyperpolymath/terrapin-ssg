;;; STATE.scm — terrapin-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define metadata
  '((version . "1.0.0")
    (updated . "2025-12-16")
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
  '((phase . "v1.0 - Logo Implementation Complete")
    (overall-completion . 100)
    (components ((logo-engine ((status . "complete") (file . "src/terrapin-ssg.logo") (completion . 100)))
                 (mcp-adapter ((status . "pending") (language . "ReScript") (completion . 0)))))))

(define blockers-and-issues
  '((critical ())
    (high-priority ())))

(define critical-next-actions
  '((immediate (("Connect MCP adapter in ReScript" . high)))
    (this-week (("Add example Logo sites" . medium)))))

(define session-history
  '((snapshots
     ((date . "2025-12-16")
      (session . "language-fix")
      (notes . "Rewrote from Python to pure Logo. Enforced language requirements.")))))

(define state-summary
  '((project . "terrapin-ssg")
    (language . "Logo")
    (completion . 100)
    (blockers . 0)
    (updated . "2025-12-16")))
