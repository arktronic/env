---
name: code-review-comments
description: 'Use when evaluating code review comments, PR feedback, or requested review changes. Determine whether each comment is valid and realistic, explain the evidence, and present options without making changes until explicitly approved.'
---

# Address Code Review Comments

Evaluate review feedback and help the user decide what to do. This workflow does not authorize code changes.

## Procedure

1. Read the comment and inspect only the relevant code, tests, and context needed to assess it.
2. Decide whether the concern is valid and realistic for supported usage. Distinguish confirmed issues from speculative or unverifiable concerns; cite concrete evidence and note any assumptions.
3. If the comment is valid, explain its impact and present multiple numbered practical options whenever reasonable, including a recommended option when useful. Include a no-change or clarification option when appropriate.
4. If it is invalid, explain why. If there is not enough evidence, say what is unknown and ask for the missing context rather than guessing.
5. Stop after the assessment and options. Do not edit files, run fix-up tools, or otherwise modify the project unless/until the user explicitly approves a specific course of action.

## Approval Gate

A review comment, a request to assess it, or discussion of possible fixes is not approval to implement a fix. Wait for an explicit user instruction selecting or authorizing changes. Provide a recommended course of action when appropriate, so the user can simply say "go" to proceed.
