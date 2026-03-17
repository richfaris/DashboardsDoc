# CFO Dashboard

**Location:** Reports → Dashboards → **CFO** (selector: Claims Manager, CEO, Agency Principal, CFO, Underwriting Manager)

**Dashboards URL:** `https://yoursitename.britecore.com/britecore/reports/analytic_dashboards`

The CFO dashboard focuses on **policy transactions, cash, payments, and policy changes**. It has six tabs: **Policy Transactions**, **Policy Transaction Details**, **Cash Summary**, **Cash Details**, **Payments**, and **Policies Changes**. On every chart, **filtering**, **sorting**, **export to CSV or Excel**, and **expand to full screen** are available—see [Chart options (all dashboards)](dashboards.md#chart-options-all-dashboards) in the main doc.

**Why it matters for you:** Own the numbers in one place. From new business and endorsements to cash and payments, you get what you need for forecasting, reconciliation, and month-end close—without chasing spreadsheets or multiple systems.

---

## Policy Transactions tab

**Why this tab helps:** See where revenue is coming from: new business, endorsements, and cancellations by line and policy type. Use it for volume and premium planning, trend spotting, and explaining top-line movement to the board or auditors.

The Policy Transactions tab shows **processed policy transaction amounts and counts** by line of business and policy type, plus new business premium by month and total premium-bearing transactions by type. Use the controls to filter by date range, agency, line of business, policy type, and status.

![CFO – Policy Transactions tab (top)](assets/CFO%20Policy%20Transactions%20Top.png)

### Controls

- **Start Date / End Date:** Date range for transactions (e.g. 01/01/2025 – 03/15/2026).
- **Agency Name:** Filter by agency (e.g. “All” or a specific agency).
- **Line of Business:** Filter by line (e.g. “All” or a specific line).
- **Policy Type:** Filter by policy type (e.g. “All” or a specific type).
- **Status:** Filter by status (control may appear truncated as “St”).

Toolbar: settings (gear), Save Settings, Reset.

### Table: Processed Policy Transactions Amount and Count by Line of Business and Policy Type

**Rows (Transaction Type):** New Business | Increase Endorsement | Decrease Endorsement | Cancellation | **Total** (summary row).

**Columns:** One group per **Line of Business** and **Policy Type** (e.g. Commercial General Liability; Personal Homeowners Form 8; Personal Homeowners Form 2), each with:
- **Premium** (dollar amount; can be negative for decrease/cancellation)
- **Premium%** (percentage of total for that category)
- **Count** (number of transactions)

A **Total** column on the right sums premium, premium %, and count across categories. 

### Charts

1. **New Business Premium by Month - All Agencies**  
   Bar chart. **X-axis:** Transaction Date (Month) (e.g. Jan 2025, Apr 2025, Aug 2025, Sep 2025). **Y-axis:** Premium (e.g. $0 to $6K). **Legend:** Line of Business (e.g. Commercial General Liability, Personal Homeowners). Shows new business premium by month; can be filtered by the dashboard controls.

2. **Total Premium-Bearing Transactions for Selected Period**  
   Bar chart. **X-axis:** Transaction Type – New Business, Increase Endorsement, Decrease Endorsement, Cancellation, Total. **Y-axis:** Transaction Written Premium (e.g. $0 to $18,000). **Legend:** Total (green), Increase (brown/orange), Decrease (red). New Business and Increase show as increase-style bars; Decrease Endorsement and Cancellation as decrease-style (e.g. red); Total as green.

![CFO – Policy Transactions tab (bottom)](assets/CFO%20Policy%20Transactions%20Bottom.png)

---

## Policy Transaction Details tab

**Why this tab helps:** Drill into individual transactions when you need to verify a number, support an audit, or reconcile premium and status changes. One row per transaction with policy, status, and premium deltas—export to CSV for deeper analysis.

The Policy Transaction Details tab shows **one row per policy transaction** within the selected date range and filters. Use it to see transaction type, policy, status, cancellation reason (if any), policy type, insured, and line of business. Same controls as Policy Transactions apply.

![CFO – Policy Transaction Details tab](assets/CFO%20Policy%20Transaction%20Details.png)

### Controls

Same as Policy Transactions: **Start Date**, **End Date**, **Agency Name**, **Line of Business**, **Policy Type**, **Status** (may show as “St”). Toolbar: refresh, undo, redo, settings, Save Settings, Reset.

### Table: Policy Transaction Details

One row per transaction. Table header has sort/filter options. Vertical scroll when there are many rows. Export includes all columns below. 

**Columns:**

| Column                     | Description |
|----------------------------|-------------|
| Transaction Type           | New Business, Increase Endorsement, Decrease Endorsement, or Cancellation. |
| Policy Number              | Policy identifier (e.g. P-2025-3, P-2024-5). |
| Transaction Policy Status  | Status at transaction time (e.g. Active, Canceled, Non-Payment of Premium). |
| Current Policy Status      | Current status of the policy. |
| Cancellation Reason        | Reason if canceled (blank when not applicable). |
| Policy Type                | Form/type (e.g. Homeowners Form 2, Homeowners Form 8, Commercial General Liability). |
| Insured Name               | Named insured. |
| Line of Business           | Product line (e.g. Personal Homeowners, Commercial General Liability). |
| Agency Name                | Agency name and code (e.g. Agency Services (0002-000-0000)). |
| Agency Number              | Agency number (e.g. 0002-000-0000). |
| Agency Group               | Agency group name and code (e.g. Agency Insurance Group (0002-000-0000)). |
| Effective Date             | Policy effective date. |
| Expiration Date            | Policy expiration date. |
| Inception Date             | Policy inception date. |
| Revision Date              | Date of this revision/transaction. |
| Revision State             | State of the revision (e.g. committed, pending). |
| Transaction Date           | Date the transaction was processed. |
| State                      | Policy state (e.g. Massachusetts). |
| New Written Premium        | Written premium after the transaction. |
| Prior Written Premium      | Written premium before the transaction. |
| Transaction Written Premium| Premium change for this transaction (can be negative). |

---

## Cash Summary tab

**Why this tab helps:** Monitor cash in and loss out by month and agency. Use it for cash flow planning, loss funding discussions, and a quick view of which agencies drive payments and which drive losses—so you can align expectations and reserves.

The Cash Summary tab shows **payment amounts by month**, **losses incurred** by category and line of business, **top agencies by payment amount** and **by losses paid**, and an optional map of gross incurred losses. Use the controls to filter by date range, agency, and line of business. CSV export may show “Your CSV is ready.”

![CFO – Cash Summary tab (top)](assets/CFO%20Cash%20Summary%20Top.png)
### Controls

- **Start Date / End Date:** Date range (e.g. 01/01/2025 – 03/15/2026).
- **Agency Name:** Filter by agency (e.g. “All” or a specific agency).
- **Line of Business:** Filter by line (e.g. “All” or a specific line).

Same toolbar as other CFO tabs (settings, Save Settings, Reset).

### Charts and table

1. **Payment Amount by month**  
   Line graph. **X-axis:** Transaction Date (Month) (e.g. Apr 2025 through Sep 2025). **Y-axis:** Payment Amount (e.g. $0 to $5K). Shows payment amount trend over time; values reflect the selected filters.

2. **Losses Incurred**  
   Table. **Columns:** Category | Sub Category | Line of Business | Policy Type | Change in Reserve | Paid Amount.  
   **Rows:** Grouped by **Category** (e.g. Gross Loss, Salvage, Subrogation), then **Sub Category**, then **Line of Business** (e.g. Auto Business, Commercial, Personal Homeowners), then **Policy Type**. **Total Net** row at the bottom sums Change in Reserve and Paid Amount. Salvage and Subrogation may show negative values (recoveries).

3. **Top 10 Agencies by Payment Amount**  
   Horizontal bar chart. **Y-axis:** Agency Name. **X-axis:** Success Amount (Sum) (e.g. $0 to $10K). One bar per agency (e.g. Agency Services, Test Agency); “null” may appear for unassigned. Use to compare payment volume by agency.

4. **Top 10 Agencies by Losses Paid**  
   Horizontal bar chart. **Y-axis:** Agency Name. **X-axis:** Gross Loss Paid (Sum) (e.g. $0 to $15K). One bar per agency; tooltips can show exact Gross Loss Paid (e.g. $358.00).    Use to compare losses paid by agency.

![CFO – Cash Summary tab (bottom)](assets/CFO%20Cash%20Summary%20Bottom.png)

5. **Gross Incurred Losses on a Map**
   Map chart for geographic view of gross incurred losses. When not configured or missing data, shows: *“You need to add or remove fields”* and *“Points on map requires 1 geospatial field in Geospatial (Country, State, County, City, or Postcode) or 1 latitude and 1 longitude field in Geospatial.”*

---

## Cash Details tab

**Why this tab helps:** Reconcile payments and losses to the policy and claim level when you need the fine print. Payment Details tie cash to policies and channels; Losses Details tie incurred and paid to claims and categories—ideal for variance analysis and audit support.

The Cash Details tab shows **two detail tables**: **Payment Details** (payments by policy, agency, insured, authorization state, and payment type) and **Losses Details** (loss/claim records by policy, claim, agency, category, and sub category). Same date and filter controls as Cash Summary. CSV export may show “Your CSV is ready.”
![CFO – Cash Details tab (top)](assets/CFO%20Cash%20Details%20Top.png)

### Controls

Same as Cash Summary: **Start Date**, **End Date**, **Agency Name**, **Line of Business**. Same toolbar (settings, Save Settings, Reset).

### Table 1: Payment Details

One row per payment record. Vertical scroll when there are many rows. 

**Columns:**

| Column              | Description |
|---------------------|-------------|
| Policy Number       | Policy identifier (e.g. P-2025-4, Q-2024-269). |
| Agency Name         | Agency name and code (e.g. Agency Services (0002-000-0000), Test Agency); blank for unassigned. |
| Insured Name        | Named insured. |
| Authorization State | State of the payment (e.g. approved, pending). |
| Payment Interface   | Source of the payment (e.g. Public Web Gateway, Policyholder Portal, Admin Web Widget). |
| Payment Status      | Status (e.g. Successful, Pending). |
| Line of Business    | Product line (e.g. Personal Homeowners, Auto Business). |
| Policy Type         | Policy form/type (e.g. Homeowners Form 2, Personal Auto). |
| Success Amount      | Payment amount (dollars). |

### Table 2: Losses Details

One row per loss/claim record. **Claim Link** opens the claim in BriteCore. Vertical scroll when there are many rows. *

**Columns:**

| Column         | Description |
|----------------|-------------|
| Policy Number  | Policy identifier (e.g. P-2023-4, P-2024-2). |
| Claim Number   | Claim identifier (e.g. C-2023-117, C-2025-86). |
| Claim Link     | URL to the claim in BriteCore. |
| Agency Name    | Agency name and code. |
| Category       | Loss category (e.g. Gross Loss, Gross Expenses, Reinsurance). |
| Sub Category   | Sub category (e.g. Loss, Adjusting, Reinsurance). |
| Insured Name   | Named insured. |
| Line of Business | Product line (e.g. Personal Homeowners, Commercial Businessowners). |
| Policy Type    | Policy form/type (e.g. Homeowners Form 2, Businessowners (BOP)). |
| Peril          | Cause of loss (e.g. Hail, Wind, Damage to Property of Others); may be blank. |
| Zip Code       | Location zip code. |
| State          | Policy/claim state (e.g. Massachusetts). |
| Change         | Change in reserve or amount. |
| Paid Amount    | Amount paid. |
| Incurred Amount| Total incurred (can be negative for recoveries, e.g. Reinsurance). |

![CFO – Cash Details tab (bottom)](assets/CFO%20Cash%20Details%20Bottom.png)

---

## Payments tab

**Why this tab helps:** See how customers pay—by agency, line, policy type, and method (e.g. card, check). Use it to understand revenue mix, plan for payment channel costs, and spot shifts in how premium is collected. The hierarchy lets you expand from summary to detail as needed.

The Payments tab shows **payment values, transaction counts, and share of total** in a **hierarchical (pivoted) table**. Rows can be grouped and expanded by agency, line of business, policy type, and payment method/type (e.g. NamedInsured/Other, Credit Card, Check). Use the controls to filter by date range, agency, and line of business. CSV export is available; “Your CSV is ready” may appear (possibly more than once) when exports complete.
![CFO – Payments tab](assets/CFO%20Payments.png)

### Controls

- **Start Date / End Date:** Date range (e.g. 01/01/2025 – 03/15/2026).
- **Agency Name:** Filter by agency (e.g. “All” or a specific agency).
- **Line of Business:** Filter by line (e.g. “All” or a specific line).

Toolbar: navigation (back/forward/refresh), settings (gear), Save Settings, Reset.

### Table: Payments (hierarchical)

**Columns:** Payment Values | % of Total | No. of Transactions.

**Rows:** Hierarchical with checkboxes to expand/collapse groups. Top level is “Rows”; then grouping by agency or unassigned (e.g. “null”), then by line of business / policy type (e.g. Auto Business → Personal Auto), then by payment source or method (e.g. NamedInsured, Other) and payment type (e.g. Credit Card, Check). Each leaf row shows Payment Values (dollars), No. of Transactions (count), and % of Total for that segment. A **Total** row at the bottom sums Payment Values, No. of Transactions, and shows 100% for % of Total. Vertical scroll when there are many groups or rows.

---

## Policies Changes tab

**Why this tab helps:** Track premium and status changes by policy for accurate books and clean month-end close. See what changed, when, and by how much—so you can reconcile in-force and written premium and explain movements to auditors or management.

The Policies Changes tab shows **policy change detail** for the selected period and report month: one row per policy change with agency, line of business, policy type, dates, status, and premium amounts. When there is no data for the chosen filters, the table shows *“No data. There was no data found for the visual.”* CSV export may show “Your CSV is ready.”

### Controls

- **Period:** e.g. **MTD** (Month-To-Date) or other period type.
- **Report Month:** Month for the report (e.g. Feb 2026).
- **Agency Name:** Filter by agency (e.g. “All” or a specific agency such as “A-1 Insurance Professionals - AIP”).
- **Line of Business:** Filter by line (e.g. “All” or a specific line).
- **Policy Type:** Filter by policy type (e.g. “All” or a specific type).
- **State:** Filter by state (e.g. “All” or a specific state).
- **Policy Number:** Filter by policy number (e.g. “All” or a specific policy).
- **Policy Change:** Filter by change type (e.g. “All” or a specific value).
- **Premium Allocation:** Filter by premium allocation (e.g. “All” or a specific value).
- **Inforce Policy:** Filter by in-force status (e.g. “All” or a specific value).

Toolbar: refresh, undo, redo, settings. Same as other CFO tabs. CSV export may show “Your CSV is ready.”

![CFO – Policies Changes tab](assets/CFO%20Policies%20Changes.png)

### Table: Policies Changes

One row per policy change. Table supports sort icons on column headers. Horizontal scroll if needed. 

**Columns:**

| Column                   | Description |
|--------------------------|-------------|
| Agency Name              | Agency name (e.g. A-1 Insurance Professionals - AIP). |
| Line of Business         | Product line (e.g. Businessowner's (LCIC), Commercial Fire and Liability, Dwelling Fire). |
| Policy Type              | Policy form/type (e.g. Businessowner's Policy, Standard Businessowner's Policy). |
| Date                     | Policy date for the report period (e.g. month-end date such as 2026-02-28). |
| Policy Number            | Policy identifier (e.g. 10-2022-17999, format YY-NNNN-NNNNN). |
| Prior Policy Status      | Status before the change (e.g. Active). |
| Current Policy Status    | Current status (e.g. Active, Canceled, No...). |
| Revision Date            | Date of the revision. |
| Commit Date              | Date the change was committed. |
| Effective Date           | Policy effective date. |
| Expiration Date          | Policy expiration date. |
| Inception Date           | Policy inception date. |
| Cancel Date              | Cancellation date, if applicable (blank when not canceled). |
| Policy Change            | Type of change (e.g. No Change - Current Term). |
| Premium Allocation       | Allocation type (e.g. No Change - Current Term). |
| Inforce                  | Whether policy is in force (e.g. Yes). |
| Premium Written          | Premium written for this change (can be 0). |
| Previous Premium Written | Previous premium written. |
| Current Premium Written  | Current premium written (e.g. 275, 3294). |
| Premium Earned           | Premium earned (e.g. 21.1, 252.69). |

---
