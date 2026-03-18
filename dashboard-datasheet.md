---
title: Dashboard Datasheet
subtitle: BriteCore RealTime Dashboards — value at a glance
---

**Purpose:** Help CSMs and customers quickly see *what* each dashboard offers and *why* each chart matters for the role it serves. For full controls, columns, and screenshots, use the detailed documentation set.

**Where to open:** **Reports → Dashboards** in BriteCore.

<div class="print-hint"><strong>Landscape PDF:</strong> <code>brew install weasyprint</code> then <code>./build-datasheet.sh</code> → <code>build/Dashboard-Datasheet.pdf</code>. No Homebrew? <code>pip3 install weasyprint</code> then <code>python3 datasheet-pdf.py</code>.</div>

---

## Claims Manager Dashboard

**Persona:** Claims leadership and operations. **One-line value:** See where loss concentrates, balance workload, and hold vendors accountable without spreadsheets.

### Tab: Summary

| Chart / table | Why it matters |
|----------------|----------------|
| **Losses incurred by category (main table)** | Answers where loss is coming from by category, line, and policy type in one sortable view. Use it to allocate adjusters, spot trends, and brief leadership with numbers everyone can follow. |
| **Top 10 agencies by gross losses paid** | Surfaces which agencies drive the most paid loss so you can target reviews, training, or conversations with underwriting and distribution. Drill-down supports root-cause follow-up. |
| **Map of gross losses incurred** | Shows geographic concentration of loss for cat planning, staffing, and vendor placement. Essential when you need to explain *where* loss is hitting, not just how much. |
| **Top 10 claims counts (by insured)** | Highlights high-frequency claimants for fraud or severity review and helps explain frequency drivers to leadership. |
| **Top 10 total gross losses paid (by insured)** | Surfaces largest paid-loss insureds for large-loss and reserve reviews. Prioritizes who needs senior attention first. |
| **Loss triangle / development (where shown)** | Supports reserve and development conversations by showing how losses emerge over time. Helps validate reserving and reporting narratives. |

### Tab: Detail

| Chart / table | Why it matters |
|----------------|----------------|
| **Claim details (full table)** | One row per claim with reserves, payments, reinsurance, and assignment. Answers “what happened on this claim?” for audits, large-loss reviews, and leadership questions without jumping between screens. |

### Tab: Contractor tracking

| Chart / table | Why it matters |
|----------------|----------------|
| **Contractor tracking (full table)** | Ties contractors, attorneys, and public adjusters to claim financials. Lets you manage vendor exposure, control leakage, and report on outside-rep patterns the carrier cares about. |

---

## CEO Dashboard

**Persona:** Executive leadership. **One-line value:** Board-ready profitability, retention, and momentum without waiting for quarter-end reports.

### Tab: Profitability

| Chart / table | Why it matters |
|----------------|----------------|
| **Direct loss ratio year-over-year comparison (KPI)** | Shows whether underwriting and pricing are improving or slipping year over year. Owns the profitability narrative for the board in a single comparison. |
| **Year-to-date loss ratio (KPI)** | The direct answer to “How are we doing against target?” Pairs current performance with change vs. prior period for investor-style discussions. |
| **Direct loss ratio by policy type** | Reveals which products beat or miss target so you can direct strategy—lean in, reprice, or tighten guidelines—with specificity. |
| **Loss ratio by area (map)** | Geographic view of where you’re winning or losing on ratio. Supports territory, distribution, and cat strategy in one visual. |
| **Agency profitability (table)** | Loss paid and incurred by agency. Makes partner and incentive conversations data-driven instead of anecdotal. |
| **Loss ratio by county / by zip (tables)** | Finer geography for pricing, underwriting, or marketing focus when state- or region-level views aren’t enough. |

### Tab: Retention

