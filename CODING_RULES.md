
# General Rules:
* Make use of guard clauses;
* Enforce the Single Responsibility Principle (SRP);
* Extract functions/methods based on distinct behaviors and testability, not line counts;
* Split functions/methods by concern and separate them accordingly (e.g.: do not extract helper functions inside a Controller class/file, instead extract them to the `helpers` folders/classes/files, following the current project structure);
* Favor flat code over deep nesting;
* Do not: suppress errors, bypass type safety, use shady workarounds, or employ monkey-patching;
* Prioritize readability over brevity;
* Use descriptive, intention-revealing names;
* Fail fast on errors;
* Sanitize inputs at system bounds;
* Comment the "why" behind complex logic;
* Enforce strict type checking;
* Minimize external dependencies;
* Avoid unnecessary, obvious code comments;
* Minimize the use of else;
* Use the idiomatic paradigm for the specific language/framework;
* Do not concatenate SQL strings;

# Coding Style Rules:
* Follow Allman's identation style unless the language has a strongly stablished or enforced syntax/paradigm;
* Use tabs instead of spaces for indentation;
* Do NOT group or pre-declare all variables at the top of a file, class, or function;
* Declare variables immediately before they are first used, inside the narrowest possible block scope (`if`, `for`, `try`, etc.);
* Prefer `const` / `final` / `val` at the exact point of initialization rather than declaring uninitialized mutable variables early.

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

The following may use K&R style:
- Single-line block bodies (e.g., an `if` block containing only one statement);
- Lambdas / arrow functions;
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
// Wrapped in brackets; K&R allowed because the body is a single line
if(condition) {
    method();
}
```

## Bloated code 

```Javascript
// Bad code
// Too tiring for the eyes
// Unnecessary nesting
// Unnecessary use of else
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

else if (condition) {
    method();
}
```

```Javascript
// Good code
// They are close to each other
if(condition) {
    method();
}
else if(condition) {
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

## Variable Declaration Rules

```javascript
// Bad code
function processOrder(order, taxRate) {
    let subtotal = 0;
    let tax = 0;
    let total = 0;
    let discount = 0;
    
    if (!order.items.length) return 0;
    
    subtotal = order.items.reduce((sum, item) => sum + item.price, 0);
    if (order.coupon) {
        discount = subtotal * 0.1;
    }
    tax = (subtotal - discount) * taxRate;
    total = subtotal - discount + tax;
    return total;
}
```

```javascript
// Good code
function processOrder(order, taxRate)
{
    if(!order.items.length)
    {
        return 0;
    }

    const subtotal = order.items.reduce((sum, item) => sum + item.price, 0);
    const discount = order.coupon ? subtotal * 0.1 : 0;
    const taxableAmount = subtotal - discount;
    const tax = taxableAmount * taxRate;
    
    return taxableAmount + tax;
}
```

## Other

Do not use tabs in YAML;
Do not use tabs in JSON;

## Rules: PHP

write `null` keyword in uppercase: NULL;

