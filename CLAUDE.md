# Claude Code Daily Journaling System

A comprehensive personal reflection and productivity tracking system built with Claude Code. Designed to take less than 10 minutes per day while providing deep insights into mood, energy, accomplishments, and personal growth patterns.

---

## Overview

The `/daily-checkin` command is a structured journaling system that helps you:
- Track mood and energy patterns over time
- Monitor accomplishment momentum and priority completion
- Analyze how you spend your time (Work, Learning, Rest, Social, Wasted)
- Identify correlations between activities and well-being (e.g., "Gym days = better mood")
- Build self-awareness through consistent reflection
- Receive encouraging, non-judgmental feedback
- Maintain accountability loops for your goals

**Time commitment:** 5-10 minutes per day (Quick or Full mode)

**Philosophy:** Progress over perfection. Rest and productivity can coexist. Honest self-tracking builds transformation.

---

## Key Features

### 1. **Flexible Date Entry**
- Fill out for today or backfill previous days
- Accepts natural language ("yesterday", "2 days ago", specific dates)

### 2. **Quick vs Full Mode**
- **Quick Mode:** 5 minutes - core questions only
- **Full Mode:** 8-10 minutes - core + rotating day-specific questions

### 3. **Yesterday's Priority Check**
- Automatic accountability loop
- Reads previous day's #1 priority and asks if completed
- Tracks completion rate over time

### 4. **Mood & Energy Tracking**
- Simple 4-option multiple choice for speed
- Trends visualized in reflections with ASCII charts
- Correlations identified (e.g., gym days vs mood)

### 5. **Daily Tags**
- Multi-select categories: Work day, Learning day, Rest day, Social day, Recovery day, Gym day
- Powers pattern analysis ("Your best mood days are Learning days")

### 6. **Time Allocation Tracking**
- Track hours in: Work, Learning, Rest, Social, **Wasted** (procrastination)
- Identifies patterns in how time is spent
- Honest tracking of unproductive time

### 7. **Rotating Questions by Day**
Each day of the week has specific focus questions:
- **Monday:** "What's your focus theme for this week?"
- **Tuesday/Thursday:** Contextual questions based on detected patterns or "Any challenges/blockers?"
- **Wednesday:** "What's helping or hurting your energy this week?"
- **Friday:** "What's your biggest win from this week?"
- **Weekend:** "Any other thoughts or reflections?"

### 8. **AI-Generated Reflections**
Every entry generates a comprehensive reflection including:
- **TL;DR** (< 100 words) - Scannable summary of key insights
- Mood & Energy Patterns (with ASCII trend charts)
- Accomplishment Momentum analysis
- Priority Completion Rate tracking
- Journaling Streak counter
- Time Allocation insights
- Tag-Based correlations
- Weekly Summary (every 7 days)
- Thoughtful observations and gentle suggestions
- Celebrations of wins (however small)

### 9. **Pattern Detection**
The system identifies:
- Mood/energy trends over time
- Activities correlated with better well-being
- Priority completion patterns
- Time allocation trends
- Multi-day patterns (e.g., "Energy low for 3 days → trigger supportive question")

### 10. **Mobile & Desktop Support**
Use your journal from any device:
- **Desktop:** Full Claude Code CLI experience with automatic git sync
- **Mobile:** Access via Claude mobile app connected to your GitHub repo
- Automatic platform detection
- Seamless synchronization across devices
- Mobile creates branches for safety; merge via GitHub web/app

---

## File Structure

```
journal/
└── daily/
    ├── entries/
    │   ├── 2025-12-28.md
    │   ├── 2025-12-29.md
    │   └── 2025-12-30.md
    └── reflections/
        ├── 2025-12-28-reflection.md
        ├── 2025-12-29-reflection.md
        └── 2025-12-30-reflection.md
```

**Entries** contain your raw responses
**Reflections** contain AI-generated analysis and insights

---

## How It Works

### Check-in Flow:

1. **Date Selection** - "Are you completing for today or a different day?"
2. **Mode Selection** - Quick (5 min) or Full (8-10 min)?
3. **Yesterday's Priority Check** - Reviews previous entry and asks if priority was completed
4. **Mood & Energy** - Multiple choice (4 options each)
5. **Accomplishments** - What are 3 things you accomplished today?
6. **Tomorrow's Priority** - What's your #1 priority for tomorrow?
7. **Tags** - Multi-select day types
8. **Time Allocation** - Hours in Work, Learning, Rest, Social, Wasted
9. **Gratitude** - What are you grateful for today?
10. **Rotating Question** - Based on day of week (Full mode only)

### Reflection Generation:

After you complete the check-in, an AI agent:
- Reads your entry
- Reviews the last 7 days of entries for context
- Identifies patterns and trends
- Generates a comprehensive reflection document
- Saves it to `/journal/daily/reflections/`

### Sample Entry Format:

