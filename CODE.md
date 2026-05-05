Follow strictly Allman's identation style.

while(x == y)
{
    // Code
}

function fname (args)
{
    // Code
}

Even for single lines.

Exceptions to Allman's strict rule:

- lambdas;
- JSON and objects;
- JS files exports;

These above can be written/refactored in this style similar to K&R;

lambdaExp.func(x => {
    
    // code goes here, skip the first line
});

Do not omit braces, e.g: if (x) y();
Do not compact code, e.g: a { b(); }

Use tabs instead of spaces;

Do not use tabs in: yaml, json files;
