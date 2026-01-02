# Daily Journaling System for Claude Code

> A comprehensive personal reflection and productivity tracking system that takes less than 10 minutes per day while providing deep insights into your mood, energy, accomplishments, and personal growth patterns.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Claude Code](https://img.shields.io/badge/built%20with-Claude%20Code-orange.svg)

---

## ✨ What Is This?

This is a **daily journaling and reflection system** built as a custom skill for [Claude Code](https://claude.com/claude-code). It helps you:

- 📊 Track mood and energy patterns over time
- ✅ Monitor accomplishment momentum and priority completion
- ⏰ Analyze how you spend your time (Work, Learning, Rest, Social, Wasted)
- 🔍 Identify correlations between activities and well-being (e.g., "Gym days = +2 mood points")
- 🧠 Build self-awareness through consistent reflection
- 💬 Receive encouraging, non-judgmental AI-generated insights
- 🎯 Maintain accountability loops for your goals

**Time commitment:** 5-10 minutes per day
**Philosophy:** Progress over perfection. Rest and productivity can coexist.

---

## 🚀 Quick Start

### Prerequisites

- [Claude Code CLI](https://claude.com/claude-code) installed and configured

### Installation

1. Clone this repository:
```bash
git clone https://github.com/ajlowe/daily-journal.git
cd daily-journal
```

2. Run the setup script:
```bash
bash setup.sh
```

3. Start your first check-in:
```bash
claude /daily-checkin
```

That's it! Follow the prompts and you'll have your first journal entry and reflection in minutes.

### Mobile Access (Optional)

Want to use your journal from your phone? Set up GitHub sync:

1. **Create a private GitHub repository** for your journal
2. **Push your journal to GitHub:**
   ```bash
   cd journal
   git init
   git add .
   git commit -m "Initial journal setup"
   git remote add origin https://github.com/[username]/[repo-name].git
   git push -u origin main
   ```
3. **Connect Claude Mobile App:**
   - Open Claude mobile app
   - Start a conversation
   - Connect to your journal repository
   - Run `/daily-checkin` from mobile!

4. **Platform Detection:**
   - When asked "Desktop or Mobile?", select your platform
   - Desktop: Automatic git sync before and after
   - Mobile: Creates branch, merge via GitHub app/web

See [CLAUDE.md](CLAUDE.md#setup-instructions) for detailed mobile setup.

---

## 📖 How It Works

### The Daily Flow

1. **Date Selection** - Fill out for today or backfill previous days
2. **Mode Selection** - Quick (5 min) or Full (8-10 min)
3. **Yesterday's Priority Check** - Did you complete it? (Accountability loop)
4. **Mood & Energy** - Quick multiple choice
5. **3 Accomplishments** - What did you do today?
6. **Tomorrow's #1 Priority** - What matters most?
7. **Tags** - What type of day was it? (Work, Learning, Rest, Social, Recovery, Gym)
8. **Time Allocation** - Hours in: Work, Learning, Rest, Social, Wasted
9. **Gratitude** - What are you grateful for?
10. **Rotating Question** - Changes by day of week (Full mode only)

### What You Get

After each check-in, an AI agent generates a comprehensive reflection including:

- **TL;DR** - Scannable summary (< 100 words)
- **Mood & Energy Patterns** - Trends with ASCII charts
- **Accomplishment Momentum** - Celebration of wins
- **Priority Completion Rate** - % tracked over time
- **Journaling Streak** - Consecutive days
- **Time Allocation Insights** - Where your hours go
- **Tag-Based Insights** - Correlations discovered
- **Weekly Summary** - Generated every 7 days
- **Gentle Suggestions** - Supportive ideas for tomorrow
- **Celebrations** - Honoring what went well

---

## 💡 Key Features

### 📱 Mobile & Desktop Support (NEW!)
- **Desktop:** Full Claude Code CLI experience with automatic git sync
- **Mobile:** Access via Claude mobile app connected to your GitHub repo
- Automatic platform detection
- Seamless synchronization across devices
- Use your journal anywhere, anytime

### 🔄 Rotating Questions by Day
- **Monday:** "What's your focus theme for this week?"
- **Tuesday/Thursday:** Contextual questions based on patterns
- **Wednesday:** "What's helping or hurting your energy?"
- **Friday:** "What's your biggest win from this week?"
- **Weekend:** Optional reflections

### 📈 Pattern Detection
The system automatically identifies:
- Mood/energy trends over time
- Activities correlated with better well-being
- Priority completion patterns
- Time allocation trends
- Multi-day patterns (e.g., "Energy low 3 days → supportive question")

### 🎨 Customizable
- Adjust time buckets (add "Creative", "Family", etc.)
- Change tag options (add "Deep work day", "Travel day", etc.)
- Modify rotating questions
- Adjust reflection tone and sections

---

## 📂 File Structure

```
claude-daily-journal/
├── README.md                          # You are here
├── CLAUDE.md                          # Full documentation
├── LICENSE                            # MIT License
├── setup.sh                           # Quick setup script
├── .gitignore                         # Protects personal entries
├── .claude/
│   └── commands/
│       └── daily-checkin.md          # Main command logic
└── journal/
    └── daily/
        ├── entries/                   # Your raw responses (gitignored)
        │   ├── .gitkeep
        │   └── EXAMPLE-*.md           # Example entries (for reference)
        └── reflections/               # AI-generated insights (gitignored)
            ├── .gitkeep
            └── EXAMPLE-*.md           # Example reflections (for reference)
```

**Note:** Your personal journal entries and reflections are automatically excluded from git via `.gitignore`. Only files prefixed with `EXAMPLE-` are included in the repository for reference.

---

## 📄 See It In Action

Want to see what the entries and reflections look like? Check out the example files:

- **[Example Entry](journal/daily/entries/EXAMPLE-2025-01-15.md)** - See the structure of a daily check-in
- **[Example Reflection](journal/daily/reflections/EXAMPLE-2025-01-15-reflection.md)** - See the AI-generated insights

These show the full flow from check-in to reflection with realistic (but anonymized) data.

---

## 📊 Example Insights Discovered

Real patterns identified from actual use:

- **"Gym days correlate with +2 point mood improvement"**
- **"Wasted time trending down from 4hrs to 2hrs"**
- **"Energy lowest on Thursdays - consider lighter schedule"**
- **"Learning days have highest satisfaction scores"**
- **"Priority completion rate: 67% with 1 goal vs 33% with 3"**
- **"Rest isn't the opposite of productivity - best weeks have both"**

---

## 🛠️ Customization

See [CLAUDE.md](CLAUDE.md) for detailed customization options:
- Modify time buckets
- Change tag categories
- Adjust rotating questions
- Add/remove reflection sections
- Change tone (more analytical, concise, celebratory, etc.)

---

## 📚 Full Documentation

For comprehensive documentation including:
- Detailed feature breakdown
- Sample entry and reflection formats
- Best practices
- Philosophy & design principles
- Use cases
- FAQ

See **[CLAUDE.md](CLAUDE.md)**

---

## 🎯 Use Cases

- **Personal Development** - Track growth habits (gym, learning, therapy)
- **Productivity** - Optimize time allocation, reduce wasted time
- **Mental Health** - Mood/energy tracking, gratitude practice
- **Career** - Document accomplishments, monitor job search progress
- **Vacation/Recovery** - Ensure adequate rest, balance productivity

---

## 🔒 Privacy

- ✅ All journal entries stored **locally** on your machine
- ✅ No external services required (unless using mobile sync)
- ✅ Full ownership of your data
- ✅ Plain markdown files (portable, easy to backup)
- ✅ Personal entries excluded from git by default
- ✅ Optional: Use **private** GitHub repo for mobile sync (recommended)

---

## 🤝 Contributing

This is a personal project shared for others to use and adapt. Feel free to:

- Fork and customize for your needs
- Open issues for bugs or suggestions
- Submit PRs for improvements
- Share your customizations

**Attribution appreciated but not required.**

---

## 📝 License

MIT License - See [LICENSE](LICENSE) file for details.

Free to use, modify, and share. Built with love for sustainable self-improvement.

---

## 🙏 Acknowledgments

Built with [Claude Code](https://claude.com/claude-code) by Anthropic.


---

## 📧 Questions or Feedback?

Open an issue or reach out! I'd love to hear how you're using this system and what insights you're discovering.

---

**The journey of a thousand miles begins with a single check-in.** ✨

Start today: `claude /daily-checkin`
