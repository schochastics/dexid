# dexid works

    Code
      dexid(3, gen = c(0, 10))
    Condition
      Error in `dexid()`:
      ! gen must contain values between 1 and 9.

---

    Code
      dexid(3, case = "invalid_case")
    Condition
      Error in `match.arg()`:
      ! 'arg' should be one of "snake", "kebab", "camel", "caps", "sentence", "custom"

# dex_sentence works

    Code
      dex_sentence(3, gen = c(0, 10))
    Condition
      Error in `dex_sentence()`:
      ! gen must contain values between 1 and 9.

---

    Code
      dex_sentence(3, case = "invalid_case")
    Condition
      Error in `match.arg()`:
      ! 'arg' should be one of "sentence", "snake", "kebab", "camel", "caps", "custom"

