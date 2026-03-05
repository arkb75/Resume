# Repository Guidelines

## Project Structure & Module Organization
- **`abdul_khurram_resume.tex`:** Canonical resume source for the active branch; keep edits minimal and focused on the target role.
- **LaTeX artifacts:** Files like `abdul_khurram_resume.pdf`, `main.log`, `main.fls`, and `main.synctex.gz` are build outputs.
- **Branch scope:** Each long-lived branch (e.g., `resume/ai`, `resume/fullstack`) owns its own `abdul_khurram_resume.tex`; never merge content across variants.

## Build, Test, and Development Commands
- **Compile:** `latexmk -pdf abdul_khurram_resume.tex` generates the PDF and resolves cross-references.
- **Preview loop:** `latexmk -pvc -pdf abdul_khurram_resume.tex` watches for changes and refreshes the PDF automatically.
- **Clean:** `latexmk -c abdul_khurram_resume.tex` removes auxiliary files while leaving the PDF; use `latexmk -C abdul_khurram_resume.tex` before switching branches.

## Coding Style & Naming Conventions
- **Indentation:** Use two-space indentation for environments and align wrapped lines under their opening command.
- **Emphasis:** Prefer `\textbf{}` for highlighting keywords and `\textit{}` for secondary emphasis; avoid inline styling packages unless necessary.
- **Sections:** Maintain existing ordering (Summary, Experience, Projects, Education, Skills); add new sections only when tailored to the job.
- **Macros:** Introduce new commands with `\newcommand` at the top of `abdul_khurram_resume.tex`, and reuse existing macros (e.g., `\resumeItem`) wherever possible.
- **Length guard:** When replacing existing text, keep the new content at or below the original character count so `abdul_khurram_resume.tex` stays single-page.

## Testing Guidelines
- **Compilation check:** Run `latexmk -pdf abdul_khurram_resume.tex` before every commit to ensure a warning-free build.
- **Visual review:** Inspect the generated PDF for layout issues such as line breaks, overflow, or uneven bullets.
- **Variant diff:** When sharing content across branches, diff `abdul_khurram_resume.tex` files to verify only role-specific changes land.

## Commit & Pull Request Guidelines
- **Commit format:** Start messages with an imperative verb (e.g., `Update summary bullet for cloud role`); keep to 72 characters when possible.
- **Artifacts:** Never commit PDFs or LaTeX auxiliary files; run the clean command before staging.
- **Pull requests:** Provide a concise summary of role adjustments, list impacted sections, and link the triggering job description or issue.
- **Reviews:** Highlight any new macros or formatting changes that require reviewer attention and attach the compiled PDF for context.

## Branch Workflow Notes
- **Reuse first:** Default to updating the closest existing branch; create a new branch only when changes exceed light rewording.
- **Naming:** Name new branches `resume/<descriptor>` (e.g., `resume/mlops`) to keep the catalogue searchable.
