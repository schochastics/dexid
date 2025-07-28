# dexid works

    Code
      dexid(3, gen = c(0, 10))
    Condition
      Error in `dexid()`:
      ! Generations must be between 1 and 9.

---

    Code
      dexid(3, case = "invalid_case")
    Condition
      Error in `match.arg()`:
      ! 'arg' should be one of "snake", "small_camel", "big_camel", "screaming_snake", "parsed", "mixed", "lower_upper", "upper_lower", "swap", "all_caps", "lower_camel", "upper_camel", "internal_parsing", "none", "flip", "sentence", "random", "title"

