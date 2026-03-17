# CEO Dashboard

**Location:** Reports → Dashboards → **CEO** (selector: Claims Manager, CEO, Agency Principal, CFO, Underwriting Manager)

**Dashboards URL:** `https://yoursitename.britecore.com/britecore/reports/analytic_dashboards`

The CEO dashboard gives an executive view of profitability, retention, current events, and agency profile. It has four tabs: **Profitability**, **Retention**, **Current Events**, and **Agency Profile**. On every chart, **filtering**, **sorting**, **export to CSV or Excel**, and **expand to full screen** are available—see [Chart options (all dashboards)](dashboards.md#chart-options-all-dashboards) in the main doc.

**Why it matters for you:** Answer the board’s questions on profitability, retention, and agency performance without waiting for reports. See what’s working and where to act—from loss ratio by line and geography to the last 30 days of quotes, issues, and cancellations—so strategy is grounded in current data.

![CEO Dashboard overview](assets/CEO%20Dashboard%20Capture.png)

---

## Profitability tab

**Why this tab helps:** Know which lines and geographies make money and where loss ratios are off target. Use year-over-year and target comparisons to decide where to push underwriting, pricing, or distribution—and to tell a clear profitability story to the board.

The Profitability tab focuses on loss ratios, year-over-year comparison, and profitability by policy type, geography, and agency.

### Controls

- **Start Date / End Date:** Define the date range for all charts and tables (e.g. 02/01/2024 – 01/31/2025).
- **Target Ratio:** Target loss ratio used as a benchmark (e.g. 48%).
- **Line of Business:** Filter by line (e.g. “All” or a specific line).
- **Policy Type:** Filter by policy type (e.g. “All” or a specific type).
- **Stat:** Additional stat filter (dropdown).

Toolbar: undo, redo, settings (gear), and optional save/restore of dashboard settings (e.g. “Save Settings”, “Restore Settings rjf”, “Overwrite Settings rjf”).

![CEO Profitability – loss ratio KPIs](assets/CEO%20Loss%20Ratios%20Big%20Numbers.png)

### Key performance indicators (KPIs)

1. **Direct Loss Ratio Year-Over-Year Comparison**
   - **2025** and **2024** loss ratio percentages.
   - **Change:** Percentage change between years (e.g. -1,306.2% indicates a large decrease from 2024 to 2025).

2. **Year-to-Date Loss Ratio**
   - **Loss Ratio:** Current YTD loss ratio.
   - **Change:** Percentage change (e.g. -46.5%).
   - **Target Ratio:** Benchmark (e.g. 48.0%).

### Charts and tables

1. **Direct Loss Ratio by Policy Type**  
   Bar chart comparing loss ratio for **2024** (dark blue) and **2025** (light blue) by policy type (e.g. Personal Auto, Mobile Homeowners, Homeowners Form 2/4, Commercial General Liability, Businessowners). A horizontal dashed line shows the **Target** (e.g. 48%). Supports comparison across years and against target.

![CEO Profitability – Direct Loss Ratio by Policy Type](assets/CEO%20Direct%20Loss%20Ratio%20by%20Policy%20Type%20.png)

2. **Loss Ratio by Area**  
   Map of the selected territory (e.g. Northeast US) with regions shaded by loss ratio. Legend: 0% (green) to 200% (red). Zoom in/out controls. Use to see geographic concentration of loss ratio.

![CEO Profitability – Loss Ratio by Area](assets/CEO%20Loss%20Ratio%20by%20Area.png)

3. **Agency Profitability**  
   Table: **Agency Name** | **Loss Paid** | **Loss Incurred**. One row per agency plus a **Total** row. Scrollable if many agencies.

![CEO Profitability – Agency Profitability table](assets/CEO%20Agency%20Profitability%20.png)

4. **Loss Ratio by County**  
   Table: **County** | **Premium**. One row per county; scrollable. “null” may appear for records with no county.

5. **Loss Ratio by Zip Code**  
   Table: **Zip Code** | **Premium**. One row per zip; scrollable. “null” may appear for records with no zip.

---

## Retention tab

**Why this tab helps:** See whether you’re keeping and growing the right business—by line, county, and agency. Retention and issued rates by geography help you spot strong or weak markets and align incentives and underwriting with where the book is actually moving.

The Retention tab focuses on **in-force policy changes** over a date range: retention rate, in-force change rate, counts by change type, and geography. It answers how many policies were retained, issued, canceled, or reinstated and how that varies by line of business and county.

### Controls

- **Start Date / End Date:** Date range for the analysis (e.g. 02/01/2024 – 01/31/2025).
- **% Retention Target:** Target retention percentage used as a benchmark (e.g. 80).
- **Line of Business:** Filter by line (e.g. “All” or a specific line).
- **Policy Type:** Filter by policy type (e.g. “All” or a specific type).

Note: *This analysis is recompiled in real time and may take a moment.*

### Section title

**Inforce Policies Changes Between [Start Date] and [End Date]** – summary and detail for the selected range.

### Key performance indicators (KPIs)

1. **Retention Rate**  
   Donut/gauge (0%–100%). Shows current retention rate (e.g. 0% in red when no retention in the range).

2. **Inforce Change Rate**  
   Donut/gauge (0%–100%). Shows in-force change rate; may show “N/A” when there is no data.

3. **Summary table by Line of Business**  
   Columns: **Line of Business** | **Attrition Rate** | **Retention Rate** | **Issued Rate** | **Inforce Change** | **Inforce**. One row per line; shows rates and counts (e.g. Auto Business, Commercial Businessowners, Commercial General Liability, Personal Homeowners, Personal Mobile Homeowners).

![CEO Retention – Count of policy changes](assets/CEO%20Retention%20Count%20of%20Inforce.png)

### Charts and maps

1. **Count of Policy Changes for All Line(s) of Business**  
   Horizontal bar chart. Categories: **Begin Inforce**, **Range Canceled**, **Range Issued**, **Range Retained**, **Range Reinstated**, **End Inforce**. Legend: End Inforce (green), Increase (brown), Decrease (red). Shows counts per change type.

2. **Retention Rate by County for All Line(s) of Business**  
   Map of the region with counties shaded by retention rate. Legend: 0% (red) to 100% (green). Zoom in/out. **Selecting a county filters the detail table below.**

3. **Issued Rate by County for All Line(s) of Business**  
   Same geography, counties shaded by issued rate. Legend: 0% (red) to 100% (green). Zoom in/out. **Selecting a county filters the detail table below.**  
   Export columns: **State** | **County** | **Issued Rate (CUSTOM)**. One row per state/county; Issued Rate may be blank. 

![CEO Retention – Issued vs retention rate by county](assets/CEO%20Retention%20-%20Issued%20vs%20Retention%20rate%20by%20county.png)

4. **Detail data table (scrollable)**  
   Instruction above table: *“Select any county in the map visuals to filter this table.”*  
   **Columns:** Stat | County | Agency Name | Policy Number | Begin Inforce | Begin Inforce Premium | Range Canceled | Range Canceled Premium | Range Issued | Range Issued Premium | Range Retained | Range Reinstated | Range Retained Premium | End Inforce | Change Premium.  
   One row per policy/stat combination; many rows may have “null” for County. Horizontal and vertical scroll. Bottom row is an aggregate/total.

![CEO Retention – Detail list by agency](assets/CEO%20Retention%20-%20Detail%20List%20by%20Agency.png)

5. **Inforce Change by County for All Line(s) of Business**  
   Horizontal bar chart: county (e.g. Gardner) vs in-force change count.

6. **Premium Change by All Line(s) of Business**  
   Horizontal bar chart: premium change by line of business.

---

## Current Events tab

**Why this tab helps:** React to the last 30 days instead of last quarter. See quote volume vs issuance, in-force premium changes, and issued/canceled/reinstated counts and premiums so you can spot momentum, fix conversion, or address cancellations before they become a trend.

The Current Events tab focuses on **recent activity over the past 30 days**: quotes vs issued policies, quote-to-issue ratio, change in in-force premium, and counts and premiums for issued, canceled, and reinstated policies.

### Controls

- **Line of Business:** Filter by line (e.g. “All” or a specific line).
- **Policy Type:** Filter by policy type (e.g. “All” or a specific type).
- **State:** Filter by state (e.g. “All” or a specific state).

The dashboard may show notifications when exporting (e.g. “Working on your CSV file” / “Your CSV is ready”).

### Charts

1. **30-Day Policies Quoted vs Issued**  
   Horizontal bar chart by line of business. Compares **Month Quotes** (dark green) and **Month Issued** (brown/orange). Lines can include Personal Homeowners, Auto Business, Agricultural Farm, Commercial Businessowners, Commercial General Liability, Commercial Property, Personal Dwelling, Personal Mobile Homeowners. Use to see quote volume vs issuance by line.

2. **Quote to Issue Ratio**  
   Half-circle gauge (0%–100%) showing the overall quote-to-issue ratio. An **Agency Name** filter below the gauge (e.g. “All”, “Agency Services (0002-000-0000)”, “Test Agency”) can narrow the ratio to a single agency.

3. **30-Day Change in Inforce Premium**  
   Vertical bar chart by line of business. Shows dollar change in in-force premium over the last 30 days: green bars for increases (e.g. Personal Homeowners +$6.85K), red bars for decreases (e.g. Auto Business -$62.72K). Other lines may show $0.00 when there is no change.

4. **30-Day Policies Issued, Canceled, and Reinstated**  
   Vertical bar chart with four bars: **Month Issued**, **Month Canceled**, **Month Reinstated**, and **Change**. Legend: Change (green), Increase (brown). Shows count of policies issued, canceled, and reinstated in the period and the net change.

5. **30-Day Premiums Issued, Canceled, and Reinstated**  
   Vertical bar chart with the same structure: **Month Issued**, **Month Canceled**, **Month Reinstated**, and **Change** (in dollars). Legend: Change (green), Increase (brown). Shows premium volume issued, canceled, and reinstated and the net premium change.

![CEO Current Events – 30-day tables](assets/CEO%20Current%20Events%20-%2030%20days%20tables.png)

---

## Agency Profile tab

**Why this tab helps:** Evaluate agencies on what matters: premium change, retention, cancellations, and new losses. Use this view to have data-backed conversations with partners, align incentives, and spot top performers or agencies that need support before results show up in year-end reports.

The Agency Profile tab gives an **agency-focused view** of recent activity: change in in-force premium by line, 30-day policies and premiums issued/canceled/reinstated, policies issued in the past 30 days, policies pending cancellation, canceled/reinstated in the past 30 days, and 30-day new losses incurred. Filters let you narrow by agency, line, policy type, and state.

### Controls

- **Target Ratio:** Benchmark value (e.g. 48).
- **Agency Name:** Filter by agency (e.g. “All” or a specific agency).
- **Line of Business:** Filter by line (e.g. “All” or a specific line).
- **Policy Type:** Filter by policy type (e.g. “All” or a specific type).
- **State:** Filter by state (e.g. “All” or a specific state).

The dashboard may show a notification when a CSV export is ready.

![CEO Agency Profile – Top 4 views](assets/CEO%20Agency%20Profile%20-%20Top%204%20views.png)

### Charts and tables

1. **Change in-force premium by line (top row)**  
   - **Personal Dwelling** and **Personal Mobile Homeowners:** Horizontal bar or progress-style charts (e.g. 0–15 scale). May show no data.  
   - **Auto Business:** Bar chart titled **Change Inforce Premium (Custom)**. One bar (e.g. green for -$62.72K) on a scale from about -$60K to $20K. Shows net change in in-force premium for the selected period.

2. **30-Day Policies Issued, Canceled, and Reinstated**  
   Vertical bar chart: **Month Issued**, **Month Canceled**, **Month Reinstated**, **Change**. Legend: Change (green), Increase (brown). Same structure as on the Current Events tab; values reflect the selected agency/filters.

3. **30-Day Premiums Issued, Canceled, and Reinstated**  
   Vertical bar chart: **Month Issued**, **Month Canceled**, **Month Reinstated**, **Change** (in dollars). Legend: Change (green), Increase (brown). Same structure as Current Events; values reflect the selected agency/filters.

4. **Policies Canceled / Reinstated Past 30-Days**  
   Visual (e.g. chart or list) of policies canceled or reinstated in the last 30 days. May display “No data. There was no data found for the visual.” when empty.

5. **Policies Pending Cancellation**  
   Visual or table of policies with pending cancellation. May display “No data” when there are none.

6. **Policies Issued Past 30-Days**  
   Table columns: **Policy Type** | **Policy Number** | **Policy Link** | **Insured Name**. One row per recently issued policy; Policy Link opens the policy. Scrollable.

7. **30-Day New Losses Incurred**  
   Table columns: **Policy Type** | **Claim Number** | **Claim Link** | **Policy Number** | **Policy Link** | **Policy Status** | **Month Loss Incurred** (or similar). One row per new loss in the period; Claim Link and Policy Link open the claim and policy. Scrollable.

![CEO Agency Experience – Middle section](assets/CEO%20Agency%20Experience%20-%20Middle%20few.png)

![CEO Agency Experience – Third block](assets/CEO%20Agency%20Experience%20-%203rd%20block%20down.png)

![CEO Agency Experience – Bottom graphs](assets/CEO%20Agency%20Experience%20-%20Bottom%20Graphs.png)

---

