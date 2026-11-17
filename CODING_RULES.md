# Coding Rules

## Control Flow & Structure
- Favor flat control flow over deep nesting: use guard clauses, early returns, and eliminate redundant `else` branches.
- Follow the Single Responsibility Principle (SRP): decompose functions by distinct behavior and testability, not arbitrary line counts.
- Separate concerns according to project architecture: place reusable utilities in dedicated helper/utility modules rather than inside controllers or domain handlers.
- Write idiomatic code tailored to the target language and framework.

## Naming & Documentation
- Use descriptive, intention-revealing names for variables, functions, and types; prioritize clarity over brevity.
- Comment only the "why" behind non-obvious business logic, trade-offs, or invariants; omit comments that merely restate what the code does.

## Type Safety & Error Handling
- Enforce strict static typing; never use `any`, type assertions, or casts to bypass the type system.
- Fail fast on invalid state or unrecoverable errors.
- Never suppress, swallow, or silently ignore exceptions or error return values.
- Do not employ monkey-patching, reflection hacks, or runtime workarounds.

## Security & Dependencies
- Validate and sanitize all external inputs at system boundaries (API handlers, CLI arguments, file parsers).
- Use parameterized queries or query builders for database operations; never concatenate raw strings into SQL queries.
- Prefer standard library APIs over adding external dependencies unless strictly necessary.

## Coding Style Rules:
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

