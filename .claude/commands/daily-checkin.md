# Daily Check-in

A personal daily reflection and planning system.

## Process:

### 0. Platform Detection
First, determine the platform:
- Ask: **"Are you using Desktop (Claude Code CLI) or Mobile (Claude app)?"**
- Store this answer to control git operations later
- Desktop: Will use git pull/push for syncing
- Mobile: Will skip git operations (Claude app writes directly to GitHub) and provide merge instructions at end

### 1. Sync with GitHub (Desktop Only)
**If Desktop:**
- Run `git pull` in the journal directory
- This ensures you have the latest entries if you've made any from mobile/other devices
- If pull succeeds with updates: Briefly mention "✓ Synced latest entries from GitHub"
- If pull succeeds with no updates: Continue silently
- If pull fails or there are conflicts: Inform user and ask how to proceed

**If Mobile:**
- Skip this step entirely (Claude app already has latest from GitHub)

### 2. Date Selection
First ask: **"Are you completing this for today or a different day?"**
- If different day: Ask "Which day?" (accept: "yesterday", "2 days ago", specific dates like "December 26")
- Calculate the target date and day of week
- Use this date for ALL subsequent questions, file naming, and relative date references

### 3. Greeting & Mode Selection
Greet warmly, then ask:

🌅 Daily Check-in for [Target Date (Day of Week)]

Good [morning/afternoon/evening]!

**Quick (5 min) or Full check-in?**
- Quick: Core questions only
- Full: Core + rotating questions

### 4. Core Questions (Every Day)

**A. Yesterday's Priority Check** (skip if this is the first entry ever)
- Read the entry from [target date - 1 day] if it exists
- Ask: "Yesterday you said your #1 priority was: [X]. Did you complete it?"
- Options: Yes / No / Partially (with brief note)

**B. Mood & Energy** (use AskUserQuestion with multiple choice)
- How are you feeling? (Great 8-10, Good 6-7, Okay 4-5, Struggling 1-3)
- Energy level? (High 8-10, Moderate 5-7, Low 3-4, Very Low 1-2)

**C. Accomplishments**
- "What are 3 things you accomplished today?" (big or small)

**D. Tomorrow's Priority**
- "What's your #1 priority for tomorrow?" (relative to target date)

**E. Tags** (daily - use AskUserQuestion with multiSelect: true)
- "What type of day was today?"
- Options: Work day, Learning day, Rest day, Social day, Recovery day, Gym day

**F. Time Allocation** (daily)
- "Roughly how many hours on each?" (can be estimates, should add up to ~16 waking hours)
- Work | Learning | Rest | Social | Wasted (procrastination, etc.)

**G. Gratitude**
- "What are you grateful for today?"

### 5. Rotating Questions (if Full mode)

**Determine based on target date's day of week:**

**Monday:**
- "What's your focus theme for this week?"

**Tuesday & Thursday:**
- Check for patterns in recent entries (last 3-7 days):
  - If mood/energy < 5 for 2+ days: "What might help boost your energy?"
  - If energy spike after low period: "What changed? What's working?"
  - If specific goal mentioned 3+ times (e.g., gym, PM portfolio): Encouraging question about it
  - Default: "Any challenges or blockers you faced?"

**Wednesday:**
- "What's helping or hurting your energy this week?"

**Friday:**
- "What's your biggest win from this week?"

**Weekend (Sat/Sun):**
- "Any other thoughts or reflections?" (optional)

### 6. Save Entry
Save to `daily/entries/YYYY-MM-DD.md` using target date with format:

```markdown
# Daily Check-in - [Month Day, Year (Day of Week)]

## Mode
[Quick / Full]

## Yesterday's Priority Check
[Response or "First entry"]

## Mood & Energy
- **Mood**: X/10 ([description])
- **Energy**: X/10 ([description])

## Accomplishments Today
1. [accomplishment]
2. [accomplishment]
3. [accomplishment]

## Tomorrow's #1 Priority
[priority]

## Tags
[comma-separated tags]

## Time Allocation (hours)
- Work: X
- Learning: X
- Rest: X
- Social: X
- Wasted: X

## Gratitude
[gratitude]

## [Rotating Question Title]
[response if Full mode]

---
*Entry created: [actual creation date] | Entry for: [target date]*
```

### 7. Launch Reflection Subagent

Launch general-purpose subagent with:

**Prompt:**
Analyze this check-in entry for [target date]:
[provide all responses]

**Context:**
- Read the last 7 days of entries from `daily/entries/` if available (relative to target date)
- This entry is for [target date (day of week)]
- Look for patterns in mood, energy, tags, time allocation, priority completion

**Generate a reflection saved to `daily/reflections/YYYY-MM-DD-reflection.md`:**

Header: `# Daily Reflection - [Month Day, Year (Day of Week)]`

**Start with TL;DR section (< 100 words):**
A brief summary capturing the key highlights - mood/energy trends, biggest wins, critical patterns, and one actionable insight. Make it scannable and punchy.

**Then include full sections:**
1. **Mood & Energy Patterns** - Trends over last 7 days with simple ASCII chart if possible
2. **Accomplishment Momentum** - Celebrate wins, note themes in accomplishments
3. **Priority Completion Rate** - Track % of priorities completed over available days
4. **Current Streak** - Consecutive days of journaling
5. **Time Allocation Insights** - Patterns in how time is spent (e.g., "Wasted time trending down!")
6. **Tag-Based Insights** - Correlations (e.g., "Mood is highest on Learning days")
7. **Weekly Summary** - If this is day 7, 14, 21, etc., generate weekly highlights
8. **Insights & Observations** - Thoughtful patterns noticed
9. **Gentle Suggestions** - Supportive ideas for tomorrow without pressure
10. **Celebrations** - Honor what went well

**Tone:** Empathetic, encouraging, non-judgmental. Focus on progress over perfection.

### 8. Present Summary
After reflection is created, show user:
- Brief summary of their entry
- Key insights from reflection
- Current streaks
- File locations

### 9. Sync to GitHub

**If Desktop:**
- Run `git add .` in the journal directory
- Commit with message: "Daily check-in: [YYYY-MM-DD]"
- Run `git push` to sync to GitHub
- If push succeeds: Add "✓ Synced to GitHub" at the end of summary
- If push fails: Inform user and suggest they push manually later

**If Mobile:**
- Skip git operations (files already saved to GitHub by Claude app)
- Instead, provide these instructions:

---

📱 **Mobile Workflow Complete!**

Your entry has been saved to a new branch in your GitHub repository.

**To merge to main:**

**Option 1 - Via GitHub Mobile/Web:**
1. Open your repository on your phone browser (github.com/[username]/[repo-name])
2. You'll see a banner "Compare & pull request" for your new branch
3. Tap it → Review changes → Tap "Create pull request"
4. Tap "Merge pull request" → Confirm merge
5. Done! Your entry is now on main branch

**Option 2 - Wait for Desktop:**
1. Next time you're on your laptop, run these commands in your journal directory:
   ```
   git fetch
   git checkout [branch-name-shown-above]
   git checkout main
   git merge [branch-name]
   git push
   ```

**Option 3 - Skip the Merge:**
- Your entry is safely saved in the branch
- It will be accessible next time you use desktop
- Desktop's `git pull` will grab all branches

---

Remember: Be encouraging, empathetic, and focus on progress over perfection. The 10-minute time limit is sacred - keep the flow smooth and quick.
