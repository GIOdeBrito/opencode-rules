
Coding Style Rules:
* Follow Allman's identation style unless the language has a stringly stablished or enforced syntax/paradigm;
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
- JSON objects;
- JavaScript exports;
- CSS blocks;

```JavaScript
lambdaExp.func(x => {
    
    // code goes here, always break the first line
});
```

General Rule:
* Always use full braces;
* Apply DRY (Don't Repeat Yourself) principles;
* Make use of guard clauses;
* Avoid using switch;
* Avoid using else;
* Avoid deep nesting;
* Avoid long functions;

Example:

```JavaScript
// Full braces, never compact code
expression(x)
{
    // code
}
```

Do not use tabs in YAML
Do not use tabs in JSON;
