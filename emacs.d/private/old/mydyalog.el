;; -*- lexical-binding: t
(setq mydyalog-symbols
  `(("`" . "⋄") ("~" . "⌺")
    ("1" . "¨") ("!" . "⌶")
    ("2" . "¯") ("@" . "⍫")
    ("3" . "<") ("#" . "⍒")
    ("4" . "≤") ("$" . "⍋")
    ("5" . "=") ("%" . "⌽")
    ("6" . "≥") ("^" . "⍉")
    ("7" . ">") ("&" . "⊖")
    ("8" . "≠") ("*" . "⍟")
    ("9" . "∨") ("(" . "⍱")
    ("0" . "∧") (")" . "⍲")
    ("-" . "×") ("_" . "!")
    ("=" . "÷") ("+" . "⌹")
    ("q" . "?")
    ("w" . "⍵")
    ("e" . "∊") ("E" . "⍷")
    ("r" . "⍴")
    ("t" . "~") ("T" . "⍨")
    ("y" . "↑")
    ("u" . "↓")
    ("i" . "⍳") ("I" . "⍸")
    ("o" . "○") ("O" . "⍥")
    ("p" . "*") ("P" . "⍣")
    ("[" . "←") ("{" . "⍞")
    ("]" . "→") ("}" . "⍬")
    ("\\" . "⊢") ("|" . "⊣")
    ("a" . "⍺")
    ("s" . "⌈")
    ("d" . "⌊")
    ("f" . "_")
    ("g" . "∇")
    ("h" . "∆")
    ("j" . "∘") ("J" . "⍤")
    ("k" . "'") ("K" . "⌸")
    ("l" . "⎕") ("L" . "⌷")
    (";" . "⍎") (":" . "≡")
    ("'" . "⍕") ("\"" . "≢")
    ("z" . "⊂") ("Z" . "⊆")
    ("x" . "⊃")
    ("c" . "∩")
    ("v" . "∪")
    ("b" . "⊥")
    ("n" . "⊤")
    ("m" . "|")
    ("," . "⍝")  ("<" . "⍪")
    ("." . "⍀") (">" . "⍙")
    ("/" . "⌿") ("?" . "⍠")))

(defun mydyalog-map-keys ()
  (dolist (pair mydyalog-symbols)
    (define-key dyalog-mode-map
      (kbd (concat "H-" (car pair)))
      (lambda () (interactive) (insert (cdr pair))))))

(provide 'mydyalog)