| Chart / table | Why it matters |
|----------------|----------------|
| **Retention rate (gauge)** | Single metric for “Are we keeping the book?”—core to growth and stability messaging for board and investors. |
| **In-force change rate (gauge)** | Net story of issues, cancellations, and reinstatements so you can speak to whether the book is growing or shrinking. |
| **Summary by line of business (table)** | Which lines retain vs. churn. Aligns strategy and resources with where the book is actually moving. |
| **Count of policy changes (bar chart)** | Plain-language story of issued, canceled, retained, and reinstated counts in the period. |
| **Retention rate by county / Issued rate by county (maps)** | Where you keep business vs. where new business lands geographically. Informs territory investment and weak-market fixes. |
| **Detail data table (policy-level)** | Drill-down proof for retention or issuance stories—policies, agencies, and premium movement when someone asks “show me.” |
| **In-force change by county / Premium change by line (bars)** | County-level book movement and line-level premium impact tie retention to revenue. |

### Tab: Current events (30-day)

| Chart / table | Why it matters |
|----------------|----------------|
| **30-day policies quoted vs. issued** | Conversion by line before it shows up in quarterly results. Surfaces funnel leaks early for underwriting and distribution. |
| **Quote-to-issue ratio (gauge)** | One number for quote conversion; filterable by agency to hold partners accountable. |
| **30-day change in in-force premium** | Recent premium momentum by line so you act on trends now, not after month-end. |
| **30-day policies issued, canceled, reinstated** | Current book-movement story in counts—address cancellations or celebrate issuance while it’s fresh. |
| **30-day premiums issued, canceled, reinstated** | Same story in dollars so revenue impact is obvious for leadership updates. |

### Tab: Agency profile

| Chart / table | Why it matters |
|----------------|----------------|
| **Change in-force premium by line** | Agency-scoped premium change by product line. Backs partner reviews and incentive discussions with facts. |
| **30-day policies / premiums issued, canceled, reinstated** | Agency-level version of Current Events—praise, coach, or intervene with data for that partner. |
| **Policies canceled / reinstated (past 30 days)** | Which policies left or returned so you can discuss price, service, or non-pay with the agency. |
| **Policies pending cancellation** | Early warning on at-risk premium before cancellations hit results. |
| **Policies issued past 30 days (table)** | Proof of what the agency is writing—recognition for producers and evidence for carrier reporting. |
| **30-day new losses incurred (table)** | New loss activity tied to that agency for informed talks with underwriting and claims. |

---

## Agency Principal Dashboard

**Persona:** Agency principal / owner. **One-line value:** Run the agency like a business—commissions, production, and receivables in one place.

### Tab: Summary

| Chart / table | Why it matters |
|----------------|----------------|
| **Commission paid YTD** | Instant answer to “What have we earned this year?” for planning and cash expectations. |
| **Commission paid over time** | Year vs. prior year and change—spot improvement or decline before year-end. |
| **3-year M2M policy data (table)** | Month-by-month book and premium movement. Explains seasonality and supports carrier conversations. |
| **3-year M2M loss data (table)** | Loss and loss ratio by month—links production to combined-ratio story with the carrier. |
| **3-year Y2Y policy / loss data (tables)** | Annual lens for growth planning and year-over-year reviews with carriers. |

### Tab: Commissions

| Chart / table | Why it matters |
|----------------|----------------|
| **Total commissions by line of business (pie)** | Which lines drive commission income so incentives align with growth priorities. |
| **Top 10 agents by commission (bar)** | Recognize top producers and identify who needs coaching—fair, visible, exportable. |
| **Commission details (table)** | Row-level audit trail for payroll, carrier reporting, and producer disputes. |

### Tab: Production

| Chart / table | Why it matters |
|----------------|----------------|
| **Quoting activities by agency (table)** | Funnel counts (started through issued/canceled) so you fix bottlenecks and grow issued business. |
| **Quote conversion by agency (table)** | Who converts quotes to policies—target training and investment where conversion pays off. |
| **M2M in-force count and premium by agency** | Book growth by agency and month vs. targets and carrier expectations. |
| **Quote status by zip code (table)** | Geographic concentration of quote activity for marketing and producer deployment. |

### Tab: Payments due

| Chart / table | Why it matters |
|----------------|----------------|
| **Payment due status (bar chart)** | Due within 30 days vs. overdue vs. not due—prioritize collections and protect cash flow. |
| **Policy billing status (bar chart)** | How many accounts are paid, due, to-be-billed, or cancelled—focus effort on the right receivables. |
| **Line of business (bar chart)** | Which lines drive receivables exposure so collections match where the dollars are. |
| **Policies with current payments due (table)** | Action list: who owes what, when, and how much—day-to-day agency collections. |

