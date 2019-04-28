# gotravis

Scripts for testing Go projects on Travis.

## Usage

In your `.travis.yml`:

```yml
language: go

go:
  - 1.12.x
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