---
name: plan-approver
description: Prompt for plan approval after planning. Ask user to proceed with implementation or amend the plan.
---

# Plan Approver

After planning is complete, prompt the user to either proceed with implementation or amend the plan.

## When to Trigger

Automatically after completing a planning task or when asked to plan something.

## Workflow

1. **Complete the plan** - Present a clear, actionable plan with steps
2. **Ask for approval** - Prompt with options:
   - "Go ahead with implementation"
   - "Amend the plan"
   - "Start over"
3. **Act accordingly**:
   - If user says "go ahead" → Continue with implementation
   - If user says "amend" → Wait for revised plan
   - If user says "start over" → Begin planning from scratch

## Example Interaction

### Planning Phase
```
Plan for implementing auth feature:

1. Create auth BLoC with LoginRequested/LoginSuccess/LoginFailure events
2. Set up Dio interceptor for JWT token handling
3. Implement login endpoint call
4. Create login screen with username/password form
5. Store JWT in Hive local storage

Steps ready. Proceed with implementation or amend plan?
```

### User Response Handling
- **"Go ahead" / "Proceed" / "Yes"** → Continue implementing step 1
- **"Amend" / "Change"** → Wait for user to specify changes
- **"Start over" / "New plan"** → Reset and begin fresh planning

## Response Format

```
Plan summary:
[brief plan]

Options:
1. Go ahead with implementation
2. Amend the plan
3. Start over
```

## Tips

- Keep plan concise (3-7 steps max)
- Use numbered list for clarity
- Wait for user response before proceeding
- Be specific about what each step accomplishes