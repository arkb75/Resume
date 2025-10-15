# LaTeX Resume Variants

This repo contains multiple LaTeX resume versions, with **one branch per version**.  
Each branch has a single source of truth: `main.tex`.  
PDFs are just build artifacts and should be ignored by the agent.

## Branching Model
Each resume variant (e.g. `resume/ai`, `resume/fullstack`, `resume/embedded`) lives on its own branch.  
Branches are long-lived and reflect different focuses or target roles.  
There is no shared state across branches — Git history is the record.

## What the Agent Does
The agent:
- Takes a job description.  
- Looks at all branches to find the closest existing resume version.  
- Decides whether to reuse an existing branch or create a new one (only when clearly justified).  
- If reusing, makes minimal edits (mostly bolding or very small tweaks).  
- If creating a new branch, branches off an existing one and edits its `main.tex` minimally.  

Detailed instructions for the agent’s behavior will be in `agents.md` (generated automatically when `codex/init` runs).