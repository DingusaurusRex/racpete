#!/usr/bin/racket
#lang racket

(require
  "config.rkt"
  "connection.rkt")

(define (log nick message)
  (display-to-file (string-append "<" nick "> " message "\n")
                   (string-append CHAN ".log") #:exists 'append))

(define (print-private nick msg)
  (display (string-append nick " : " msg "\n")))

(start-pete log)