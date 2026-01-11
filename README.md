# regextoy

`regextoy` is a **toy R package** created for practicing R package development.  
It currently contains **one function** to make working with string splitting easier.

---

## Installation

You can install the development version from GitHub:

```r
# Install devtools if you haven't already
install.packages("devtools")

# Install regextoy from GitHub
devtools::install_github("Ojasv-Issar/regextoy")
```

Or install locally after cloning the repository:

```r
# Clone the repo first, then from R console:
devtools::install("~/path/to/regextoy")
library(regextoy)
```

---

## Function: `strsplit1()`

`strsplit1()` splits a single string into pieces using a delimiter. It wraps `base::strsplit()` but returns a simple character vector instead of a list, which is more convenient for single-string inputs.

### Usage

```r
strsplit1(x, split)
```

### Arguments

* **`x`**: A character vector with one element (the string you want to split)
* **`split`**: The character(s) to split on (e.g., `","`, `" "`, `"-"`)

### Return Value

A character vector containing the split pieces.

---

## Examples

```r
library(regextoy)

# Split a comma-separated string
strsplit1("apple,banana,cherry", ",")
#> [1] "apple"  "banana" "cherry"

# Split a space-separated string
strsplit1("hello world R", " ")
#> [1] "hello" "world" "R"

# Split on a hyphen
strsplit1("2025-01-10", "-")
#> [1] "2025" "01"   "10"

# Compare with base R's strsplit()
strsplit("apple,banana,cherry", ",")
#> [[1]]
#> [1] "apple"  "banana" "cherry"

# strsplit1() gives you the vector directly!
strsplit1("apple,banana,cherry", ",")
#> [1] "apple"  "banana" "cherry"
```

---

## Why `strsplit1()`?

The base R function `strsplit()` returns a **list** because it's designed to handle multiple input strings:

```r
x <- c("a,b,c", "d,e,f")
strsplit(x, ",")
#> [[1]]
#> [1] "a" "b" "c"
#> 
#> [[2]]
#> [1] "d" "e" "f"
```

But when you **know** you have just one string, you typically have to do:

```r
strsplit(x, ",")[[1]]  # Extract the first (and only) element
```

`strsplit1()` does this automatically, making your code cleaner:

```r
strsplit1(x, ",")  # Returns the vector directly
```

---

## Development

This package was created following the [R Packages (2e)](https://r-pkgs.org/) book by Hadley Wickham and Jenny Bryan.

### Package Structure

```
regextoy/
├── DESCRIPTION          # Package metadata
├── NAMESPACE           # Exported functions
├── LICENSE             # MIT License
├── LICENSE.md          # Full license text
├── R/                  # R source code
│   └── strsplit1.R    # The strsplit1() function
├── man/                # Documentation
│   └── strsplit1.Rd   # Help file for strsplit1()
└── tests/              # Unit tests
    └── testthat/
        └── test-strsplit1.R
```

### Running Tests

```r
# Load the package
devtools::load_all()

# Run tests
devtools::test()

# Run R CMD check
devtools::check()
```

---

## Notes

* This is a **practice package** created for learning purposes
* The function is intentionally simple to demonstrate package development workflow
* For production regex work, consider packages like:
  - [stringr](https://stringr.tidyverse.org/)
  - [stringi](https://stringi.gagolewski.com/)
  - [rex](https://cran.r-project.org/package=rex)

---

## License

MIT © Ojasv Issar

---

## Future Enhancements

Potential additions to expand this package:

- [ ] Add error handling for edge cases
- [ ] Create `strsplit1_fixed()` for literal string matching
- [ ] Add more regex helper functions
- [ ] Create vignettes with extended examples
- [ ] Add GitHub Actions for CI/CD

---

## Contributing

This is a learning project, but suggestions and improvements are welcome! Feel free to:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-function`)
3. Commit your changes (`git commit -m 'Add new function'`)
4. Push to the branch (`git push origin feature/new-function`)
5. Open a Pull Request

---

**Happy string splitting! 🎉**