```markdown
# Daily Check-in - December 29, 2025 (Monday)

## Mode
Full

## Yesterday's Priority Check
1/3 completed (33% - only gym, missed other priorities)

## Mood & Energy
- **Mood**: 6-7/10 (Good)
- **Energy**: 5-7/10 (Moderate)

## Accomplishments Today
1. Went to the gym
2. Got device fixed at mall
3. Watched Avatar movie + dinner

## Tomorrow's #1 Priority
Make progress on Claude Code learning, GitHub repo, Substack

## Tags
Rest day, Gym day

## Time Allocation (hours)
- Work: 0
- Learning: 0.5
- Rest: 6
- Social: 2
- Wasted: 2

## Gratitude
Having a Monday that felt like a weekend

## Focus Theme for This Week
PM portfolio buildout, US job applications, social content

---
*Entry created: December 30, 2025 | Entry for: December 29, 2025*
```

### Sample Reflection Format:

```markdown
# Daily Reflection - December 29, 2025 (Monday)

## TL;DR
**Big Win:** Mood jumped from 4-5 to 6-7, energy from 3-4 to 5-7.
**Key Pattern:** Gym was the only priority completed AND the day mood/energy spiked—physical movement might be your keystone habit.
**2-day journaling streak started!** Only 2 hours wasted time.
**Action:** Consider prioritizing gym as foundation.

---

## Mood & Energy Patterns
[ASCII charts, trend analysis, comparisons]

## Accomplishment Momentum
[Celebration of wins, themes identified]

## Priority Completion Rate
[Percentage tracked, patterns noted]

## Current Streak
[Consecutive days journaling]

## Time Allocation Insights
[How time is spent, trends]

## Tag-Based Insights
[Correlations between tags and mood/energy]

## Weekly Summary
[Every 7 days - highlights and patterns]

## Insights & Observations
[Thoughtful analysis]

## Gentle Suggestions
[Supportive ideas, no pressure]

## Celebrations
[What deserves honoring]

---
*Reflection generated: [date]*
```

---

## What Gets Tracked

### Quantitative Metrics:
- Mood (1-10 scale, bucketed)
- Energy (1-10 scale, bucketed)
- Priority completion (Yes/No/Partially)
- Time allocation (hours in 5 categories)
- Journaling streak (consecutive days)
- Tag frequency

### Qualitative Data:
- Accomplishments (free text)
- Priorities (free text)
- Gratitude (free text)
- Weekly focus themes
- Challenges and blockers
- Reflections and thoughts

### Derived Insights:
- Mood/energy trends
- Tag-mood correlations
- Priority completion rates
- Time allocation patterns
- Multi-day patterns
- Weekly summaries

---

## Setup Instructions

### 1. Create the Command File

Create `.claude/commands/daily-checkin.md` with the full command structure (see repository for complete file).

### 2. Create Folder Structure

```bash
mkdir -p journal/daily/entries
mkdir -p journal/daily/reflections
```

### 3. Run Your First Check-in

```bash
/daily-checkin
```

Follow the prompts! The system will guide you through each question.

### 4. Review Your Reflection

After completing the check-in, review the generated reflection in `journal/daily/reflections/[date]-reflection.md`.

### 5. Set Up GitHub Repository (Optional - for Mobile Access)

If you want to use your journal from mobile:

1. **Create a private GitHub repository**
   ```bash
   cd journal
   git init
   git add .
   git commit -m "Initial journal setup"
   git remote add origin https://github.com/[username]/[repo-name].git
   git push -u origin main
   ```

2. **Connect Claude Mobile App to Your Repo**
   - Open Claude mobile app
   - Start a conversation
   - Connect to your journal repository
   - The `/daily-checkin` command will be available from `.claude/commands/daily-checkin.md`

3. **Mobile Workflow**
   - When asked "Desktop or Mobile?", select "Mobile"
   - Answer questions as usual
   - Your entry will be saved to a new branch
   - Merge via GitHub app/web (instructions provided after check-in)

4. **Desktop Workflow**
   - When asked "Desktop or Mobile?", select "Desktop"
   - Automatic `git pull` before (syncs from mobile)
   - Automatic `git push` after (syncs to mobile)
   - All entries stay synchronized

---

## Customization Options

### Adjust Time Buckets
Modify the time allocation categories in the command file to match your lifestyle:
- Default: Work, Learning, Rest, Social, Wasted
- Examples: Add "Creative", "Family", "Health", etc.

### Change Tag Options
Update the tag list to reflect your priorities:
- Default: Work day, Learning day, Rest day, Social day, Recovery day, Gym day
- Examples: Add "Creative day", "Travel day", "Deep work day", etc.

### Modify Rotating Questions
Customize the day-of-week questions in the command file:
- Current: Monday = focus theme, Friday = biggest win, etc.
- Adjust to match your weekly rhythm

