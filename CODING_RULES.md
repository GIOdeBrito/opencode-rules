
# General Rules:
* Always use full braces;
* Apply DRY (Don't Repeat Yourself) principles;
* Make use of guard clauses;
* Avoid deep nesting;
* Maximum 20 lines per function;
* Avoid "gambiarras" / shady workarounds;
* Avoid compact / single line code;
* Write strictly human-readable code;
* Write high performance code;
* Use descriptive, intention-revealing names;
* Prefer pure functions;
* Enforce immutability;
* Fail fast on errors;
* Sanitize all inputs;
* Comment the "why", not the "what";
* Enforce strict type checking;
* Minimize external dependencies;
* Avoid unnecessary or obvious code commenting;
* Avoid unnecessary use of else, use early returns if possible;

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
- JSON objects;
- JavaScript exports;
- CSS blocks;

```JavaScript
lambdaExp.func(x => {
    
    // code goes here, always break the first line
});
```

```JavaScript
// Full braces, never compact code
expression(x)
{
    // code
}
```

## Compact / single line code

```Javascript
// Bad code
// Single lined without brackets
if (condition) method();
```

```Javascript
// Good code
// Wrapped around brackets
// Not compact
if(condition) {
    method();
}
```

## Bloated code 

```Javascript
// Bad code
// Too tiring for my eyes
// Unnecessary nesting
// Unnecessary use of else
// Brackets are in K&R style
if (typeof dialog.showModal === 'function') {
    if (!dialog.open) {
        dialog.showModal();
    }
} else {
    dialog.setAttribute('open', '');
}
```

```Javascript
// Good code
// Use of early return
// Brackets are in Allman style
// No unnecessary nesting
// If is hugging the parenthesis
if(typeof dialog.showModal === 'function' && !dialog.open)
{
    dialog.showModal();
    return;
}

dialog.setAttribute('open', '');
```

## If/else/switch, etc. formatting

```Javascript
// Bad code
// There is a gap between the if and the parenthesis
if (condition) {
    method();
}
```

```Javascript
// Good code
// They are close to each other
if(condition)
{
    method();
}
else if(condition)
{
    method();
}
```

## Spacing formatting

```Javascript
// Bad code
// Everything is cramped together in a cacophony
if(condition)
{
    method();
}
else if(condition)
{
    method();
}
if(condition)
{
    method();
}
if(condition)
{
    method();
}
method().dosomething();
```


```Javascript
// Good code
// Properly separated for legibility based on relationship
if(condition)
{
    method();
}
else if(condition)
{
    method();
}

if(condition)
{
    method();
}

if(condition)
{
    method();
}

method().dosomething();
```

Do not use tabs in YAML;
Do not use tabs in JSON;

# PHP specific
write `null` keyword in uppercase: NULL;
do not concatenate SQL strings: it is a bad practice and it is forbidden, in any case.

