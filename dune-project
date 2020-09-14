(lang dune 2.4)
(generate_opam_files true)

(name app)
(version 0.0.1)

(authors "Josef Erben")
(source (github oxidizing/sihl-minimal-starter))
(license MIT)
(maintainers "josef@oxidizing.io")
(homepage "https://github.com/oxidizing/sihl-minimal-starter")
(bug_reports "https://github.com/oxidizing/sihl-minimal-starter/issues")
(documentation "https://oxidizing.github.io/sihl/")

(package
 (name app)
 (synopsis "A minimal web app using Sihl")
 (description "A minimal web app using Sihl.")
 (depends
  ;; General system dependencies
  (dune (>= 2.4))
  (ocaml (>= 4.08.0))
  (sihl (>= 0.1.3))))
