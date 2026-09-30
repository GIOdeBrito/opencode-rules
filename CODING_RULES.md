
# General Rules:
* Make use of guard clauses;
* Enforce the Single Responsibility Principle (SRP);
* Extract functions based on distinct behaviors and testability, not line counts;
* Favor flat code over deep nesting;
* Do not suppress errors, bypass type safety, use shady workarounds, or employ monkey-patching;
* Prioritize readability over brevity;
* Use descriptive, intention-revealing names;
* Fail fast on errors;
* Sanitize inputs at system bounds;
* Comment the "why" behind complex logic;
* Enforce strict type checking;
* Minimize external dependencies;
* Avoid unnecessary or obvious code commenting;
* Minimize the use of else;
* Use the idiomatic paradigm for the specific language/framework;

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

