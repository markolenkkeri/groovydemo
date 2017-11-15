#!/usr/bin/env groovy
println "Shelliskripta! DSL-esimerkki"

show = { println it }
square_root = { Math.sqrt(it) }
square = { it*it }
def please(action) {
  [the: { what ->
      [of: { n -> action(what(n)) }]
        }]
}

please show the square_root of 100
please show the square of 4
