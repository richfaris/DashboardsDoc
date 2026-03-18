# Table of Contents {#table-of-contents .TOC-Heading}

# BriteCore RealTime Dashboards

BriteCore RealTime Dashboards are role-based analytic views under **Reports → Dashboards**. Each dashboard provides filters, tables, and visuals for a specific audience. Data is refreshed based on the selected date ranges and filters.

**How to open:** In BriteCore, go to **Reports** → **Dashboards**. Use the dashboard selector at the top to choose **Claims Manager**, **CEO**, **Agency Principal**, **CFO**, or **Underwriting Manager**.

**Dashboards URL:** `https://yoursitename.britecore.com/britecore/reports/analytic_dashboards`

------------------------------------------------------------------------

## Why these dashboards

Each dashboard is built for a specific role and answers the questions that make that person more effective:

- **Claims Manager** --- Run a tighter claims operation: see where losses concentrate, balance workloads, and hold vendors and contractors accountable---all in one place.
- **CEO** --- Answer the board on profitability, retention, and agency performance without waiting for reports. Spot what's working and where to act in the last 30 days.
- **Agency Principal** --- Run your agency like a business: commissions, production, and what's due from policyholders in one view so you can grow the book and protect cash flow.
- **CFO** --- Own the numbers: policy transactions, cash, and payments in one place for forecasting, reconciliation, and month-end close.
- **Underwriting Manager** --- Balance growth and risk: see where premium and claims concentrate, who drives loss, and how to sharpen guidelines and pricing.

------------------------------------------------------------------------

## Chart options (all dashboards)

Every **chart** (including tables and maps) on every dashboard supports the same set of actions. Use the chart's menu or toolbar (often at the top-right of the tile) to access them:

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Option                       Description
  ---------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  **Filter**                   Filter the data shown in that chart (e.g. by field, value, or date). Filtering is applied to the current visual; some dashboards also let filters from one chart affect others.

  **Sort**                     Sort the data in the chart (e.g. by column, ascending/descending). On tables, sort is often available from the column header.

  **Export to CSV or Excel**   Export the data behind the chart to a file. Choose **CSV** or **Excel** (.xlsx) from the chart menu. The export includes the data currently displayed (or available) for that visual. Notifications such as "Working on your CSV file" / "Your CSV is ready" may appear.

  **Expand to full screen**    Expand the chart to full screen for a larger view. Use the same control again (or Escape) to return to the dashboard layout.
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

These behaviors are consistent across all BriteCore RealTime Dashboards: (filter, sort, export, and visual-level options from the chart menu). Individual dashboard and tab docs below describe what each chart shows; filtering, sorting, export, and full-screen are available on each unless the UI indicates otherwise.

------------------------------------------------------------------------

## Dashboard index

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Dashboard                  Purpose                                                                    Why it helps                                                                                                 Tabs                                                                                                      Full documentation
  -------------------------- -------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------ --------------------------------------------------------------------------------------------------------- ------------------------------------------------------------------------
  **Claims Manager**         Claims performance and losses (summary, detail, contractor tracking)       See where losses concentrate, balance workloads, and hold vendors accountable.                               Summary, Detail, Contractor Tracking                                                                      [claims-manager-dashboard.md](claims-manager-dashboard.md)

  **CEO**                    Executive view: profitability, retention, current events, agency profile   Answer the board and act on what's working---profitability, retention, and agency performance in one view.   Profitability, Retention, Current Events, Agency Profile                                                  [ceo-dashboard.md](ceo-dashboard.md)

  **Agency Principal**       Agency-focused: commissions, production, payments due, summary metrics     Run the agency like a business: commissions, production, and receivables in one place.                       Summary, Commissions, Production, Payments Due                                                            [agency-principal-dashboard.md](agency-principal-dashboard.md)

  **CFO**                    Policy transactions, cash, payments, and policy changes                    Own the numbers for forecasting, reconciliation, and month-end close.                                        Policy Transactions, Policy Transaction Details, Cash Summary, Cash Details, Payments, Policies Changes   [cfo-dashboard.md](cfo-dashboard.md)

  **Underwriting Manager**   Policy/premium info, claim information, claims changes                     Balance growth and risk with clear views of book composition and loss drivers.                               Policy and Premium Information, Claim Information, Claims Changes                                         [underwriting-manager-dashboard.md](underwriting-manager-dashboard.md)
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------

# Claims Manager Dashboard

**Location:** Reports → Dashboards → **Claims Manager** (selector: Claims Manager, CEO, Agency Principal, CFO, Underwriting Manager)

**URL (product demo):** `https://yoursitename.britecore.com/britecore/reports/analytic_dashboards`

