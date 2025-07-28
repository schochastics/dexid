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
      ! 'arg' should be one of "snake", "small_camel", "big_camel", "screaming_snake", "parsed", "mixed", "lower_upper", "upper_lower", "swap", "all_caps", "lower_camel", "upper_camel", "internal_parsing", "none", "flip", "sentence", "random", "title"

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
      ! 'arg' should be one of "sentence", "snake", "small_camel", "big_camel", "screaming_snake", "parsed", "mixed", "lower_upper", "upper_lower", "swap", "all_caps", "lower_camel", "upper_camel", "internal_parsing", "none", "flip", "random", "title"

