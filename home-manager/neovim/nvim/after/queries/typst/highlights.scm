; extends
; Constants
(((ident) @constant) (#eq? @constant "emptyset") (#set! conceal "∅"))
(((ident) @constant) (#eq? @constant "planck") (#set! conceal "ℎ"))
(((ident) @constant) (#eq? @constant "oo") (#set! conceal "∞"))
(((ident) @constant) (#eq? @constant "infinity") (#set! conceal "∞"))

; Operators
(((ident) @constant) (#eq? @constant "sum") (#set! conceal "∑"))
(((ident) @constant) (#eq? @constant "product") (#set! conceal "∏"))
(((ident) @constant) (#eq? @constant "integral") (#set! conceal "∫"))
(((ident) @constant) (#eq? @constant "compose") (#set! conceal "∘"))
(((ident) @constant) (#eq? @constant "convolve") (#set! conceal "∗"))
(((ident) @constant) (#eq? @constant "partial") (#set! conceal "∂"))
(((ident) @constant) (#eq? @constant "dif") (#set! conceal "𝐝"))
(((ident) @constant) (#eq? @constant "gradient") (#set! conceal "∇"))
(((ident) @constant) (#eq? @constant "nabla") (#set! conceal "∇"))
(((ident) @constant) (#eq? @constant "laplace") (#set! conceal "∆"))

; Relations
(((shorthand) @markup.math) (#eq? @markup.math ">=") (#set! conceal "≧"))
(((shorthand) @markup.math) (#eq? @markup.math "<=") (#set! conceal "≦"))
(((ident) @constant) (#eq? @constant "therefore") (#set! conceal "∴"))

; Logics
(((ident) @constant) (#eq? @constant "forall") (#set! conceal "∀"))
(((ident) @constant) (#eq? @constant "exists") (#set! conceal "∃"))
(((ident) @constant) (#eq? @constant "not") (#set! conceal "￢"))
(((ident) @constant) (#eq? @constant "and") (#set! conceal "∧"))
(((ident) @constant) (#eq? @constant "or") (#set! conceal "∨"))
(((ident) @constant) (#eq? @constant "therefore") (#set! conceal "∴"))
(((ident) @constant) (#eq? @constant "because") (#set! conceal "∵"))
(((ident) @constant) (#eq? @constant "qed") (#set! conceal "■"))

; 

; Greek Letters
;; small
(((ident) @constant) (#eq? @constant "alpha") (#set! conceal "α"))
(((ident) @constant) (#eq? @constant "beta") (#set! conceal "β"))
(((ident) @constant) (#eq? @constant "gamma") (#set! conceal "γ"))
(((ident) @constant) (#eq? @constant "delta") (#set! conceal "δ"))
(((ident) @constant) (#eq? @constant "epsilon") (#set! conceal "ε"))
(((ident) @constant) (#eq? @constant "zeta") (#set! conceal "ζ"))
(((ident) @constant) (#eq? @constant "eta") (#set! conceal "η"))
(((ident) @constant) (#eq? @constant "theta") (#set! conceal "θ"))
(((ident) @constant) (#eq? @constant "iota") (#set! conceal "ι"))
(((ident) @constant) (#eq? @constant "kappa") (#set! conceal "κ"))
(((ident) @constant) (#eq? @constant "lambda") (#set! conceal "λ"))
(((ident) @constant) (#eq? @constant "mu") (#set! conceal "μ"))
(((ident) @constant) (#eq? @constant "nu") (#set! conceal "ν"))
(((ident) @constant) (#eq? @constant "xi") (#set! conceal "ξ"))
(((ident) @constant) (#eq? @constant "omicron") (#set! conceal "ο"))
(((ident) @constant) (#eq? @constant "pi") (#set! conceal "π"))
(((ident) @constant) (#eq? @constant "rho") (#set! conceal "ρ"))
(((ident) @constant) (#eq? @constant "sigma") (#set! conceal "σ"))
(((ident) @constant) (#eq? @constant "tau") (#set! conceal "τ"))
(((ident) @constant) (#eq? @constant "upsilon") (#set! conceal "υ"))
(((ident) @constant) (#eq? @constant "phi") (#set! conceal "φ"))
(((ident) @constant) (#eq? @constant "chi") (#set! conceal "χ"))
(((ident) @constant) (#eq? @constant "psi") (#set! conceal "ψ"))
(((ident) @constant) (#eq? @constant "omega") (#set! conceal "ω"))
;; BIG
(((ident) @constant) (#eq? @constant "Alpha") (#set! conceal "Α"))
(((ident) @constant) (#eq? @constant "Beta") (#set! conceal "Β"))
(((ident) @constant) (#eq? @constant "Gamma") (#set! conceal "Γ"))
(((ident) @constant) (#eq? @constant "Delta") (#set! conceal "Δ"))
(((ident) @constant) (#eq? @constant "Epsilon") (#set! conceal "Ε"))
(((ident) @constant) (#eq? @constant "Zeta") (#set! conceal "Ζ"))
(((ident) @constant) (#eq? @constant "Eta") (#set! conceal "Η"))
(((ident) @constant) (#eq? @constant "Theta") (#set! conceal "Θ"))
(((ident) @constant) (#eq? @constant "Iota") (#set! conceal "Ι"))
(((ident) @constant) (#eq? @constant "Kappa") (#set! conceal "Κ"))
(((ident) @constant) (#eq? @constant "Lambda") (#set! conceal "Λ"))
(((ident) @constant) (#eq? @constant "Mu") (#set! conceal "Μ"))
(((ident) @constant) (#eq? @constant "Nu") (#set! conceal "Ν"))
(((ident) @constant) (#eq? @constant "Xi") (#set! conceal "Ξ"))
(((ident) @constant) (#eq? @constant "Omicron") (#set! conceal "Ο"))
(((ident) @constant) (#eq? @constant "Pi") (#set! conceal "Π"))
(((ident) @constant) (#eq? @constant "Rho") (#set! conceal "Ρ"))
(((ident) @constant) (#eq? @constant "Sigma") (#set! conceal "Σ"))
(((ident) @constant) (#eq? @constant "Tau") (#set! conceal "Τ"))
(((ident) @constant) (#eq? @constant "Upsilon") (#set! conceal "Υ"))
(((ident) @constant) (#eq? @constant "Phi") (#set! conceal "Φ"))
(((ident) @constant) (#eq? @constant "Chi") (#set! conceal "Χ"))
(((ident) @constant) (#eq? @constant "Psi") (#set! conceal "Ψ"))
(((ident) @constant) (#eq? @constant "Omega") (#set! conceal "Ω"))

; Math Arrows
;; Shorthands
(((shorthand) @markup.math) (#eq? @markup.math "->") (#set! conceal "→"))
(((shorthand) @markup.math) (#eq? @markup.math "-->") (#set! conceal "⟶"))
(((shorthand) @markup.math) (#eq? @markup.math "<-") (#set! conceal "←"))
(((shorthand) @markup.math) (#eq? @markup.math "<--") (#set! conceal "⟵"))
(((shorthand) @markup.math) (#eq? @markup.math "<->") (#set! conceal "↔"))
(((shorthand) @markup.math) (#eq? @markup.math "|->") (#set! conceal "↦"))
(((shorthand) @markup.math) (#eq? @markup.math "->>") (#set! conceal "↠"))
(((shorthand) @markup.math) (#eq? @markup.math "=>") (#set! conceal "⇒"))
(((shorthand) @markup.math) (#eq? @markup.math "<=>") (#set! conceal "⇔"))
(((shorthand) @markup.math) (#eq? @markup.math "==>") (#set! conceal "⟹  "))
;; Instances
; (((ident) @constant) (#eq? @constant "arrow") (#set! @constant conceal "→"))
; ((ident) @constant (#eq? @constant "arrow")
;   field: ((ident) @field) (#eq? @field "double")
;  (#offset! @constant 0 0 0 7) (#set! @constant conceal "⇒"))

; Superscripts
(((number) @constant) (#has-parent? @constant attach) (#eq? @constant "0")
 (#offset! @constant 0 -1 0 0) (#set! conceal "⁰"))

; Bold letters
; ((call) @call
;   item: (ident) @function.call (#eq? @function.call "bold")
;  (#set! @call conceal ""))
