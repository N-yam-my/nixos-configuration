;; extends

; Constants
; ((formula (ident) @constant @ident-in-math))
((formula (ident) @constant) (#eq? @constant "emptyset") (#set! conceal "∅"))
((formula (ident) @constant) (#eq? @constant "planck") (#set! conceal "ℎ"))
((formula (ident) @constant) (#eq? @constant "oo") (#set! conceal "∞"))
((formula (ident) @constant) (#eq? @constant "infinity") (#set! conceal "∞"))

; Operators
((formula (ident) @constant) (#eq? @constant "sum") (#set! conceal "∑"))
((formula (ident) @constant) (#eq? @constant "product") (#set! conceal "∏"))
((formula (ident) @constant) (#eq? @constant "integral") (#set! conceal "∫"))
((formula (ident) @constant) (#eq? @constant "compose") (#set! conceal "∘"))
((formula (ident) @constant) (#eq? @constant "convolve") (#set! conceal "∗"))
((formula (ident) @constant) (#eq? @constant "partial") (#set! conceal "∂"))
((formula (ident) @constant) (#eq? @constant "dif") (#set! conceal "𝐝"))
((formula (ident) @constant) (#eq? @constant "gradient") (#set! conceal "∇"))
((formula (ident) @constant) (#eq? @constant "nabla") (#set! conceal "∇"))
((formula (ident) @constant) (#eq? @constant "laplace") (#set! conceal "∆"))
((formula (ident) @constant) (#eq? @constant "tack") (#set! conceal "⊢"))

; Logics
((formula (ident) @constant) (#eq? @constant "forall") (#set! conceal "∀"))
((formula (ident) @constant) (#eq? @constant "exists") (#set! conceal "∃"))
((formula (ident) @constant) (#eq? @constant "not") (#set! conceal "￢"))
((formula (ident) @constant) (#eq? @constant "and") (#set! conceal "∧"))
((formula (ident) @constant) (#eq? @constant "or") (#set! conceal "∨"))
((formula (ident) @constant) (#eq? @constant "therefore") (#set! conceal "∴"))
((formula (ident) @constant) (#eq? @constant "because") (#set! conceal "∵"))
((formula (ident) @constant) (#eq? @constant "qed") (#set! conceal "■"))

; 

; Greek Letters
;; small
((formula (ident) @constant) (#eq? @constant "alpha") (#set! conceal "α"))
((formula (ident) @constant) (#eq? @constant "beta") (#set! conceal "β"))
((formula (ident) @constant) (#eq? @constant "gamma") (#set! conceal "γ"))
((formula (ident) @constant) (#eq? @constant "delta") (#set! conceal "δ"))
((formula (ident) @constant) (#eq? @constant "epsilon") (#set! conceal "ε"))
((formula (ident) @constant) (#eq? @constant "zeta") (#set! conceal "ζ"))
((formula (ident) @constant) (#eq? @constant "eta") (#set! conceal "η"))
((formula (ident) @constant) (#eq? @constant "theta") (#set! conceal "θ"))
((formula (ident) @constant) (#eq? @constant "iota") (#set! conceal "ι"))
((formula (ident) @constant) (#eq? @constant "kappa") (#set! conceal "κ"))
((formula (ident) @constant) (#eq? @constant "lambda") (#set! conceal "λ"))
((formula (ident) @constant) (#eq? @constant "mu") (#set! conceal "μ"))
((formula (ident) @constant) (#eq? @constant "nu") (#set! conceal "ν"))
((formula (ident) @constant) (#eq? @constant "xi") (#set! conceal "ξ"))
((formula (ident) @constant) (#eq? @constant "omicron") (#set! conceal "ο"))
((formula (ident) @constant) (#eq? @constant "pi") (#set! conceal "π"))
((formula (ident) @constant) (#eq? @constant "rho") (#set! conceal "ρ"))
((formula (ident) @constant) (#eq? @constant "sigma") (#set! conceal "σ"))
((formula (ident) @constant) (#eq? @constant "tau") (#set! conceal "τ"))
((formula (ident) @constant) (#eq? @constant "upsilon") (#set! conceal "υ"))
((formula (ident) @constant) (#eq? @constant "phi") (#set! conceal "φ"))
((formula (ident) @constant) (#eq? @constant "chi") (#set! conceal "χ"))
((formula (ident) @constant) (#eq? @constant "psi") (#set! conceal "ψ"))
((formula (ident) @constant) (#eq? @constant "omega") (#set! conceal "ω"))
;; Captial
((formula (ident) @constant) (#eq? @constant "Alpha") (#set! conceal "Α"))
((formula (ident) @constant) (#eq? @constant "Beta") (#set! conceal "Β"))
((formula (ident) @constant) (#eq? @constant "Gamma") (#set! conceal "Γ"))
((formula (ident) @constant) (#eq? @constant "Delta") (#set! conceal "Δ"))
((formula (ident) @constant) (#eq? @constant "Epsilon") (#set! conceal "Ε"))
((formula (ident) @constant) (#eq? @constant "Zeta") (#set! conceal "Ζ"))
((formula (ident) @constant) (#eq? @constant "Eta") (#set! conceal "Η"))
((formula (ident) @constant) (#eq? @constant "Theta") (#set! conceal "Θ"))
((formula (ident) @constant) (#eq? @constant "Iota") (#set! conceal "Ι"))
((formula (ident) @constant) (#eq? @constant "Kappa") (#set! conceal "Κ"))
((formula (ident) @constant) (#eq? @constant "Lambda") (#set! conceal "Λ"))
((formula (ident) @constant) (#eq? @constant "Mu") (#set! conceal "Μ"))
((formula (ident) @constant) (#eq? @constant "Nu") (#set! conceal "Ν"))
((formula (ident) @constant) (#eq? @constant "Xi") (#set! conceal "Ξ"))
((formula (ident) @constant) (#eq? @constant "Omicron") (#set! conceal "Ο"))
((formula (ident) @constant) (#eq? @constant "Pi") (#set! conceal "Π"))
((formula (ident) @constant) (#eq? @constant "Rho") (#set! conceal "Ρ"))
((formula (ident) @constant) (#eq? @constant "Sigma") (#set! conceal "Σ"))
((formula (ident) @constant) (#eq? @constant "Tau") (#set! conceal "Τ"))
((formula (ident) @constant) (#eq? @constant "Upsilon") (#set! conceal "Υ"))
((formula (ident) @constant) (#eq? @constant "Phi") (#set! conceal "Φ"))
((formula (ident) @constant) (#eq? @constant "Chi") (#set! conceal "Χ"))
((formula (ident) @constant) (#eq? @constant "Psi") (#set! conceal "Ψ"))
((formula (ident) @constant) (#eq? @constant "Omega") (#set! conceal "Ω"))

; Shorthands
((math (formula (shorthand) @constant @shorthand)))
; Operators
((formula (shorthand) @constant) (#eq? @constant ">=") (#set! conceal "≧"))
((formula (shorthand) @constant) (#eq? @constant "<=") (#set! conceal "≦"))
; Arrows
((formula (shorthand) @constant) (#eq? @constant "->") (#set! conceal "→"))
((formula (shorthand) @constant) (#eq? @constant "-->") (#set! conceal "⟶"))
((formula (shorthand) @constant) (#eq? @constant "<-") (#set! conceal "←"))
((formula (shorthand) @constant) (#eq? @constant "<--") (#set! conceal "⟵"))
((formula (shorthand) @constant) (#eq? @constant "<->") (#set! conceal "↔"))
((formula (shorthand) @constant) (#eq? @constant "|->") (#set! conceal "↦"))
((formula (shorthand) @constant) (#eq? @constant "->>") (#set! conceal "↠"))
((formula (shorthand) @constant) (#eq? @constant "=>") (#set! conceal "⇒"))
((formula (shorthand) @constant) (#eq? @constant "<=>") (#set! conceal "⇔"))
; ((formula (shorthand) @constant) (#eq? @constant "==>") (#set! conceal "⟹  "))
;; Instances
((formula (ident !field) @constant) (#eq? @constant "arrow") (#set! @constant conceal "→"))
((formula (field) @constant) (#eq? @constant "arrow.l.r.long") (#set! @constant conceal "⟷"))
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
