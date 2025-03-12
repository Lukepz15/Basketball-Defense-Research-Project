# Basketball Defense Research Project

📊🏀 *A statistical evaluation of high school defensive strategies using real game data from the 2023–24 season.*

## Overview

This study explores the impact of key defensive strategies by analyzing the effects of creating deflections, forcing opponents to the left side of the court, and limiting their opportunities inside the key. In collaboration with Damien High School’s varsity basketball program, I collected and analyzed data from 23 games during the 2023–24 season to investigate how these tactics influenced point differential and opponent scoring outcomes.

Using Pearson’s correlation coefficient and data visualization, this study provides evidence-based insights into how defensive schemes translate to measurable success on the court.

---

## Objectives

- Analyze how deflections impact opponent scoring and game outcomes.
- Assess the effect of forcing opponents to the right side of the court.
- Evaluate how limiting possessions inside the paint influences point differential.
- Provide visual and statistical validation for coaching strategies.

---

## Data Collection

- **Source**: Full-game film from Damien High School’s 2023–24 varsity season.
- **Games analyzed**: 23
- **Key metrics tracked**:
  - Number of **deflections**
  - Opponent **possessions on the right side**
  - Opponent **possessions inside the key**
  - **Opponent final score**
  - **Point differential**

*A deflection is defined as any non-shot attempt touch by Damien's defense that disrupts the opponent's possession.*

---

## Methodology

- Used **Pearson’s correlation coefficient** to examine linear relationships between defensive metrics (independent variables) and scoring outcomes (dependent variables).
- Created **scatterplots with trend lines** to visualize correlations.
- Identified outliers to assess consistency and highlight key performances.

### Variables

**Independent Variables**  
- Deflections  
- Opponent possessions to the right  
- Opponent possessions inside the key  

**Dependent Variables**  
- Opponent Score  
- Point Differential  

---

## Results Summary

| Metric | Correlation with Opponent Score | Correlation with Point Differential |
|--------|-------------------------------|-------------------------------------|
| Deflections | -0.419 | +0.450 |
| Possessions Right | +0.319 | -0.331 |
| Possessions in Key | +0.426 | -0.394 |

✅ More deflections = lower opponent scoring and higher point differential  
⚠️ More possessions in the key or on the right = higher opponent scoring and smaller point differential

These findings support the hypothesis that defensive activity and positional control are key to success in high school basketball.

---

## Visuals

Included in this repo are scatterplots and trendlines illustrating each variable relationship, highlighting games with significant deviations and standout performances.

📁 `/visuals` — Scatterplots  

---

## Key Takeaways

- Deflections are a strong indicator of defensive success and higher point differential.
- Forcing opponents away from the paint and off their dominant hand correlates with reduced scoring efficiency.
- Film-based data collection paired with statistical analysis provides powerful insight into real-world performance.

---

## Limitations & Future Work

- Small sample size (23 games) limits the ability to perform regression modeling.
- Data collection was manual and time-intensive; future work could leverage tracking software.
- Future studies could expand to multiple seasons or compare across schools or competition levels.
- For higher levels of play, NBA and NCAA public data does not include possessions right or inside the key.

---
