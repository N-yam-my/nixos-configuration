;; extends

; Constants
; ((math (formula (ident) @constant @ident-in-math)))
((math (formula (ident) @constant)) (#eq? @constant "emptyset") (#set! conceal "∅"))
((math (formula (ident) @constant)) (#eq? @constant "planck") (#set! conceal "ℎ"))
((math (formula (ident) @constant)) (#eq? @constant "oo") (#set! conceal "∞"))
((math (formula (ident) @constant)) (#eq? @constant "infinity") (#set! conceal "∞"))

; Operators
((math (formula (ident) @constant)) (#eq? @constant "sum") (#set! conceal "∑"))
((math (formula (ident) @constant)) (#eq? @constant "product") (#set! conceal "∏"))
((math (formula (ident) @constant)) (#eq? @constant "integral") (#set! conceal "∫"))
((math (formula (ident) @constant)) (#eq? @constant "compose") (#set! conceal "∘"))
((math (formula (ident) @constant)) (#eq? @constant "convolve") (#set! conceal "∗"))
((math (formula (ident) @constant)) (#eq? @constant "partial") (#set! conceal "∂"))
((math (formula (ident) @constant)) (#eq? @constant "dif") (#set! conceal "𝐝"))
((math (formula (ident) @constant)) (#eq? @constant "gradient") (#set! conceal "∇"))
((math (formula (ident) @constant)) (#eq? @constant "nabla") (#set! conceal "∇"))
((math (formula (ident) @constant)) (#eq? @constant "laplace") (#set! conceal "∆"))

; Logics
((math (formula (ident) @constant)) (#eq? @constant "forall") (#set! conceal "∀"))
((math (formula (ident) @constant)) (#eq? @constant "exists") (#set! conceal "∃"))
((math (formula (ident) @constant)) (#eq? @constant "not") (#set! conceal "￢"))
((math (formula (ident) @constant)) (#eq? @constant "and") (#set! conceal "∧"))
((math (formula (ident) @constant)) (#eq? @constant "or") (#set! conceal "∨"))
(((math (formula (ident) @constant))) (#eq? @constant "therefore") (#set! conceal "∴"))
((math (formula (ident) @constant)) (#eq? @constant "because") (#set! conceal "∵"))
((math (formula (ident) @constant)) (#eq? @constant "qed") (#set! conceal "■"))

; 

; Greek Letters
;; small
((math (formula (ident) @constant)) (#eq? @constant "alpha") (#set! conceal "α"))
((math (formula (ident) @constant)) (#eq? @constant "beta") (#set! conceal "β"))
((math (formula (ident) @constant)) (#eq? @constant "gamma") (#set! conceal "γ"))
((math (formula (ident) @constant)) (#eq? @constant "delta") (#set! conceal "δ"))
((math (formula (ident) @constant)) (#eq? @constant "epsilon") (#set! conceal "ε"))
((math (formula (ident) @constant)) (#eq? @constant "zeta") (#set! conceal "ζ"))
((math (formula (ident) @constant)) (#eq? @constant "eta") (#set! conceal "η"))
((math (formula (ident) @constant)) (#eq? @constant "theta") (#set! conceal "θ"))
((math (formula (ident) @constant)) (#eq? @constant "iota") (#set! conceal "ι"))
((math (formula (ident) @constant)) (#eq? @constant "kappa") (#set! conceal "κ"))
((math (formula (ident) @constant)) (#eq? @constant "lambda") (#set! conceal "λ"))
((math (formula (ident) @constant)) (#eq? @constant "mu") (#set! conceal "μ"))
((math (formula (ident) @constant)) (#eq? @constant "nu") (#set! conceal "ν"))
((math (formula (ident) @constant)) (#eq? @constant "xi") (#set! conceal "ξ"))
((math (formula (ident) @constant)) (#eq? @constant "omicron") (#set! conceal "ο"))
((math (formula (ident) @constant)) (#eq? @constant "pi") (#set! conceal "π"))
((math (formula (ident) @constant)) (#eq? @constant "rho") (#set! conceal "ρ"))
((math (formula (ident) @constant)) (#eq? @constant "sigma") (#set! conceal "σ"))
((math (formula (ident) @constant)) (#eq? @constant "tau") (#set! conceal "τ"))
((math (formula (ident) @constant)) (#eq? @constant "upsilon") (#set! conceal "υ"))
((math (formula (ident) @constant)) (#eq? @constant "phi") (#set! conceal "φ"))
((math (formula (ident) @constant)) (#eq? @constant "chi") (#set! conceal "χ"))
((math (formula (ident) @constant)) (#eq? @constant "psi") (#set! conceal "ψ"))
((math (formula (ident) @constant)) (#eq? @constant "omega") (#set! conceal "ω"))
;; Captial
((math (formula (ident) @constant)) (#eq? @constant "Alpha") (#set! conceal "Α"))
((math (formula (ident) @constant)) (#eq? @constant "Beta") (#set! conceal "Β"))
((math (formula (ident) @constant)) (#eq? @constant "Gamma") (#set! conceal "Γ"))
((math (formula (ident) @constant)) (#eq? @constant "Delta") (#set! conceal "Δ"))
((math (formula (ident) @constant)) (#eq? @constant "Epsilon") (#set! conceal "Ε"))
((math (formula (ident) @constant)) (#eq? @constant "Zeta") (#set! conceal "Ζ"))
((math (formula (ident) @constant)) (#eq? @constant "Eta") (#set! conceal "Η"))
((math (formula (ident) @constant)) (#eq? @constant "Theta") (#set! conceal "Θ"))
((math (formula (ident) @constant)) (#eq? @constant "Iota") (#set! conceal "Ι"))
((math (formula (ident) @constant)) (#eq? @constant "Kappa") (#set! conceal "Κ"))
((math (formula (ident) @constant)) (#eq? @constant "Lambda") (#set! conceal "Λ"))
((math (formula (ident) @constant)) (#eq? @constant "Mu") (#set! conceal "Μ"))
((math (formula (ident) @constant)) (#eq? @constant "Nu") (#set! conceal "Ν"))
((math (formula (ident) @constant)) (#eq? @constant "Xi") (#set! conceal "Ξ"))
((math (formula (ident) @constant)) (#eq? @constant "Omicron") (#set! conceal "Ο"))
((math (formula (ident) @constant)) (#eq? @constant "Pi") (#set! conceal "Π"))
((math (formula (ident) @constant)) (#eq? @constant "Rho") (#set! conceal "Ρ"))
((math (formula (ident) @constant)) (#eq? @constant "Sigma") (#set! conceal "Σ"))
((math (formula (ident) @constant)) (#eq? @constant "Tau") (#set! conceal "Τ"))
((math (formula (ident) @constant)) (#eq? @constant "Upsilon") (#set! conceal "Υ"))
((math (formula (ident) @constant)) (#eq? @constant "Phi") (#set! conceal "Φ"))
((math (formula (ident) @constant)) (#eq? @constant "Chi") (#set! conceal "Χ"))
((math (formula (ident) @constant)) (#eq? @constant "Psi") (#set! conceal "Ψ"))
((math (formula (ident) @constant)) (#eq? @constant "Omega") (#set! conceal "Ω"))

; Shorthands
((math (formula (shorthand) @constant @shorthand)))
; Operators
((math (formula (shorthand) @constant)) (#eq? @constant ">=") (#set! conceal "≧"))
((math (formula (shorthand) @constant)) (#eq? @constant "<=") (#set! conceal "≦"))
; Arrows
((math (formula (shorthand) @constant)) (#eq? @constant "->") (#set! conceal "→"))
((math (formula (shorthand) @constant)) (#eq? @constant "-->") (#set! conceal "⟶"))
((math (formula (shorthand) @constant)) (#eq? @constant "<-") (#set! conceal "←"))
((math (formula (shorthand) @constant)) (#eq? @constant "<--") (#set! conceal "⟵"))
((math (formula (shorthand) @constant)) (#eq? @constant "<->") (#set! conceal "↔"))
((math (formula (shorthand) @constant)) (#eq? @constant "|->") (#set! conceal "↦"))
((math (formula (shorthand) @constant)) (#eq? @constant "->>") (#set! conceal "↠"))
((math (formula (shorthand) @constant)) (#eq? @constant "=>") (#set! conceal "⇒"))
((math (formula (shorthand) @constant)) (#eq? @constant "<=>") (#set! conceal "⇔"))
; ((math (formula (shorthand) @constant)) (#eq? @constant "==>") (#set! conceal "⟹  "))
;; Instances
((math (formula (ident !field) @constant)) (#eq? @constant "arrow") (#set! @constant conceal "→"))
((math (formula (field) @constant)) (#eq? @constant "arrow.l.r.long") (#set! @constant conceal "⟷"))
; ((ident) @constant (#eq? @constant "arrow")
;   field: ((ident) @field) (#eq? @field "double")
;  (#offset! @constant 0 0 0 7) (#set! @constant conceal "⇒"))

; Superscripts
; (
;  (attach sup: (number) @number) (#eq? @number "0")
;  (#offset! @number 0 -1 0 0) (#set! conceal "⁰")
;  )
; (
;  (attach sup: (number) @number) (#eq? @number "1")
;  (#offset! @number 0 -1 0 0) (#set! conceal "¹")
;  )
; (
;  (attach sup: (number) @number) (#eq? @number "2")
;  (#offset! @number 0 -1 0 0) (#set! conceal "²")
;  )
; (
;  (attach sup: (number) @number) (#eq? @number "3")
;  (#offset! @number 0 -1 0 0) (#set! conceal "³")
;  )
; (
;  (attach sup: (number) @number) (#eq? @number "4")
;  (#offset! @number 0 -1 0 0) (#set! conceal "⁴")
;  )
; (
;  (attach sup: (number) @number) (#eq? @number "5")
;  (#offset! @number 0 -1 0 0) (#set! conceal "⁵")
;  )
; (
;  (attach sup: (number) @number) (#eq? @number "6")
;  (#offset! @number 0 -1 0 0) (#set! conceal "⁶")
;  )
; (
;  (attach sup: (number) @number) (#eq? @number "7")
;  (#offset! @number 0 -1 0 0) (#set! conceal "⁷")
;  )
; (
;  (attach sup: (number) @number) (#eq? @number "8")
;  (#offset! @number 0 -1 0 0) (#set! conceal "⁸")
;  )
; (
;  (attach sup: (number) @number) (#eq? @number "9")
;  (#offset! @number 0 -1 0 0) (#set! conceal "⁹")
;  )

; Bold letters
; ((call) @call
;   item: (ident) @function.call (#eq? @function.call "bold")
;  (#set! @call conceal ""))
