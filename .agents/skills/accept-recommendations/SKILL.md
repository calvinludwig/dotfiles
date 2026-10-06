---
name: accept-recommendations
description: Accept all or unanswered recommendations in a grill-with-docs round, record the decisions, and continue grilling without starting implementation.
---

# Accept Recommendations

Use `$accept-recommendations` to answer the current round of an active [grill-with-docs](../grill-with-docs/SKILL.md) session. Follow [grilling](../grilling/SKILL.md) for the design tree and [domain-modeling](../domain-modeling/SKILL.md) for documentation.

Acceptance authorizes design decisions and their documentation only. Do not implement anything yet, start an implementation workflow, or delegate implementation.

1. Recover the current round, its recommended answers, and the user's answers from the conversation. If grilling is already finished, reply only: **The grilling is done.** If there is no round to accept and completion is not established, ask which recommendations the user means.
2. Treat this invocation as the user's acceptance:
   - If no questions in the current round have been answered, accept all its recommended answers.
   - If some have been answered, accept only the recommendations for the unanswered questions; preserve the user's existing answers.
   Respect any narrower scope the user gives. Acceptance covers recommendations already presented in this round, not recommendations introduced later. A question without a recommended answer stays open.
3. Record the accepted decisions and update the glossary or ADRs where domain-modeling calls for them. Keep changes within the session's design documentation.
4. Recompute the frontier using grilling's completion criterion: every branch visited and no unresolved decisions or prerequisites. If grilling is now finished, reply only: **The grilling is done.** Otherwise, briefly identify the accepted answers, explicitly say **Do not implement anything yet.**, and continue grilling with the next round or wait for any outstanding fact-finding.
