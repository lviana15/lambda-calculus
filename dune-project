(lang dune 3.19)

(name lambda)

(generate_opam_files true)

(source
 (github lviana15/lambda))

(authors "Lucas Viana <lviana1550@gmail.com>")

(maintainers "Lucas Viana <lviana1550@gmail.com>")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name lambda)
 (synopsis "Lambda calculus eval")
 (description "A simple untyped lambda calculus interpreter")
 (depends ocaml)
 (tags
  ("add topics" "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
