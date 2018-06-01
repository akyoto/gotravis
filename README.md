# gotravis

Go scripts for testing on Travis.

## Usage

```yml
language: go

go:
  - 1.10.x
  - master

install: true

matrix:
  allow_failures:
    - go: master
  fast_finish: true

notifications:
  email: false

before_script:
  - bash <(curl -s https://raw.githubusercontent.com/blitzprog/gotravis/master/before-script.sh)

script:
  - bash <(curl -s https://raw.githubusercontent.com/blitzprog/gotravis/master/script.sh)

after_success:
  - bash <(curl -s https://raw.githubusercontent.com/blitzprog/gotravis/master/after-success.sh)
```