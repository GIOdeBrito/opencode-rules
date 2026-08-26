
# General Rules:
* Always use full braces;
* Apply DRY (Don't Repeat Yourself) principles;
* Make use of guard clauses;
* Avoid technical debt;
* Avoid using switch;
* Avoid using else;
* Avoid deep nesting;
* Avoid long functions;
* Avoid "gambiarras" / shady workarounds;
* Avoid compact / single line code;
* Write strictly human-readable code;
* Write high performance code;
* Adhere strictly to the industry's best practices;
* Use descriptive, intention-revealing names;
* Prefer pure functions;
* Enforce immutability;
* Fail fast on errors;
* Sanitize all inputs;
* Comment the "why", not the "what";
* Enforce strict type checking;
* Minimize external dependencies;
* Write tests for edge cases;
* Avoid unnecessary or obvious code commenting;

# Coding Style Rules:
* Follow Allman's identation style unless the language has a strongly stablished or enforced syntax/paradigm;
* Use tabs instead of spaces for indentation;

Example:

```JavaScript
method (x, y, z)
{
    // Code
}

function method (x, y, z)
{
    // Code
}
```

The following may use K&R style
- lambdas / arrow functions;
- if/else statements;
- JSON objects;
- JavaScript exports;
- CSS blocks;

```JavaScript
lambdaExp.func(x => {
    
    // code goes here, always break the first line
});
```

Example:

```JavaScript
// Full braces, never compact code
expression(x)
{
    // code
}
```

Compact / single line code is strictly forbidden.

```Javascript
// Bad code example
if (condition) method();
```

Instead wrap it around brackets in K&R style.

```Javascript
// Good code example
if(condition) {
    method();
}
```

Do not use tabs in YAML;

Do not use tabs in JSON;

# PHP specific

write `null` keyword in uppercase: NULL;

do not concatenate SQL strings: it is a bad practice and it is forbidden, in any case;