### Adjust Reflection Sections
Add or remove sections in the reflection generation prompt:
- Current: 10 sections + TL;DR
- Examples: Add "Sleep quality", "Nutrition", "Social connections", etc.

### Change Tone
Modify the reflection tone in the command file:
- Default: Empathetic, encouraging, non-judgmental
- Options: More analytical, more concise, more celebratory, etc.

---

## Best Practices

### 1. **Be Honest**
Track "wasted" time truthfully. Honesty is the foundation of meaningful change.

### 2. **Don't Batch**
Fill out daily, not weekly. Patterns emerge from consistent data.

### 3. **Review Reflections**
Spend 2 minutes reading your reflection. The insights compound over time.

### 4. **Set Realistic Priorities**
Choose ONE #1 priority, not three. You'll complete more by focusing less.

### 5. **Use Quick Mode When Needed**
5 minutes is better than skipping. Consistency > perfection.

### 6. **Backfill When You Miss**
Use the date selection feature to catch up on missed days.

### 7. **Celebrate Small Wins**
The system will celebrate for you. Let it remind you of progress.

---

## Philosophy & Design Principles

### Progress Over Perfection
- No judgment for incomplete priorities
- Rest is productive
- "Wasted" time is just data, not failure

### 10-Minute Sacred Limit
- Quick mode: 5 minutes
- Full mode: max 10 minutes
- Sustainability through brevity

### Encouragement, Not Criticism
- Reflections are empathetic and supportive
- Patterns identified gently
- Suggestions offered without pressure

### Pattern Recognition Over Point-in-Time
- Weekly trends matter more than daily fluctuations
- Correlations revealed over time
- Long-term growth tracking

### Honest Self-Awareness
- Track both productive and wasted time
- Admit incomplete priorities
- Note struggles openly

---

## Use Cases

### Personal Development
- Track growth habits (gym, learning, therapy)
- Identify mood/energy patterns
- Build self-awareness

### Productivity Tracking
- Monitor priority completion
- Optimize time allocation
- Reduce wasted time

### Mental Health
- Mood pattern analysis
- Energy level tracking
- Gratitude practice

### Career Development
- Track professional accomplishments
- Monitor job search progress
- Document skill building

### Vacation/Recovery
- Ensure adequate rest
- Track restoration patterns
- Balance productivity with recovery

---

## Technical Implementation

### Built With:
- **Claude Code** - CLI-based AI assistant
- **Custom Skills** - `/daily-checkin` command
- **AI Agents** - Reflection generation via general-purpose subagent
- **Markdown** - Simple, portable file format
- **Local Storage** - All data stays on your machine

### Privacy:
- All journal entries stored locally
- No external services required
- Full ownership of your data

### Portability:
- Plain markdown files
- Easy to backup, share, or migrate
- Works with any text editor
- Version control friendly (git)

---

## Example Insights Discovered

Real patterns identified from this system:

- **"Gym days correlate with +2 point mood improvement"**
- **"Wasted time trending down from 4hrs to 2hrs"**
- **"Energy lowest on Thursdays - consider lighter schedule"**
- **"Learning days have highest satisfaction scores"**
- **"Priority completion rate: 67% when limited to 1 goal vs 33% with 3"**
- **"Rest isn't the opposite of productivity - best weeks have both"**

---

## Future Enhancements

Possible additions (not yet implemented):

- Monthly review generation
- Visual charts/graphs (beyond ASCII)
- Export to PDF
- Sleep & nutrition tracking
- Integration with calendar/task managers
- Multi-person journaling (team/family)
- Voice-to-text entry
- Weekly email summaries

---

## FAQ

**Q: What if I miss a day?**
A: Use the date selection feature to backfill. The system will still generate insights.

**Q: Can I change my answers?**
A: Yes, just edit the markdown file in `journal/daily/entries/` and re-run reflection generation if needed.

**Q: How long until I see patterns?**
A: Meaningful insights emerge after 7-14 days. Weekly summaries start after 7 days.

**Q: Can I share this with others?**
A: Yes! The command file and folder structure can be shared. Each person runs it independently.

**Q: What if my priorities change daily?**
A: That's fine! The system tracks what matters each day. Variability is data.

**Q: Can I use this for team tracking?**
A: Currently designed for personal use, but could be adapted for team stand-ups or retros.

---

## Getting Started

1. Set up the command file (`.claude/commands/daily-checkin.md`)
2. Create folder structure (`journal/daily/entries` and `journal/daily/reflections`)
3. Run `/daily-checkin`
4. Answer honestly
5. Read your reflection
6. Repeat tomorrow

**The journey of a thousand miles begins with a single check-in.**

---

## License & Sharing

This system is designed to be shared, adapted, and customized. Feel free to:
- Copy the command structure
- Modify for your needs
- Share with friends/colleagues
- Build upon the foundation

**Attribution appreciated but not required.**

---

*Built with Claude Code. Designed for sustainable self-improvement.*
