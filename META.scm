;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; META.scm — terrapin-ssg

(define-module (terrapin-ssg meta)
  #:export (architecture-decisions development-practices design-rationale language-rules))

(define language-rules
  '((mandatory-language . "Logo")
    (enforcement-level . "absolute")
    (rationale . "Each SSG satellite is the DEFINITIVE implementation for its language. terrapin-ssg IS the Logo SSG.")
    (violations
     ("Python implementation" . "FORBIDDEN - was incorrectly done, has been corrected")
     ("JavaScript/TypeScript" . "FORBIDDEN - use hackenbush-ssg instead")
     ("Any non-Logo language" . "FORBIDDEN - defeats the purpose of this satellite"))
    (correct-implementation
     (engine . "src/terrapin-ssg.logo")
     (interpreter . "UCBLogo, ACSLogo, or compatible")
     (mcp-adapter . "adapters/ in ReScript (only exception - adapters are in ReScript/Deno)"))))

(define architecture-decisions
  '((adr-001
     (title . "Logo-Only Implementation")
     (status . "accepted")
     (date . "2025-12-16")
     (context . "SSG satellites must be in their target language")
     (decision . "terrapin-ssg is written entirely in Logo")
     (consequences . ("Educational value" "Language-specific features" "Turtle graphics to SVG")))
    (adr-002
     (title . "RSR Compliance")
     (status . "accepted")
     (date . "2025-12-15")
     (context . "Part of hyperpolymath ecosystem")
     (decision . "Follow Rhodium Standard Repository guidelines")
     (consequences . ("RSR Gold target" "SHA-pinned actions" "SPDX headers")))))

(define development-practices
  '((code-style
     (languages . ("Logo"))
     (naming . "lowercase-with-dashes for procedures")
     (comments . "Use semicolons for comments"))
    (security
     (sast . "CodeQL for workflow scanning")
     (credentials . "env vars only"))
    (testing
     (method . "Logo REPL testing"))
    (versioning
     (scheme . "SemVer 2.0.0"))))

(define design-rationale
  '((why-logo
     "Logo is an educational programming language created for teaching.
      Turtle graphics make programming visual and intuitive.
      terrapin-ssg turns this into web development education.")
    (why-not-python
     "Python was INCORRECTLY used before. This violated the core principle:
      each satellite SSG must BE in its target language, not just interpret it.")))
