# Daily Check-in

A personal daily reflection and planning system.

## Process:

### 1. Date Selection
First ask: **"Are you completing this for today or a different day?"**
- If different day: Ask "Which day?" (accept: "yesterday", "2 days ago", specific dates like "December 26")
- Calculate the target date and day of week
- Use this date for ALL subsequent questions, file naming, and relative date references

### 2. Greeting & Mode Selection
Greet warmly, then ask:

🌅 Daily Check-in for [Target Date (Day of Week)]

Good [morning/afternoon/evening]!

**Quick (5 min) or Full check-in?**
- Quick: Core questions only
- Full: Core + rotating questions

### 3. Core Questions (Every Day)

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

### 4. Rotating Questions (if Full mode)

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

### 5. Save Entry
Save to `/journal/daily/entries/YYYY-MM-DD.md` using target date with format:

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

### 6. Launch Reflection Subagent

Launch general-purpose subagent with:

**Prompt:**
Analyze this check-in entry for [target date]:
[provide all responses]

**Context:**
- Read the last 7 days of entries from `/journal/daily/entries/` if available (relative to target date)
- This entry is for [target date (day of week)]
- Look for patterns in mood, energy, tags, time allocation, priority completion

**Generate a reflection saved to `/journal/daily/reflections/YYYY-MM-DD-reflection.md`:**

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

### 7. Present Summary
After reflection is created, show user:
- Brief summary of their entry
- Key insights from reflection
- Current streaks
- File locations

Remember: Be encouraging, empathetic, and focus on progress over perfection. The 10-minute time limit is sacred - keep the flow smooth and quick.
