;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; META.scm — terrapin-ssg

(define-module (terrapin-ssg meta)
  #:export (architecture-decisions development-practices design-rationale language-rules
            component-categories agentic-capabilities neurosym-interfaces))

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
     (mcp-adapter . "adapters/ in ReScript (only exception)"))))

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
     (consequences . ("RSR Gold target" "SHA-pinned actions" "SPDX headers")))
    (adr-003
     (title . "44-Component Structure")
     (status . "accepted")
     (date . "2025-12-22")
     (context . "Standardized project completeness tracking")
     (decision . "Adopt 44-component inventory structure from poly-ssg template")
     (consequences . ("Consistent tracking" "Clear roadmap" "Full coverage")))
    (adr-004
     (title . "Command Injection Prevention")
     (status . "accepted")
     (date . "2025-12-17")
     (context . "ReScript adapter executes shell commands")
     (decision . "Whitelist-only pattern validation before shell execution")
     (consequences . ("Security hardened" "Limited patterns" "Safe by default")))))

(define development-practices
  '((code-style
     (languages . ("Logo"))
     (naming . "lowercase-with-dashes for procedures")
     (comments . "Use semicolons for comments"))
    (security
     (sast . "CodeQL for workflow scanning")
     (credentials . "env vars only")
     (command-injection . "whitelist validation")
     (sha-pinning . "all GitHub Actions SHA-pinned"))
    (testing
     (method . "Logo REPL testing")
     (e2e . "Justfile test-e2e")
     (ci . "GitHub Actions CI pipeline"))
    (versioning
     (scheme . "SemVer 2.0.0"))
    (build-tools
     (primary . "Justfile")
     (invariants . "Mustfile")
     (recipes . "cookbook.adoc"))))

(define component-categories
  '((core-engine . 4)
    (build-system . 4)
    (site-generation . 4)
    (adapters . 3)
    (turtle-graphics . 5)
    (testing . 4)
    (documentation . 8)
    (configuration . 3)
    (security . 6)
    (well-known . 3)
    (total . 44)))

(define agentic-capabilities
  '((mcp-integration
     (adapter . "adapters/src/TerrapinAdapter.res")
     (tools . ("terrapin_build" "terrapin_draw" "terrapin_version"))
     (hub . "poly-ssg-mcp"))
    (hooks
     (pre-commit . "just pre-commit")
     (pre-push . "just ci")
     (on-build . "just build")
     (on-change . "just watch"))
    (claude-code
     (instructions . ".claude/CLAUDE.md")
     (copilot . "copilot-instructions.md"))))

(define neurosym-interfaces
  '((visual-programming
     (turtle-graphics . "Spatial reasoning via procedural art")
     (svg-output . "Vector representation of code execution")
     (pattern-library . ("square" "spiral" "star" "tree")))
    (educational-mapping
     (procedure . "TO...END blocks = function definition")
     (recursion . "Self-referential procedures for fractals")
     (iteration . "REPEAT for loops")
     (state . "Variables via MAKE"))
    (symbolic-grounding
     (commands . "Natural language primitives (FORWARD, RIGHT, etc.)")
     (composition . "Procedure composition for complex patterns"))))

(define design-rationale
  '((why-logo
     "Logo is an educational programming language created for teaching.
      Turtle graphics make programming visual and intuitive.
      terrapin-ssg turns this into web development education.")
    (why-not-python
     "Python was INCORRECTLY used before. This violated the core principle:
      each satellite SSG must BE in its target language, not just interpret it.")
    (why-44-components
     "Standardized tracking ensures nothing is missed.
      Each component has a defined location and status.
      Makes handoff and maintenance predictable.")))