---

## CFO Dashboard

**Persona:** Finance leadership. **One-line value:** Transactions, cash, payments, and policy changes for forecast, reconciliation, and close.

### Tab: Policy transactions

| Chart / table | Why it matters |
|----------------|----------------|
| **Processed transactions by LOB / policy type (pivot table)** | Premium and count by new business, endorsements, and cancellations. Reconciles written premium and explains revenue movement. |
| **New business premium by month (bar chart)** | Top-line trend by month and line for forecasting and board or auditor narrative. |
| **Total premium-bearing transactions (bar chart)** | One-period view of what moved premium—complements the detail table for variance explanation. |

### Tab: Policy transaction details

| Chart / table | Why it matters |
|----------------|----------------|
| **Policy transaction details (table)** | Row-level audit trail for every transaction—verification, audit support, and billing reconciliation. |

### Tab: Cash summary

| Chart / table | Why it matters |
|----------------|----------------|
| **Payment amount by month (line)** | Cash-in trend for funding plans, bank matching, and leadership cash commentary. |
| **Losses incurred (table)** | Loss by category and line for reserve context and alignment with claims. |
| **Top 10 agencies by payment amount** | Which channels bring the most cash in—forecasting and reconciliation by distribution. |
| **Top 10 agencies by losses paid** | Loss payout by agency—ties cash out to partners for loss-funding discussions. |
| **Gross incurred losses on map** | Geographic loss concentration for cat and reserve conversations. |

### Tab: Cash details

| Chart / table | Why it matters |
|----------------|----------------|
| **Payment details (table)** | Payments tied to policy, channel, and status—fine-grained cash reconciliation. |
| **Losses details (table)** | Claim-level loss with category and geography—variance and audit support. |

### Tab: Payments

| Chart / table | Why it matters |
|----------------|----------------|
| **Payments hierarchical (table)** | Revenue mix by agency, line, and payment method—channel cost planning and “how we collect premium” story. |

### Tab: Policies changes

| Chart / table | Why it matters |
|----------------|----------------|
| **Policies changes (table)** | Every status and premium change by policy—month-end close, in-force reconciliation, and auditor walkthroughs. |

---

## Underwriting Manager Dashboard

**Persona:** Underwriting leadership. **One-line value:** Book composition, loss concentration, and evidence for guidelines and pricing.

### Tab: Policy and premium information

| Chart / table | Why it matters |
|----------------|----------------|
| **Policy count by LOB / policy type** | How the book is built—spot concentration and capacity issues before they hurt results. |
| **Premium by LOB / policy type** | Where premium and risk sit—align underwriting focus with dollars, not just policy counts. |
| **Claims count by contact (bar chart)** | High-frequency insureds for guideline, pricing, or non-renewal decisions. |
| **Repeat offenders in time (line chart)** | Loss history over time for selected insureds—defensible non-renewal and rate actions. |
| **Loss ratio by zip code (map)** | Worst-performing geographies for territory rules and pricing overlays. |
| **Detail table (by zip)** | Policies, agencies, and underwriters in a selected zip—actionable follow-up in hot spots. |

### Tab: Claim information

| Chart / table | Why it matters |
|----------------|----------------|
| **Claims details by LOB / policy type YTD (table)** | Paid, incurred, LAE, and loss ratio by product—evidence for guideline and pricing changes with claims. |
| **Claims details by agency YTD (table)** | Same metrics by agency—see which partners drive loss experience and align incentives. |

### Tab: Claims changes

| Chart / table | Why it matters |
|----------------|----------------|
| **Claims changes (tab)** | Tracks how claims and reserves move over time—connect underwriting actions to loss development and support leadership explanations. *(Visuals: see product UI; full chart list in progress in detailed doc.)* |

---

## Full documentation

- **Index & chart options:** [dashboards.md](dashboards.md)  
- **Deep dives:** Claims Manager, CEO, Agency Principal, CFO, Underwriting Manager dashboard `.md` files in this folder.

*Dashboard Datasheet — BriteCore RealTime Dashboards. Condensed for CSM and customer enablement.*
