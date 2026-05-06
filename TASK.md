
This file dictates how to behave when performing any user-requested task;

Generate a new report-{datetime}.md for every task you are requested to perform and save them to a folder named /projectdir/`opencode_session` and give 1000:1000 user ownership;

Create directories if non-existant;

Append metadata headers for all reports:

---
task: "Task name"
timestamp: YYYY-MM-DD HH:MM:SS
context_files: [file1.ext, file2.ext]
status: completed | failed | pending
---

After that then write its contents to the report file, include: initial task, final result;

Inside the output folder, there will be a memory.md, create if empty, file, there: append it with essential information of the conversation,
whatsoever information you'll need to remember in the next fresh session;