The Claims Manager dashboard gives a high-level view of claims performance and losses. It has three tabs: **Summary**, **Detail**, and **Contractor Tracking**. On every chart, **filtering**, **sorting**, **export to CSV or Excel**, and **expand to full screen** are available---see [Chart options (all dashboards)](dashboards.md#chart-options-all-dashboards) in the main doc.

**Why it matters for you:** Run a tighter claims operation without digging through spreadsheets. See where losses concentrate so you can focus resources and report up with confidence, balance adjuster workloads, and hold agencies and vendors accountable---all from one place.

------------------------------------------------------------------------

## Summary tab

**Why this tab helps:** See where losses are coming from by category, line, and agency so you can spot trends, allocate resources, and tell a clear story to leadership. The maps and top-10 views make it easy to see geographic and agency hotspots at a glance.

The Summary tab focuses on losses by category, agency performance, and claim counts.

### Controls

- **Date filter:** Incurred Date (configurable)
- **Start date / End date:** Define the date range for all charts and the table.
- **Agency Name:** Filter by agency (e.g. "All" or a specific agency).
- **Adjuster Name:** Filter by adjuster (e.g. "All" or a specific adjuster).

Additional toolbar actions: refresh, undo, redo, and a settings (gear) icon for dashboard options.

### Main table: Losses Incurred by Category for Specified Incurred Dates

A detailed table of losses with drill-down by:

- **Category** (e.g. Gross Loss)
- **Sub Category** (e.g. Loss, Salvage, Subrogation)
- **Line of Business** (e.g. Auto Business, Commercial Businessowners, Commercial General Liability, Personal Homeowners)
- **Policy Type** (e.g. Personal Auto)

**Columns:**

  --------------------------------------------------------------
  Column              Description
  ------------------- ------------------------------------------
  Category            Top-level loss category

  Sub Category        Loss, Salvage, or Subrogation

  Line of Business    Product line

  Policy Type         Type of policy

  Change in Reserve   Change in reserve for the period

  Paid Amount         Amount paid

  Incurred Amount     Total incurred

  Claims              Number of claims
  --------------------------------------------------------------

Subtotals appear by line of business; a **Total Net** row summarizes Change in Reserve, Paid Amount, Incurred Amount, and Claims. The table supports layout and filter options in the header.

![Claims Manager Summary -- Losses incurred table](media/rId20.png){width="5.833333333333333in" height="2.6248009623797026in"}

### Charts (below the table)

1.  **Top 10 Agencies by Gross Losses Paid**\
    Vertical bar chart of agencies by paid gross losses. Supports drill down.

2.  **Map of Gross Losses Incurred**\
    Map chart for geographic view of losses. Requires at least one geospatial field (Country, State, County, City, or Postcode) or latitude and longitude to display points.

3.  **Top 10 Claims Counts**\
    Horizontal bar chart of insureds by number of claims. Supports drill down.

4.  **Top 10 Total Gross Losses Paid**\
    Horizontal bar chart of insureds by total gross losses paid. Supports drill down.

![Claims Manager Summary -- Middle section (charts and map)](media/rId24.png){width="5.833333333333333in" height="4.074199475065617in"}

![Claims Manager Summary -- Loss triangle](media/rId27.png){width="5.833333333333333in" height="0.7346259842519685in"}

------------------------------------------------------------------------

## Detail tab

**Why this tab helps:** Drill into any claim for reserves, payments, and reinsurance in one view. Perfect for large-loss reviews, reserve adequacy checks, and answering "what happened on this claim?" without opening multiple screens. Export to CSV for deeper analysis or audits.

The Detail tab shows **claim-level data** in a single table: one row per claim, with identifiers, dates, assignment, policy/location, reinsurance, and financial breakdowns. The same dashboard controls (date filter, start/end date, agency, adjuster) apply. Data can be exported (e.g. CSV) for analysis.

![Claims Manager -- Detail tab](media/rId32.png){width="5.833333333333333in" height="2.9146806649168853in"}

### Table: Claim details (columns)

**Identification & link**

  -----------------------------------------------------------------------------------------------
  Column                           Description
  -------------------------------- --------------------------------------------------------------
  Claim Number                     Unique claim identifier (e.g. C-2025-94).

  Claim Link                       URL to open the claim in BriteCore (claim information page).
  -----------------------------------------------------------------------------------------------

**Dates**

  ------------------------------------------------------------------------
  Column                         Description
  ------------------------------ -----------------------------------------
  Loss Date                      Date of loss.

  Reported Date                  Date the claim was reported.

  Last Reserve Change            Date of the most recent reserve change.
  ------------------------------------------------------------------------

**Status & cause**

  ----------------------------------------------------------------------------------------------------------------------------------
  Column                           Description
  -------------------------------- -------------------------------------------------------------------------------------------------
  Claim Status                     Workflow status (e.g. Open Standard, Pending Submitted, Reopened Salvage, Pending Unsubmitted).

  Cause of Loss                    Cause(s) of loss (e.g. Hail, Wind, Fire, Bodily Injury Liability).
  ----------------------------------------------------------------------------------------------------------------------------------

**Assignment & policy**

  --------------------------------------------------------------------------------------------------------------------------
  Column                             Description
  ---------------------------------- ---------------------------------------------------------------------------------------
  Agency Name                        Writing agency.

  Adjuster Name                      Assigned adjuster.

  Underwriter Name                   Underwriter.

  Insured Name                       Named insured.

  Policy Number                      Policy identifier.

  State                              Policy/claim state.

  Line of Business                   Product line (e.g. Personal Homeowners, Auto Business, Commercial General Liability).

  Policy Type                        Policy form/type (e.g. Homeowners Form 2, Personal Auto).

  Cat Number                         Catastrophe number, if applicable.

  Zip Code                           Location zip code.
  --------------------------------------------------------------------------------------------------------------------------

**Reinsurance**

  ----------------------------------------------------------------
  Column                         Description
  ------------------------------ ---------------------------------
  Reinsurance Contract Number    Reinsurance contract reference.

  Reinsurer Name                 Reinsurer (e.g. Guy Carpenter).
  ----------------------------------------------------------------

**Financial totals**

  ---------------------------------------------------------------------------
  Column                         Description
  ------------------------------ --------------------------------------------
  Total Paid                     Total amount paid.

  Reinsurance Recovery           Amount recovered from reinsurance.

  Net Paid                       Total paid minus reinsurance recovery.

  Total Incurred                 Total incurred (reserves + payments).

  Reinsurance Incurred           Incurred ceded to reinsurance.

  Net Incurred                   Total incurred minus reinsurance incurred.
  ---------------------------------------------------------------------------

**Loss**

  ----------------------------------------------------------------
  Column                         Description
  ------------------------------ ---------------------------------
  Loss Reserved                  Loss reserve.

  Loss Paid                      Loss paid to date.

  Loss Incurred                  Loss incurred (reserve + paid).
  ----------------------------------------------------------------

**Adjusting expense**

  -------------------------------------------------------------
  Column                         Description
  ------------------------------ ------------------------------
  Adjusting Reserved             Adjusting expense reserve.

  Adjusting Paid                 Adjusting expense paid.

  Adjusting Incurred             Adjusting expense incurred.
  -------------------------------------------------------------

**Legal**

  -------------------------------------------------------------
  Column                         Description
  ------------------------------ ------------------------------
  Legal Reserved                 Legal reserve.

  Legal Paid                     Legal paid.

  Legal Incurred                 Legal incurred.
  -------------------------------------------------------------

**Subrogation**

  --------------------------------------------------------------------------------------------
  Column                                  Description
  --------------------------------------- ----------------------------------------------------
  Subrogation Reserved                    Subrogation reserve.

  Subrogation Received                    Subrogation recovered.

  Subrogation Incurred                    Subrogation incurred (often negative as recovery).
  --------------------------------------------------------------------------------------------

**Salvage**

  -------------------------------------------------------------------------------
  Column                         Description
  ------------------------------ ------------------------------------------------
  Salvage Reserved               Salvage reserve.

  Salvage Received               Salvage recovered.

  Salvage Incurred               Salvage incurred (often negative as recovery).
  -------------------------------------------------------------------------------

**Reinsurance**

  -------------------------------------------------------------
  Column                         Description
  ------------------------------ ------------------------------
  Reinsurance Reserved           Reinsurance reserve.

  -------------------------------------------------------------

------------------------------------------------------------------------

## Contractor Tracking tab

**Why this tab helps:** See which claims use contractors, attorneys, or public adjusters---and how that ties to paid and incurred amounts. Use it to manage vendor assignments, spot patterns in outside rep usage, and keep contractor and legal spend aligned with outcomes. Some carriers mark contractors that they need to either avoid for future contracts or study their work more closely.

The Contractor Tracking tab shows **claim-level rows** keyed by **contractor and other reps**: one row per claim with contractor (when assigned), adjuster, attorney, and public adjuster, plus policy type, last reserve change, and the same financial breakdown as the Detail tab. Use it to see which claims have contractors (or attorneys/public adjusters) and their financials. The same dashboard controls (date filter, start/end date, agency, adjuster) apply. Data can be exported (e.g. CSV).

![Claims Manager -- Contractor Tracking](media/rId37.png){width="5.833333333333333in" height="4.276718066491688in"}

### Table: Contractor tracking (columns)

**Contractor & link**

  -----------------------------------------------------------------------------------------------------------------------------------
  Column                             Description
  ---------------------------------- ------------------------------------------------------------------------------------------------
  Contractor Name                    Name of the contractor assigned to the claim (blank if none).

  Contractor Link                    URL to the contractor's contact record in BriteCore; when no contractor, the link has no `id`.
  -----------------------------------------------------------------------------------------------------------------------------------

**Claim & assignment**

  ----------------------------------------------------------------------
  Column                         Description
  ------------------------------ ---------------------------------------
  Claim Number                   Unique claim identifier.

  Adjuster Name                  Assigned adjuster.

  Attorney Name                  Attorney on the claim, if any.

  Public Adjuster Name           Public adjuster on the claim, if any.
  ----------------------------------------------------------------------

**Policy & date**

  ------------------------------------------------------------------------------------------------
  Column                               Description
  ------------------------------------ -----------------------------------------------------------
  Policy Type                          Policy form/type (e.g. Homeowners Form 2, Personal Auto).

  Last Reserve Change                  Date of the most recent reserve change.
  ------------------------------------------------------------------------------------------------

**Financial (same structure as Detail tab)**

  -----------------------------------------------------------------------------------------------------------------
  Column                                                               Description
  -------------------------------------------------------------------- --------------------------------------------
  Total Paid                                                           Total amount paid.

  Reinsurance Recovery                                                 Amount recovered from reinsurance.

  Net Paid                                                             Total paid minus reinsurance recovery.

  Total Incurred                                                       Total incurred.

  Reinsurance Incurred                                                 Incurred ceded to reinsurance.

  Net Incurred                                                         Total incurred minus reinsurance incurred.

  Loss Reserved / Loss Paid / Loss Incurred                            Loss reserve and payments.

  Adjusting Reserved / Adjusting Paid / Adjusting Incurred             Adjusting expense.

  Legal Reserved / Legal Paid / Legal Incurred                         Legal.

  Subrogation Reserved / Subrogation Received / Subrogation Incurred   Subrogation.

  Salvage Reserved / Salvage Received / Salvage Incurred               Salvage.

  Reinsurance Reserved                                                 Reinsurance reserve.
  -----------------------------------------------------------------------------------------------------------------

# CEO Dashboard

**Location:** Reports → Dashboards → **CEO** (selector: Claims Manager, CEO, Agency Principal, CFO, Underwriting Manager)

**Dashboards URL:** `https://yoursitename.britecore.com/britecore/reports/analytic_dashboards`

The CEO dashboard gives an executive view of profitability, retention, current events, and agency profile. It has four tabs: **Profitability**, **Retention**, **Current Events**, and **Agency Profile**. On every chart, **filtering**, **sorting**, **export to CSV or Excel**, and **expand to full screen** are available---see [Chart options (all dashboards)](dashboards.md#chart-options-all-dashboards) in the main doc.

**Why it matters for you:** Answer the board's questions on profitability, retention, and agency performance without waiting for reports. See what's working and where to act---from loss ratio by line and geography to the last 30 days of quotes, issues, and cancellations---so strategy is grounded in current data.

![CEO Dashboard overview](media/rId43.png){width="5.833333333333333in" height="2.9317093175853017in"}

------------------------------------------------------------------------

## Profitability tab

**Why this tab helps:** Know which lines and geographies make money and where loss ratios are off target. Use year-over-year and target comparisons to decide where to push underwriting, pricing, or distribution---and to tell a clear profitability story to the board.

The Profitability tab focuses on loss ratios, year-over-year comparison, and profitability by policy type, geography, and agency.

### Controls

- **Start Date / End Date:** Define the date range for all charts and tables (e.g. 02/01/2024 -- 01/31/2025).
- **Target Ratio:** Target loss ratio used as a benchmark (e.g. 48%).
- **Line of Business:** Filter by line (e.g. "All" or a specific line).
- **Policy Type:** Filter by policy type (e.g. "All" or a specific type).
- **Stat:** Additional stat filter (dropdown).

Toolbar: undo, redo, settings (gear), and optional save/restore of dashboard settings (e.g. "Save Settings", "Restore Settings rjf", "Overwrite Settings rjf").

![CEO Profitability -- loss ratio KPIs](media/rId46.png){width="5.833333333333333in" height="0.6920898950131233in"}

### Key performance indicators (KPIs)

1.  **Direct Loss Ratio Year-Over-Year Comparison**
    - **2025** and **2024** loss ratio percentages.
    - **Change:** Percentage change between years (e.g. -1,306.2% indicates a large decrease from 2024 to 2025).
2.  **Year-to-Date Loss Ratio**
    - **Loss Ratio:** Current YTD loss ratio.
    - **Change:** Percentage change (e.g. -46.5%).
    - **Target Ratio:** Benchmark (e.g. 48.0%).

### Charts and tables

1.  **Direct Loss Ratio by Policy Type**\
    Bar chart comparing loss ratio for **2024** (dark blue) and **2025** (light blue) by policy type (e.g. Personal Auto, Mobile Homeowners, Homeowners Form 2/4, Commercial General Liability, Businessowners). A horizontal dashed line shows the **Target** (e.g. 48%). Supports comparison across years and against target.

![CEO Profitability -- Direct Loss Ratio by Policy Type](media/rId51.png){width="5.833333333333333in" height="3.825653980752406in"}

2.  **Loss Ratio by Area**\
    Map of the selected territory (e.g. Northeast US) with regions shaded by loss ratio. Legend: 0% (green) to 200% (red). Zoom in/out controls. Use to see geographic concentration of loss ratio.

![CEO Profitability -- Loss Ratio by Area](media/rId54.png){width="5.833333333333333in" height="3.825653980752406in"}

3.  **Agency Profitability**\
    Table: **Agency Name** \| **Loss Paid** \| **Loss Incurred**. One row per agency plus a **Total** row. Scrollable if many agencies.

![CEO Profitability -- Agency Profitability table](media/rId57.png){width="5.833333333333333in" height="0.7465387139107612in"}

4.  **Loss Ratio by County**\
    Table: **County** \| **Premium**. One row per county; scrollable. "null" may appear for records with no county.

5.  **Loss Ratio by Zip Code**\
    Table: **Zip Code** \| **Premium**. One row per zip; scrollable. "null" may appear for records with no zip.

------------------------------------------------------------------------

## Retention tab

**Why this tab helps:** See whether you're keeping and growing the right business---by line, county, and agency. Retention and issued rates by geography help you spot strong or weak markets and align incentives and underwriting with where the book is actually moving.

The Retention tab focuses on **in-force policy changes** over a date range: retention rate, in-force change rate, counts by change type, and geography. It answers how many policies were retained, issued, canceled, or reinstated and how that varies by line of business and county.

### Controls

- **Start Date / End Date:** Date range for the analysis (e.g. 02/01/2024 -- 01/31/2025).
- **% Retention Target:** Target retention percentage used as a benchmark (e.g. 80).
- **Line of Business:** Filter by line (e.g. "All" or a specific line).
- **Policy Type:** Filter by policy type (e.g. "All" or a specific type).

Note: *This analysis is recompiled in real time and may take a moment.*

### Section title

**Inforce Policies Changes Between \[Start Date\] and \[End Date\]** -- summary and detail for the selected range.

### Key performance indicators (KPIs)

1.  **Retention Rate**\
    Donut/gauge (0%--100%). Shows current retention rate (e.g. 0% in red when no retention in the range).

2.  **Inforce Change Rate**\
    Donut/gauge (0%--100%). Shows in-force change rate; may show "N/A" when there is no data.

3.  **Summary table by Line of Business**\
    Columns: **Line of Business** \| **Attrition Rate** \| **Retention Rate** \| **Issued Rate** \| **Inforce Change** \| **Inforce**. One row per line; shows rates and counts (e.g. Auto Business, Commercial Businessowners, Commercial General Liability, Personal Homeowners, Personal Mobile Homeowners).

![CEO Retention -- Count of policy changes](media/rId64.png){width="5.833333333333333in" height="1.24290791776028in"}

### Charts and maps

1.  **Count of Policy Changes for All Line(s) of Business**\
    Horizontal bar chart. Categories: **Begin Inforce**, **Range Canceled**, **Range Issued**, **Range Retained**, **Range Reinstated**, **End Inforce**. Legend: End Inforce (green), Increase (brown), Decrease (red). Shows counts per change type.

2.  **Retention Rate by County for All Line(s) of Business**\
    Map of the region with counties shaded by retention rate. Legend: 0% (red) to 100% (green). Zoom in/out. **Selecting a county filters the detail table below.**

3.  **Issued Rate by County for All Line(s) of Business**\
    Same geography, counties shaded by issued rate. Legend: 0% (red) to 100% (green). Zoom in/out. **Selecting a county filters the detail table below.**\
    Export columns: **State** \| **County** \| **Issued Rate (CUSTOM)**. One row per state/county; Issued Rate may be blank.

![CEO Retention -- Issued vs retention rate by county](media/rId68.png){width="5.833333333333333in" height="1.4692530621172353in"}

4.  **Detail data table (scrollable)**\
    Instruction above table: *"Select any county in the map visuals to filter this table."*\
    **Columns:** Stat \| County \| Agency Name \| Policy Number \| Begin Inforce \| Begin Inforce Premium \| Range Canceled \| Range Canceled Premium \| Range Issued \| Range Issued Premium \| Range Retained \| Range Reinstated \| Range Retained Premium \| End Inforce \| Change Premium.\
    One row per policy/stat combination; many rows may have "null" for County. Horizontal and vertical scroll. Bottom row is an aggregate/total.

![CEO Retention -- Detail list by agency](media/rId71.png){width="5.833333333333333in" height="0.742567804024497in"}

5.  **Inforce Change by County for All Line(s) of Business**\
    Horizontal bar chart: county (e.g. Gardner) vs in-force change count.

6.  **Premium Change by All Line(s) of Business**\
    Horizontal bar chart: premium change by line of business.

------------------------------------------------------------------------

## Current Events tab

**Why this tab helps:** React to the last 30 days instead of last quarter. See quote volume vs issuance, in-force premium changes, and issued/canceled/reinstated counts and premiums so you can spot momentum, fix conversion, or address cancellations before they become a trend.

The Current Events tab focuses on **recent activity over the past 30 days**: quotes vs issued policies, quote-to-issue ratio, change in in-force premium, and counts and premiums for issued, canceled, and reinstated policies.

### Controls

- **Line of Business:** Filter by line (e.g. "All" or a specific line).
- **Policy Type:** Filter by policy type (e.g. "All" or a specific type).
- **State:** Filter by state (e.g. "All" or a specific state).

The dashboard may show notifications when exporting (e.g. "Working on your CSV file" / "Your CSV is ready").

### Charts

1.  **30-Day Policies Quoted vs Issued**\
    Horizontal bar chart by line of business. Compares **Month Quotes** (dark green) and **Month Issued** (brown/orange). Lines can include Personal Homeowners, Auto Business, Agricultural Farm, Commercial Businessowners, Commercial General Liability, Commercial Property, Personal Dwelling, Personal Mobile Homeowners. Use to see quote volume vs issuance by line.

2.  **Quote to Issue Ratio**\
    Half-circle gauge (0%--100%) showing the overall quote-to-issue ratio. An **Agency Name** filter below the gauge (e.g. "All", "Agency Services (0002-000-0000)", "Test Agency") can narrow the ratio to a single agency.

3.  **30-Day Change in Inforce Premium**\
    Vertical bar chart by line of business. Shows dollar change in in-force premium over the last 30 days: green bars for increases (e.g. Personal Homeowners +\$6.85K), red bars for decreases (e.g. Auto Business -\$62.72K). Other lines may show \$0.00 when there is no change.

4.  **30-Day Policies Issued, Canceled, and Reinstated**\
    Vertical bar chart with four bars: **Month Issued**, **Month Canceled**, **Month Reinstated**, and **Change**. Legend: Change (green), Increase (brown). Shows count of policies issued, canceled, and reinstated in the period and the net change.

5.  **30-Day Premiums Issued, Canceled, and Reinstated**\
    Vertical bar chart with the same structure: **Month Issued**, **Month Canceled**, **Month Reinstated**, and **Change** (in dollars). Legend: Change (green), Increase (brown). Shows premium volume issued, canceled, and reinstated and the net premium change.

![CEO Current Events -- 30-day tables](media/rId77.png){width="5.833333333333333in" height="0.742567804024497in"}

------------------------------------------------------------------------

## Agency Profile tab

**Why this tab helps:** Evaluate agencies on what matters: premium change, retention, cancellations, and new losses. Use this view to have data-backed conversations with partners, align incentives, and spot top performers or agencies that need support before results show up in year-end reports.

The Agency Profile tab gives an **agency-focused view** of recent activity: change in in-force premium by line, 30-day policies and premiums issued/canceled/reinstated, policies issued in the past 30 days, policies pending cancellation, canceled/reinstated in the past 30 days, and 30-day new losses incurred. Filters let you narrow by agency, line, policy type, and state.

### Controls

- **Target Ratio:** Benchmark value (e.g. 48).
- **Agency Name:** Filter by agency (e.g. "All" or a specific agency).
- **Line of Business:** Filter by line (e.g. "All" or a specific line).
- **Policy Type:** Filter by policy type (e.g. "All" or a specific type).
- **State:** Filter by state (e.g. "All" or a specific state).

The dashboard may show a notification when a CSV export is ready.

![CEO Agency Profile -- Top 4 views](media/rId82.png){width="5.833333333333333in" height="2.9027679352580926in"}

### Charts and tables

1.  **Change in-force premium by line (top row)**

    - **Personal Dwelling** and **Personal Mobile Homeowners:** Horizontal bar or progress-style charts (e.g. 0--15 scale). May show no data.
    - **Auto Business:** Bar chart titled **Change Inforce Premium (Custom)**. One bar (e.g. green for -\$62.72K) on a scale from about -\$60K to \$20K. Shows net change in in-force premium for the selected period.

2.  **30-Day Policies Issued, Canceled, and Reinstated**\
    Vertical bar chart: **Month Issued**, **Month Canceled**, **Month Reinstated**, **Change**. Legend: Change (green), Increase (brown). Same structure as on the Current Events tab; values reflect the selected agency/filters.

3.  **30-Day Premiums Issued, Canceled, and Reinstated**\
    Vertical bar chart: **Month Issued**, **Month Canceled**, **Month Reinstated**, **Change** (in dollars). Legend: Change (green), Increase (brown). Same structure as Current Events; values reflect the selected agency/filters.

4.  **Policies Canceled / Reinstated Past 30-Days**\
    Visual (e.g. chart or list) of policies canceled or reinstated in the last 30 days. May display "No data. There was no data found for the visual." when empty.

5.  **Policies Pending Cancellation**\
    Visual or table of policies with pending cancellation. May display "No data" when there are none.

6.  **Policies Issued Past 30-Days**\
    Table columns: **Policy Type** \| **Policy Number** \| **Policy Link** \| **Insured Name**. One row per recently issued policy; Policy Link opens the policy. Scrollable.

7.  **30-Day New Losses Incurred**\
    Table columns: **Policy Type** \| **Claim Number** \| **Claim Link** \| **Policy Number** \| **Policy Link** \| **Policy Status** \| **Month Loss Incurred** (or similar). One row per new loss in the period; Claim Link and Policy Link open the claim and policy. Scrollable.

![CEO Agency Experience -- Middle section](media/rId86.png){width="5.833333333333333in" height="3.1251410761154856in"}

![CEO Agency Experience -- Third block](media/rId89.png){width="5.833333333333333in" height="2.6525973315835523in"}

![CEO Agency Experience -- Bottom graphs](media/rId92.png){width="5.833333333333333in" height="2.259472878390201in"}

------------------------------------------------------------------------

# Agency Principal Dashboard

**Location:** Reports → Dashboards → **Agency Principal** (selector: Claims Manager, CEO, Agency Principal, CFO, Underwriting Manager)

**Dashboards URL:** `https://yoursitename.britecore.com/britecore/reports/analytic_dashboards`

The Agency Principal dashboard gives an **agency-focused view** of commissions, production, payments due, and summary metrics. It has four tabs: **Summary**, **Commissions**, **Production**, and **Payments Due**. On every chart, **filtering**, **sorting**, **export to CSV or Excel**, and **expand to full screen** are available---see [Chart options (all dashboards)](dashboards.md#chart-options-all-dashboards) in the main doc.

**Why it matters for you:** Run your agency like a business. See commissions, production, and what's due from policyholders in one place---so you can grow the book, reward the right producers, and keep cash flow healthy without jumping between reports.

------------------------------------------------------------------------

## Summary tab

**Why this tab helps:** Track commission and loss trends over time with YTD and multi-year comparisons. Use it to plan ahead, compare this year to last, and have a single "state of the agency" view for yourself or your carrier.

The Summary tab shows commission paid YTD, commission paid over time, and 3-year month-to-month (M2M) and year-to-year (Y2Y) comparisons for policy and loss data. Use the controls to filter by agency, month, line of business, policy type, state, and lookback years.

![Agency Principal -- Summary tab (top)](media/rId98.png){width="5.833333333333333in" height="4.050491032370954in"}

### Controls

- **Month:** Selected month (e.g. 2/2026).
- **Agency Name:** Filter by agency (e.g. "All" or a specific agency).
- **Line of Business:** Filter by line (e.g. "All" or a specific line).
- **Policy Type:** Filter by policy type (e.g. "All" or a specific type).
- **State:** Filter by state (e.g. "All" or a specific state).
- **Years Look Back:** Number of years to include in comparisons (e.g. 3).

Toolbar: undo, redo, settings (gear), Save Settings, Reset.

### Section: Summary for \[Agency/All\]

Instruction: *"Please use the sheet controls to filter data by Agency, Month etc."*

### Charts and tables

1.  **Commission Paid YTD (Year-to-Date)**\
    Large summary box. Shows year-to-date commission paid; may display "No data." when there is none for the selected filters.

2.  **Commission Paid over Time**\
    Small summary table with time-period columns (e.g. "Apr 2025", "Nov 2024"). Rows: **Current Year**, **Previous Year**, **Change**. Values are dollar amounts (e.g. (\$7.58), \$210.30). Previous Year and Change may be empty.

3.  **3-Year M2M Comparison (Month-to-Month -- Detailed Policy Data)**\
    Table: one row per month (e.g. Feb 2025, Feb 2024).\
    **Columns:** Month \| Inforce Count \| New Count \| Reinstated Count \| Canceled Count \| New Written \| Renewal Written \| Endorsed Written \| Canceled Written \| Reinstated Written \| Written Premium \| Earned \| % Change.\
    Shows policy counts and written/earned premium by month. Table options (e.g. sort, filter) may appear next to the title.

4.  **3-Year M2M Comparison (Month-to-Month -- Loss Data)**\
    Table: one row per month.\
    **Columns:** Month \| Loss Paid \| Loss Incurred \| Active Claims \| Reported Claims \| Loss Ratio.\
    Shows loss and claim activity by month.

5.  **3-Year Y2Y Comparison (Year-to-Year -- Detailed Policy Data)**\
    Table: one row per year (e.g. 2025, 2024).\
    **Columns:** Year \| Inforce Count \| New Count \| Reinstated Count \| Canceled Count \| New Written \| Renewal Written \| Endorsed Written \| Canceled Written \| Reinstated Written \| Written Premium \| Earned \| % Change.\
    Same policy metrics as M2M but at year level.

6.  **3-Year Y2Y Comparison (Year-to-Year -- Loss Data)**\
    Table: one row per year.\
    **Columns:** Year \| Loss Paid \| Loss Incurred \| Active Claims \| Reported Claims \| Loss Ratio.\
    Same loss metrics as M2M but at year level.

![Agency Principal -- Summary tab (bottom)](media/rId103.png){width="5.833333333333333in" height="4.085679133858267in"}

------------------------------------------------------------------------

## Commissions tab

**Why this tab helps:** See who earns what and on which policies---so compensation is fair, producer conversations are grounded in data, and you can spot top performers or correct course when commission doesn't match production. The detail table supports exports for payroll or carrier reporting.

The Commissions tab shows **commission details** over a 3-year window: total commissions by line of business (pie chart), top 10 agents by commission paid (bar chart), and a detailed table of commission entries by month, agency, agent, policy, and term. Use the controls to filter by month, agency, line of business, policy type, and state. CSV export is available; notifications ("Working on your CSV file" / "Your CSV is ready") may appear.

![Agency Principal -- Commissions tab](media/rId108.png){width="5.833333333333333in" height="3.3701957567804026in"} \### Controls

- **Month:** Selected month (e.g. 2/2026).
- **Agency Name:** Filter by agency (e.g. "All" or a specific agency).
- **Line of Business:** Filter by line (e.g. "All" or a specific line).
- **Policy Type:** Filter by policy type (e.g. "All" or a specific type).
- **State:** Filter by state (e.g. "All" or a specific state).

Same toolbar as Summary (undo, redo, settings, Save Settings, Reset).

### Section: Commission Details for \[Agency/All\]

Instruction: *"Please use the sheet controls to filter data by Agency, Month etc."*

### Charts and table

1.  **3-Year Total Commissions Paid by Lines of Business**\
    Pie chart showing the share of total commissions by line of business (e.g. Personal Homeowners \$202.72 (100%)). One slice per line; values and percentages may sum to 100%.

2.  **3-Year Top 10 Agents for All Lines of Business**\
    Horizontal bar chart. X-axis: **Commission Paid (Sum)** (e.g. \$0 to \$250). One bar per agent (e.g. "Agent Steward (123456)" \$202.72). Chart options (e.g. sort, export) may appear at the bottom right.

3.  **3-Year Commission Details for All Lines of Business**\
    Detailed table; one row per commission record. Horizontal scroll for all columns. Data reflects the selected filters (month, agency, line, policy type, state). **Link** opens the policy in BriteCore.\
    **Columns:**

  --------------------------------------------------------------------------------------------------------------------
  Column                                   Description
  ---------------------------------------- ---------------------------------------------------------------------------
  Month                                    Commission period (date).

  Agency Group                             Agency group name and code (e.g. Agency Insurance Group (0002-000-0000)).

  Agency Name                              Agency name and code (e.g. Agency Services (0002-000-0000)).

  Agent Name                               Agent name and identifier (e.g. Agent Steward (123456)).

  Policy Number                            Policy identifier (e.g. P-2024-5).

  Link                                     URL to the policy in BriteCore.

  Line of Business                         Product line (e.g. Personal Homeowners).

  Insured Name                             Named insured.

  Term Start - End                         Policy term (e.g. 18/Nov/2024 - 18/Nov/2025).

  Composite Commission Rate                Commission rate applied (e.g. 0.1 = 10%).

  Commission Paid                          Commission amount paid (can be negative e.g. -7.58).

  Premium                                  Associated premium amount.
  --------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------

## Production tab

**Why this tab helps:** Understand how quotes turn into policies---by agency or agent---and how in-force count and premium are trending. Use it to see where conversion is strong or weak, where to coach or invest, and how the book is growing month over month.

The Production tab shows **agency productivity** over a 3-year window: quoting activity (started, quoted, submitted, issued, canceled), quote conversion by agency, month-to-month in-force policy count and premiums by agency, and quote status by zip code. Use the controls to filter by month, agency, line of business, and policy type, and to group by Agency or Agent. CSV export may show "Working on your CSV file" / "Your CSV is ready."

### Controls

![Agency Principal -- Production tab (top)](media/rId114.png){width="5.833333333333333in" height="3.3701957567804026in"}

- **Month:** Selected month (e.g. 2/2026).
- **Group By:** Agency (or Agent) -- controls how data is grouped in the tables.
- **Agency Name:** Filter by agency (e.g. "All" or a specific agency).
- **Line of Business:** Filter by line (e.g. "All" or a specific line).
- **Policy Type:** Filter by policy type (e.g. "All" or a specific type).

Same toolbar as other tabs (undo, redo, settings, Save Settings, Reset).

### Section: Agency Productivity

Instruction: *"Please use the sheet controls to see data grouped by Agency or Agent and to filter data by Agency, Month etc."*

### Tables

1.  **3-Year Quoting Activities by Agency for All Lines of Business**\
    Rows: **Total**, **2025**, **2024** (or by year within the 3-year lookback).\
    **Columns (Quote Status):** Started \| Quoted \| Submitted \| Issued \| Canceled.\
    Counts of quotes at each stage (e.g. Total: Started 123, Quoted 102, Submitted 52, Issued 157, Canceled 3). Use to see quote funnel volume over time.

2.  **3-Year Quote Conversion by Agency for All Lines of Business**\
    One row per agency (e.g. Agency Services (0002-000-0000), Test Agency).\
    **Columns:** Agency \| Quoted \| Issued \| Conversion Rate \| Quoted Premium \| Issued Premium.\
    Conversion Rate = Issued / Quoted (e.g. 40.48%, 64.52%). Table options (expand/collapse, filter, menu) may appear next to the title.

3.  **3-Year M2M Inforce Policy Count and Premiums by Agency for All Lines of Business**\
    One row per agency plus **Total** and **Not Assigned**.\
    **Columns:** For each month (e.g. Feb 2025, Feb 2024): **Policy** (count) \| **Premium** (dollar amount).\
    Shows in-force policy count and premium by agency and month (e.g. Total Feb 2025: 114 policies, \$378,300+ premium).

4.  **3-Year Quote Status by ZipCode for All Lines of Business**\
    Table of quote status or activity by zip code; extends below the fold. Structure may mirror quoting/conversion by geography. Scroll to see full columns and rows.

![Agency Principal -- Production tab (middle)](media/rId119.png){width="5.833333333333333in" height="3.4053838582677165in"}

------------------------------------------------------------------------

## Payments Due tab

**Why this tab helps:** Know exactly what's due and from whom---by due date, billing status, and line of business. Use it to prioritize collections, reduce past-due exposure, and keep agency cash flow predictable. Real-time data refreshes when you select an agency.

The Payments Due tab shows **policies with current payments due** for the selected agency. Data is real time; the sheet refreshes when an agency is selected. **Select an agency** (not "All") to see data; with "All" the visuals show "No data." **Clicking a bar** in the bar charts filters the detail table below. CSV export may trigger "Working on your CSV file" / "Your CSV is ready." ![Agency Principal -- Payments Due tab](media/rId124.png){width="5.833333333333333in" height="3.135611329833771in"}

### Controls

- **Agency Name:** Dropdown (e.g. "All" or a specific agency such as "ABLY Insurance Agency - BLY"). **Must select a specific agency** to see payments-due data; "All" returns no data for this report.

Same toolbar as other tabs (undo, redo, settings, Save Settings, Reset). Options at bottom right may include expand/collapse and a more-options menu.

### Section: Policies with Current Payments Due for \[Agency/All\]

Info banner: *"This is real time data. Please select an Agency to see the data. This sheet is refreshed each time an agency is selected. Clicking on bars in bar charts filters data in the table below."*

![Agency Principal -- Payments Due (bar charts and table)](media/rId128.png){width="5.833333333333333in" height="3.1673173665791774in"}

### Bar charts

When an agency is selected, three bar charts appear above the table. **Clicking a bar** filters the policy table below.

1.  **Payment Due Status** (horizontal)\
    Categories: **Within 30 Days** (orange) \| **Over 30 Days** (green) \| **Not Due** (dark green). X-axis: count (e.g. 0--90). Shows how many policies are due within 30 days, over 30 days, or not yet due.

2.  **Policy Billing Status** (horizontal)\
    Categories: **Paid in Full** (dark green) \| **Bill Due** (red) \| **To be Billed** (orange) \| **Cancelled** (blue). X-axis: count. Shows count of policies by billing status.

3.  **Line of Business** (vertical)\
    Y-axis: Count (e.g. 0--70). One bar per line of business (e.g. Homeowners, Seasonal, Dwelling, Landlords, Manufactured). Tooltips show exact policy count (e.g. "Policies 12"). Use to see volume by LOB; clicking a bar filters the table.

### Detail table: Policies with current payments due

One row per policy. Filtered by the bar chart you click (payment due status, billing status, or line of business). **Policy Link** opens the policy in BriteCore.

  -------------------------------------------------------------------------------------------------------------------------
  Column                            Description
  --------------------------------- ---------------------------------------------------------------------------------------
  Policy Number                     Policy identifier (e.g. 10-2025-20451).

  Policy Link                       URL to the policy in BriteCore.

  Term Start                        Policy term start date (e.g. Jul 17, 2025).

  Insured Name                      Named insured(s).

  Payment Plan                      Plan type (e.g. ACH Monthly, New - 6 Pay, New - 2 Pay).

  Line of Business                  Product line (e.g. Homeowners, Seasonal, Landlords, Manufactured).

  Payment Status                    e.g. Bill Due, Paid in Full, To be Billed, Cancelled.

  Due Date                          Next or current payment due date.

  Amount Due                        Dollar amount due (e.g. \$140.20); may be highlighted in red when overdue or current.

  Term Payoff                       Total amount to pay off the term.
  -------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------

# CFO Dashboard

**Location:** Reports → Dashboards → **CFO** (selector: Claims Manager, CEO, Agency Principal, CFO, Underwriting Manager)

**Dashboards URL:** `https://yoursitename.britecore.com/britecore/reports/analytic_dashboards`

The CFO dashboard focuses on **policy transactions, cash, payments, and policy changes**. It has six tabs: **Policy Transactions**, **Policy Transaction Details**, **Cash Summary**, **Cash Details**, **Payments**, and **Policies Changes**. On every chart, **filtering**, **sorting**, **export to CSV or Excel**, and **expand to full screen** are available---see [Chart options (all dashboards)](dashboards.md#chart-options-all-dashboards) in the main doc.

**Why it matters for you:** Own the numbers in one place. From new business and endorsements to cash and payments, you get what you need for forecasting, reconciliation, and month-end close---without chasing spreadsheets or multiple systems.

------------------------------------------------------------------------

## Policy Transactions tab

**Why this tab helps:** See where revenue is coming from: new business, endorsements, and cancellations by line and policy type. Use it for volume and premium planning, trend spotting, and explaining top-line movement to the board or auditors.

The Policy Transactions tab shows **processed policy transaction amounts and counts** by line of business and policy type, plus new business premium by month and total premium-bearing transactions by type. Use the controls to filter by date range, agency, line of business, policy type, and status.

![CFO -- Policy Transactions tab (top)](media/rId136.png){width="5.833333333333333in" height="3.8354549431321083in"}

### Controls

- **Start Date / End Date:** Date range for transactions (e.g. 01/01/2025 -- 03/15/2026).
- **Agency Name:** Filter by agency (e.g. "All" or a specific agency).
- **Line of Business:** Filter by line (e.g. "All" or a specific line).
- **Policy Type:** Filter by policy type (e.g. "All" or a specific type).
- **Status:** Filter by status (control may appear truncated as "St").

Toolbar: settings (gear), Save Settings, Reset.

### Table: Processed Policy Transactions Amount and Count by Line of Business and Policy Type

**Rows (Transaction Type):** New Business \| Increase Endorsement \| Decrease Endorsement \| Cancellation \| **Total** (summary row).

**Columns:** One group per **Line of Business** and **Policy Type** (e.g. Commercial General Liability; Personal Homeowners Form 8; Personal Homeowners Form 2), each with: - **Premium** (dollar amount; can be negative for decrease/cancellation) - **Premium%** (percentage of total for that category) - **Count** (number of transactions)

A **Total** column on the right sums premium, premium %, and count across categories.

### Charts

1.  **New Business Premium by Month - All Agencies**\
    Bar chart. **X-axis:** Transaction Date (Month) (e.g. Jan 2025, Apr 2025, Aug 2025, Sep 2025). **Y-axis:** Premium (e.g. \$0 to \$6K). **Legend:** Line of Business (e.g. Commercial General Liability, Personal Homeowners). Shows new business premium by month; can be filtered by the dashboard controls.

2.  **Total Premium-Bearing Transactions for Selected Period**\
    Bar chart. **X-axis:** Transaction Type -- New Business, Increase Endorsement, Decrease Endorsement, Cancellation, Total. **Y-axis:** Transaction Written Premium (e.g. \$0 to \$18,000). **Legend:** Total (green), Increase (brown/orange), Decrease (red). New Business and Increase show as increase-style bars; Decrease Endorsement and Cancellation as decrease-style (e.g. red); Total as green.

![CFO -- Policy Transactions tab (bottom)](media/rId141.png){width="5.833333333333333in" height="1.8923140857392826in"}

------------------------------------------------------------------------

## Policy Transaction Details tab

**Why this tab helps:** Drill into individual transactions when you need to verify a number, support an audit, or reconcile premium and status changes. One row per transaction with policy, status, and premium deltas---export to CSV for deeper analysis.

The Policy Transaction Details tab shows **one row per policy transaction** within the selected date range and filters. Use it to see transaction type, policy, status, cancellation reason (if any), policy type, insured, and line of business. Same controls as Policy Transactions apply.

![CFO -- Policy Transaction Details tab](media/rId146.png){width="5.833333333333333in" height="2.517872922134733in"}

### Controls

Same as Policy Transactions: **Start Date**, **End Date**, **Agency Name**, **Line of Business**, **Policy Type**, **Status** (may show as "St"). Toolbar: refresh, undo, redo, settings, Save Settings, Reset.

### Table: Policy Transaction Details

One row per transaction. Table header has sort/filter options. Vertical scroll when there are many rows. Export includes all columns below.

**Columns:**

  --------------------------------------------------------------------------------------------------------------------------------
  Column                                    Description
  ----------------------------------------- --------------------------------------------------------------------------------------
  Transaction Type                          New Business, Increase Endorsement, Decrease Endorsement, or Cancellation.

  Policy Number                             Policy identifier (e.g. P-2025-3, P-2024-5).

  Transaction Policy Status                 Status at transaction time (e.g. Active, Canceled, Non-Payment of Premium).

  Current Policy Status                     Current status of the policy.

  Cancellation Reason                       Reason if canceled (blank when not applicable).

  Policy Type                               Form/type (e.g. Homeowners Form 2, Homeowners Form 8, Commercial General Liability).

  Insured Name                              Named insured.

  Line of Business                          Product line (e.g. Personal Homeowners, Commercial General Liability).

  Agency Name                               Agency name and code (e.g. Agency Services (0002-000-0000)).

  Agency Number                             Agency number (e.g. 0002-000-0000).

  Agency Group                              Agency group name and code (e.g. Agency Insurance Group (0002-000-0000)).

  Effective Date                            Policy effective date.

  Expiration Date                           Policy expiration date.

  Inception Date                            Policy inception date.

  Revision Date                             Date of this revision/transaction.

  Revision State                            State of the revision (e.g. committed, pending).

  Transaction Date                          Date the transaction was processed.

  State                                     Policy state (e.g. Massachusetts).

  New Written Premium                       Written premium after the transaction.

  Prior Written Premium                     Written premium before the transaction.

  Transaction Written Premium               Premium change for this transaction (can be negative).
  --------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------

## Cash Summary tab

**Why this tab helps:** Monitor cash in and loss out by month and agency. Use it for cash flow planning, loss funding discussions, and a quick view of which agencies drive payments and which drive losses---so you can align expectations and reserves.

The Cash Summary tab shows **payment amounts by month**, **losses incurred** by category and line of business, **top agencies by payment amount** and **by losses paid**, and an optional map of gross incurred losses. Use the controls to filter by date range, agency, and line of business. CSV export may show "Your CSV is ready."

![CFO -- Cash Summary tab (top)](media/rId152.png){width="5.833333333333333in" height="2.424038713910761in"} \### Controls

- **Start Date / End Date:** Date range (e.g. 01/01/2025 -- 03/15/2026).
- **Agency Name:** Filter by agency (e.g. "All" or a specific agency).
- **Line of Business:** Filter by line (e.g. "All" or a specific line).

Same toolbar as other CFO tabs (settings, Save Settings, Reset).

### Charts and table

1.  **Payment Amount by month**\
    Line graph. **X-axis:** Transaction Date (Month) (e.g. Apr 2025 through Sep 2025). **Y-axis:** Payment Amount (e.g. \$0 to \$5K). Shows payment amount trend over time; values reflect the selected filters.

2.  **Losses Incurred**\
    Table. **Columns:** Category \| Sub Category \| Line of Business \| Policy Type \| Change in Reserve \| Paid Amount.\
    **Rows:** Grouped by **Category** (e.g. Gross Loss, Salvage, Subrogation), then **Sub Category**, then **Line of Business** (e.g. Auto Business, Commercial, Personal Homeowners), then **Policy Type**. **Total Net** row at the bottom sums Change in Reserve and Paid Amount. Salvage and Subrogation may show negative values (recoveries).

3.  **Top 10 Agencies by Payment Amount**\
    Horizontal bar chart. **Y-axis:** Agency Name. **X-axis:** Success Amount (Sum) (e.g. \$0 to \$10K). One bar per agency (e.g. Agency Services, Test Agency); "null" may appear for unassigned. Use to compare payment volume by agency.

4.  **Top 10 Agencies by Losses Paid**\
    Horizontal bar chart. **Y-axis:** Agency Name. **X-axis:** Gross Loss Paid (Sum) (e.g. \$0 to \$15K). One bar per agency; tooltips can show exact Gross Loss Paid (e.g. \$358.00). Use to compare losses paid by agency.

![CFO -- Cash Summary tab (bottom)](media/rId155.png){width="5.833333333333333in" height="1.3410400262467193in"}

5.  **Gross Incurred Losses on a Map** Map chart for geographic view of gross incurred losses. When not configured or missing data, shows: *"You need to add or remove fields"* and *"Points on map requires 1 geospatial field in Geospatial (Country, State, County, City, or Postcode) or 1 latitude and 1 longitude field in Geospatial."*

------------------------------------------------------------------------

## Cash Details tab

**Why this tab helps:** Reconcile payments and losses to the policy and claim level when you need the fine print. Payment Details tie cash to policies and channels; Losses Details tie incurred and paid to claims and categories---ideal for variance analysis and audit support.

The Cash Details tab shows **two detail tables**: **Payment Details** (payments by policy, agency, insured, authorization state, and payment type) and **Losses Details** (loss/claim records by policy, claim, agency, category, and sub category). Same date and filter controls as Cash Summary. CSV export may show "Your CSV is ready." ![CFO -- Cash Details tab (top)](media/rId160.png){width="5.833333333333333in" height="2.361482939632546in"}

### Controls

Same as Cash Summary: **Start Date**, **End Date**, **Agency Name**, **Line of Business**. Same toolbar (settings, Save Settings, Reset).

### Table 1: Payment Details

One row per payment record. Vertical scroll when there are many rows.

**Columns:**

  ---------------------------------------------------------------------------------------------------------------------------------------
  Column                                Description
  ------------------------------------- -------------------------------------------------------------------------------------------------
  Policy Number                         Policy identifier (e.g. P-2025-4, Q-2024-269).

  Agency Name                           Agency name and code (e.g. Agency Services (0002-000-0000), Test Agency); blank for unassigned.

  Insured Name                          Named insured.

  Authorization State                   State of the payment (e.g. approved, pending).

  Payment Interface                     Source of the payment (e.g. Public Web Gateway, Policyholder Portal, Admin Web Widget).

  Payment Status                        Status (e.g. Successful, Pending).

  Line of Business                      Product line (e.g. Personal Homeowners, Auto Business).

  Policy Type                           Policy form/type (e.g. Homeowners Form 2, Personal Auto).

  Success Amount                        Payment amount (dollars).
  ---------------------------------------------------------------------------------------------------------------------------------------

### Table 2: Losses Details

One row per loss/claim record. **Claim Link** opens the claim in BriteCore. Vertical scroll when there are many rows. \*

**Columns:**

  ----------------------------------------------------------------------------------------------------------------
  Column                            Description
  --------------------------------- ------------------------------------------------------------------------------
  Policy Number                     Policy identifier (e.g. P-2023-4, P-2024-2).

  Claim Number                      Claim identifier (e.g. C-2023-117, C-2025-86).

  Claim Link                        URL to the claim in BriteCore.

  Agency Name                       Agency name and code.

  Category                          Loss category (e.g. Gross Loss, Gross Expenses, Reinsurance).

  Sub Category                      Sub category (e.g. Loss, Adjusting, Reinsurance).

  Insured Name                      Named insured.

  Line of Business                  Product line (e.g. Personal Homeowners, Commercial Businessowners).

  Policy Type                       Policy form/type (e.g. Homeowners Form 2, Businessowners (BOP)).

  Peril                             Cause of loss (e.g. Hail, Wind, Damage to Property of Others); may be blank.

  Zip Code                          Location zip code.

  State                             Policy/claim state (e.g. Massachusetts).

  Change                            Change in reserve or amount.

  Paid Amount                       Amount paid.

  Incurred Amount                   Total incurred (can be negative for recoveries, e.g. Reinsurance).
  ----------------------------------------------------------------------------------------------------------------

![CFO -- Cash Details tab (bottom)](media/rId165.png){width="5.833333333333333in" height="1.4778816710411198in"}

------------------------------------------------------------------------

## Payments tab

**Why this tab helps:** See how customers pay---by agency, line, policy type, and method (e.g. card, check). Use it to understand revenue mix, plan for payment channel costs, and spot shifts in how premium is collected. The hierarchy lets you expand from summary to detail as needed.

The Payments tab shows **payment values, transaction counts, and share of total** in a **hierarchical (pivoted) table**. Rows can be grouped and expanded by agency, line of business, policy type, and payment method/type (e.g. NamedInsured/Other, Credit Card, Check). Use the controls to filter by date range, agency, and line of business. CSV export is available; "Your CSV is ready" may appear (possibly more than once) when exports complete. ![CFO -- Payments tab](media/rId170.png){width="5.833333333333333in" height="3.1199726596675417in"}

### Controls

- **Start Date / End Date:** Date range (e.g. 01/01/2025 -- 03/15/2026).
- **Agency Name:** Filter by agency (e.g. "All" or a specific agency).
- **Line of Business:** Filter by line (e.g. "All" or a specific line).

Toolbar: navigation (back/forward/refresh), settings (gear), Save Settings, Reset.

### Table: Payments (hierarchical)

**Columns:** Payment Values \| % of Total \| No. of Transactions.

**Rows:** Hierarchical with checkboxes to expand/collapse groups. Top level is "Rows"; then grouping by agency or unassigned (e.g. "null"), then by line of business / policy type (e.g. Auto Business → Personal Auto), then by payment source or method (e.g. NamedInsured, Other) and payment type (e.g. Credit Card, Check). Each leaf row shows Payment Values (dollars), No. of Transactions (count), and % of Total for that segment. A **Total** row at the bottom sums Payment Values, No. of Transactions, and shows 100% for % of Total. Vertical scroll when there are many groups or rows.

------------------------------------------------------------------------

## Policies Changes tab

**Why this tab helps:** Track premium and status changes by policy for accurate books and clean month-end close. See what changed, when, and by how much---so you can reconcile in-force and written premium and explain movements to auditors or management.

The Policies Changes tab shows **policy change detail** for the selected period and report month: one row per policy change with agency, line of business, policy type, dates, status, and premium amounts. When there is no data for the chosen filters, the table shows *"No data. There was no data found for the visual."* CSV export may show "Your CSV is ready."

### Controls

- **Period:** e.g. **MTD** (Month-To-Date) or other period type.
- **Report Month:** Month for the report (e.g. Feb 2026).
- **Agency Name:** Filter by agency (e.g. "All" or a specific agency such as "A-1 Insurance Professionals - AIP").
- **Line of Business:** Filter by line (e.g. "All" or a specific line).
- **Policy Type:** Filter by policy type (e.g. "All" or a specific type).
- **State:** Filter by state (e.g. "All" or a specific state).
- **Policy Number:** Filter by policy number (e.g. "All" or a specific policy).
- **Policy Change:** Filter by change type (e.g. "All" or a specific value).
- **Premium Allocation:** Filter by premium allocation (e.g. "All" or a specific value).
- **Inforce Policy:** Filter by in-force status (e.g. "All" or a specific value).

Toolbar: refresh, undo, redo, settings. Same as other CFO tabs. CSV export may show "Your CSV is ready."

![CFO -- Policies Changes tab](media/rId176.png){width="5.833333333333333in" height="1.6772779965004374in"}

### Table: Policies Changes

One row per policy change. Table supports sort icons on column headers. Horizontal scroll if needed.

**Columns:**

  ------------------------------------------------------------------------------------------------------------------------------------
  Column                                   Description
  ---------------------------------------- -------------------------------------------------------------------------------------------
  Agency Name                              Agency name (e.g. A-1 Insurance Professionals - AIP).

  Line of Business                         Product line (e.g. Businessowner's (LCIC), Commercial Fire and Liability, Dwelling Fire).

  Policy Type                              Policy form/type (e.g. Businessowner's Policy, Standard Businessowner's Policy).

  Date                                     Policy date for the report period (e.g. month-end date such as 2026-02-28).

  Policy Number                            Policy identifier (e.g. 10-2022-17999, format YY-NNNN-NNNNN).

  Prior Policy Status                      Status before the change (e.g. Active).

  Current Policy Status                    Current status (e.g. Active, Canceled, No...).

  Revision Date                            Date of the revision.

  Commit Date                              Date the change was committed.

  Effective Date                           Policy effective date.

  Expiration Date                          Policy expiration date.

  Inception Date                           Policy inception date.

  Cancel Date                              Cancellation date, if applicable (blank when not canceled).

  Policy Change                            Type of change (e.g. No Change - Current Term).

  Premium Allocation                       Allocation type (e.g. No Change - Current Term).

  Inforce                                  Whether policy is in force (e.g. Yes).

  Premium Written                          Premium written for this change (can be 0).

  Previous Premium Written                 Previous premium written.

  Current Premium Written                  Current premium written (e.g. 275, 3294).

  Premium Earned                           Premium earned (e.g. 21.1, 252.69).
  ------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------

# Underwriting Manager Dashboard

**Location:** Reports → Dashboards → **Underwriting Manager** (selector: Claims Manager, CEO, Agency Principal, CFO, Underwriting Manager)

**URL (product demo):** `https://yoursitename.britecore.com/britecore/reports/analytic_dashboards`

The Underwriting Manager dashboard focuses on **policy and premium information**, **claim information**, and **claims changes**. It has three tabs: **Policy and Premium Information**, **Claim Information**, and **Claims Changes**. On every chart, **filtering**, **sorting**, **export to CSV or Excel**, and **expand to full screen** are available---see [Chart options (all dashboards)](dashboards.md#chart-options-all-dashboards) in the main doc.

**Why it matters for you:** Balance growth and risk with clear views of where premium and claims concentrate. See book composition, high-loss zip codes, repeat claimants, and loss ratios by line and agency---so you can sharpen guidelines, pricing, and underwriting focus without guessing.

------------------------------------------------------------------------

## Policy and Premium Information tab

**Why this tab helps:** See how the book is built---policy count and premium by line and type---and where risk shows up: claims by insured, repeat offenders over time, and loss ratio by zip. Use it to spot concentration, target underwriting actions, and support territory or product decisions with data.

The Policy and Premium Information tab shows policy counts and premium by line of business and policy type, claims count by contact (insured), repeat offenders over time, loss ratio by zip code, and a detail table filterable by zip code (and by selection in the bar chart). Use the controls to filter by report month, agency, underwriter, line of business, and policy type.

![Underwriting Manager -- Policy and Premium Information tab](media/rId183.png){width="5.833333333333333in" height="4.276718066491688in"}

### Controls

- **Report Month:** Month for the report (e.g. Feb 2026).
- **Agency Name:** Filter by agency (e.g. "All" or a specific agency).
- **Underwriter Name:** Filter by underwriter (e.g. "All" or a specific underwriter).
- **Line Of Business:** Filter by line (e.g. "All" or a specific line).
- **Policy Type:** Filter by policy type (e.g. "All" or a specific type).
- Additional control may appear (e.g. "Y" column or indicator).

Toolbar: settings (gear), Save Settings, Reset.

### Charts and table

1.  **Policy Count by Line of Business / Policy Type**\
    Panel with drill-down. When there is no data for the selected filters, shows *"No data. There was no data found for the visual."* Use to see policy counts broken down by line of business and policy type when data exists.

2.  **Premium by Line of Business / Policy Type**\
    Panel with drill-down. When there is no data, shows *"No data."* Use to see premium broken down by line of business and policy type when data exists.

3.  **3 Years Look Back Claims Count by Contact**\
    Horizontal bar chart. **Y-axis:** Insured Name. **X-axis:** Claims Count (e.g. 0 to 100). Subtitle: *"Drill down to claims count by Adjuster and Underwriter."* One bar per insured; **selecting an insured** filters the "Repeat Offenders In Time" visual on the right. Example data: BOBBIE A SHAFFER 95, Rebecka Test 28, Sam Pellegrino 7, John Doe 4, etc.

4.  **Repeat Offenders In Time**\
    Line chart. **X-axis:** Loss Date (Month) (e.g. 2017--2020). **Y-axis:** Scale (e.g. 0--100). Multiple lines by **Insured Name**; legend lists insureds. Instruction: *"Select an insured name on the Bar visual on the left to filter this visual."* Shows loss/claim history over time for the selected insured(s).

5.  **Loss Ratio by Zip code**\
    Map or chart by zip code. When there is no data, shows *"No data."* When configured, **selecting a zip code** filters the detail table below. (Map may be in the same tab or linked.)

6.  **Detail table (filtered by Zip Code / map)**\
    Instruction above table: *"Select a Zip Code on the map to filter this table."*\
    **Columns:** Zip Code \| Agency Name \| Adjuster Name \| Underwriter Name \| Policy Number.\
    One row per policy; Zip Code may include "null." Agency Name (e.g. Agency Services (0002-000-0000), Test Agency), Adjuster Name (e.g. Not Assigned, Chad Allan, Rebecka Nawrocki), Underwriter Name (e.g. Not Assigned, Chad Allan), Policy Number (e.g. P-2025-4, Q-2024-34). Table is filtered by the zip code selected on the map (or shows full set when no map selection).

------------------------------------------------------------------------

## Claim Information tab

**Why this tab helps:** See loss and LAE by line, policy type, and agency in one place. Use it to tighten guidelines, adjust pricing, and have evidence-based conversations with underwriting and claims---so risk selection and retention decisions are grounded in current loss experience.

The Claim Information tab shows **claims details year-to-date (YTD)** in two tables: one by **line of business and policy type** (with expandable rows), and one by **agency**. When there is no data for the selected filters, each table shows *"No data. There was no data found for the visual."*

![Underwriting Manager -- Claim Information tab](media/rId189.png){width="5.833333333333333in" height="3.2800087489063867in"}

### Controls

Same as Policy and Premium Information: **Report Month** (e.g. Feb 2026), **Agency Name**, **Underwriter Name**, **Line Of Business**, **Policy Type**. Same toolbar (settings, Save Settings, Reset).

![Underwriting Manager -- Claim Information (tables)](media/rId192.png){width="5.833333333333333in" height="3.1958005249343833in"}

### Table 1: Claims Details by Line of Business and Policy Type YTD

Aggregated claims data YTD, broken down by line of business and policy type. Rows can be **expandable**: a line of business (e.g. Commercial Fire and Liability, Dwelling Fire, Homeowners, Inland Marine) expands to show sub-rows by policy type (e.g. Commercial Fire, Dwelling Fire, Dwelling Fire Mobile Home, Commercial Inland Marine). Some rows are a single policy type (e.g. Standard Businessowner's Policy).

**Columns:**

  ----------------------------------------------------------------------------------------------------------------
  Column                                  Description
  --------------------------------------- ------------------------------------------------------------------------
  Rows                                    Line of business and/or policy type (expandable hierarchy).

  Losses Paid                             Total losses paid YTD (dollars).

  Total LAE Paid                          Total loss adjustment expense paid YTD (dollars).

  Gross Losses Incurred                   Gross losses incurred YTD (dollars).

  Total LAE Incurred                      Total LAE incurred YTD (dollars).

  Active Claims                           Count of active claims.

  New Claims                              Count of new claims.

  Loss Ratio                              Loss ratio (percentage; can be negative e.g. -1,247.4% in some cases).

  Beginning Reserves                      Beginning reserves (dollars).

  Ending Reserves                         Ending reserves (dollars).
  ----------------------------------------------------------------------------------------------------------------

### Table 2: Claims Details by Agency YTD

Same metric columns as Table 1, with one row per **agency** (e.g. A-1 Insurance Professionals - AIP, ABLY Insurance Agency - BLY). Icons next to the title: expand/collapse, download, filter, more options.

**Columns:**

  -----------------------------------------------------------------------------------------------
  Column                                  Description
  --------------------------------------- -------------------------------------------------------
  Agency Name                             Agency name (e.g. A-1 Insurance Professionals - AIP).

  Losses Paid                             Total losses paid YTD (dollars).

  Total LAE Paid                          Total LAE paid YTD (dollars).

  Gross Losses Incurred                   Gross losses incurred YTD (dollars).

  Total LAE Incurred                      Total LAE incurred YTD (dollars).

  Active Claims                           Count of active claims.

  New Claims                              Count of new claims.

  Loss Ratio                              Loss ratio (percentage).

  Beginning Reserves                      Beginning reserves (dollars).

  Ending Reserves                         Ending reserves (dollars).
  -----------------------------------------------------------------------------------------------

------------------------------------------------------------------------

## Claims Changes tab

**Why this tab helps:** Track how claims and reserves change over time---so you can tie underwriting and policy changes to claim outcomes and reserve movements. Use it to validate pricing and guidelines and to explain loss and reserve trends to leadership. (Full tab documentation in progress.)

![Underwriting Manager -- Claims Changes tab](media/rId199.png){width="5.833333333333333in" height="2.39667104111986in"}

------------------------------------------------------------------------

*Documentation based on yoursitename.britecore.com and live data. Policy and Premium Information and Claim Information documented with full table columns; Claims Changes in progress.*
