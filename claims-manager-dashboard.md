# Claims Manager Dashboard

**Location:** Reports → Dashboards → **Claims Manager** (selector: Claims Manager, CEO, Agency Principal, CFO, Underwriting Manager)

**URL (product demo):** `https://yoursitename.britecore.com/britecore/reports/analytic_dashboards`

The Claims Manager dashboard gives a high-level view of claims performance and losses. It has three tabs: **Summary**, **Detail**, and **Contractor Tracking**. On every chart, **filtering**, **sorting**, **export to CSV or Excel**, and **expand to full screen** are available—see [Chart options (all dashboards)](dashboards.md#chart-options-all-dashboards) in the main doc.

**Why it matters for you:** Run a tighter claims operation without digging through spreadsheets. See where losses concentrate so you can focus resources and report up with confidence, balance adjuster workloads, and hold agencies and vendors accountable—all from one place.

---

## Summary tab

**Why this tab helps:** See where losses are coming from by category, line, and agency so you can spot trends, allocate resources, and tell a clear story to leadership. The maps and top-10 views make it easy to see geographic and agency hotspots at a glance.

The Summary tab focuses on losses by category, agency performance, and claim counts.

### Controls

- **Date filter:** Incurred Date (configurable)
- **Start date / End date:** Define the date range for all charts and the table.
- **Agency Name:** Filter by agency (e.g. “All” or a specific agency).
- **Adjuster Name:** Filter by adjuster (e.g. “All” or a specific adjuster).

Additional toolbar actions: refresh, undo, redo, and a settings (gear) icon for dashboard options.

### Main table: Losses Incurred by Category for Specified Incurred Dates

A detailed table of losses with drill-down by:

- **Category** (e.g. Gross Loss)
- **Sub Category** (e.g. Loss, Salvage, Subrogation)
- **Line of Business** (e.g. Auto Business, Commercial Businessowners, Commercial General Liability, Personal Homeowners)
- **Policy Type** (e.g. Personal Auto)

**Columns:**

| Column             | Description                                      |
|--------------------|--------------------------------------------------|
| Category           | Top-level loss category                          |
| Sub Category       | Loss, Salvage, or Subrogation                    |
| Line of Business   | Product line                                    |
| Policy Type        | Type of policy                                  |
| Change in Reserve  | Change in reserve for the period                 |
| Paid Amount        | Amount paid                                      |
| Incurred Amount    | Total incurred                                   |
| Claims             | Number of claims                                 |

Subtotals appear by line of business; a **Total Net** row summarizes Change in Reserve, Paid Amount, Incurred Amount, and Claims. The table supports layout and filter options in the header.

![Claims Manager Summary – Losses incurred table](assets/Claims%20Manager%20Summary%20-%20%20Losses%20Incurred%20.png)

### Charts (below the table)

1. **Top 10 Agencies by Gross Losses Paid**  
   Vertical bar chart of agencies by paid gross losses. Supports drill down.

2. **Map of Gross Losses Incurred**  
   Map chart for geographic view of losses. Requires at least one geospatial field (Country, State, County, City, or Postcode) or latitude and longitude to display points.

3. **Top 10 Claims Counts**  
   Horizontal bar chart of insureds by number of claims. Supports drill down.

4. **Top 10 Total Gross Losses Paid**  
   Horizontal bar chart of insureds by total gross losses paid. Supports drill down.

![Claims Manager Summary – Middle section (charts and map)](assets/Claims%20Manager%20Summary%20Tab%20-%20Middle%20section.png)

![Claims Manager Summary – Loss triangle](assets/Claims%20Manager%20Summary%20Tab%20-%20Loss%20Triangle.png)

---

## Detail tab

**Why this tab helps:** Drill into any claim for reserves, payments, and reinsurance in one view. Perfect for large-loss reviews, reserve adequacy checks, and answering “what happened on this claim?” without opening multiple screens. Export to CSV for deeper analysis or audits.

The Detail tab shows **claim-level data** in a single table: one row per claim, with identifiers, dates, assignment, policy/location, reinsurance, and financial breakdowns. The same dashboard controls (date filter, start/end date, agency, adjuster) apply. Data can be exported (e.g. CSV) for analysis.

![Claims Manager – Detail tab](assets/Claims%20Manager%20-%20Detail%20Tab.png)

### Table: Claim details (columns)

**Identification & link**

| Column        | Description |
|---------------|-------------|
| Claim Number  | Unique claim identifier (e.g. C-2025-94). |
| Claim Link    | URL to open the claim in BriteCore (claim information page). |

**Dates**

| Column         | Description |
|----------------|-------------|
| Loss Date      | Date of loss. |
| Reported Date  | Date the claim was reported. |
| Last Reserve Change | Date of the most recent reserve change. |

**Status & cause**

| Column        | Description |
|---------------|-------------|
| Claim Status  | Workflow status (e.g. Open Standard, Pending Submitted, Reopened Salvage, Pending Unsubmitted). |
| Cause of Loss | Cause(s) of loss (e.g. Hail, Wind, Fire, Bodily Injury Liability). |

**Assignment & policy**

| Column           | Description |
|------------------|-------------|
| Agency Name      | Writing agency. |
| Adjuster Name    | Assigned adjuster. |
| Underwriter Name | Underwriter. |
| Insured Name     | Named insured. |
| Policy Number    | Policy identifier. |
| State            | Policy/claim state. |
| Line of Business | Product line (e.g. Personal Homeowners, Auto Business, Commercial General Liability). |
| Policy Type      | Policy form/type (e.g. Homeowners Form 2, Personal Auto). |
| Cat Number       | Catastrophe number, if applicable. |
| Zip Code         | Location zip code. |

**Reinsurance**

| Column                     | Description |
|----------------------------|-------------|
| Reinsurance Contract Number | Reinsurance contract reference. |
| Reinsurer Name             | Reinsurer (e.g. Guy Carpenter). |

**Financial totals**

| Column               | Description |
|----------------------|-------------|
| Total Paid           | Total amount paid. |
| Reinsurance Recovery | Amount recovered from reinsurance. |
| Net Paid              | Total paid minus reinsurance recovery. |
| Total Incurred       | Total incurred (reserves + payments). |
| Reinsurance Incurred | Incurred ceded to reinsurance. |
| Net Incurred         | Total incurred minus reinsurance incurred. |

**Loss**

| Column          | Description |
|-----------------|-------------|
| Loss Reserved   | Loss reserve. |
| Loss Paid       | Loss paid to date. |
| Loss Incurred   | Loss incurred (reserve + paid). |

**Adjusting expense**

| Column             | Description |
|--------------------|-------------|
| Adjusting Reserved | Adjusting expense reserve. |
| Adjusting Paid     | Adjusting expense paid. |
| Adjusting Incurred | Adjusting expense incurred. |

**Legal**

| Column          | Description |
|-----------------|-------------|
| Legal Reserved  | Legal reserve. |
| Legal Paid      | Legal paid. |
| Legal Incurred  | Legal incurred. |

**Subrogation**

| Column                 | Description |
|------------------------|-------------|
| Subrogation Reserved   | Subrogation reserve. |
| Subrogation Received   | Subrogation recovered. |
| Subrogation Incurred   | Subrogation incurred (often negative as recovery). |

**Salvage**

| Column             | Description |
|--------------------|-------------|
| Salvage Reserved   | Salvage reserve. |
| Salvage Received   | Salvage recovered. |
| Salvage Incurred   | Salvage incurred (often negative as recovery). |

**Reinsurance**

| Column               | Description |
|----------------------|-------------|
| Reinsurance Reserved | Reinsurance reserve. |


---

## Contractor Tracking tab

**Why this tab helps:** See which claims use contractors, attorneys, or public adjusters—and how that ties to paid and incurred amounts. Use it to manage vendor assignments, spot patterns in outside rep usage, and keep contractor and legal spend aligned with outcomes.  Some carriers mark contractors that they need to either avoid for future contracts or study their work more closely.

The Contractor Tracking tab shows **claim-level rows** keyed by **contractor and other reps**: one row per claim with contractor (when assigned), adjuster, attorney, and public adjuster, plus policy type, last reserve change, and the same financial breakdown as the Detail tab. Use it to see which claims have contractors (or attorneys/public adjusters) and their financials. The same dashboard controls (date filter, start/end date, agency, adjuster) apply. Data can be exported (e.g. CSV).

![Claims Manager – Contractor Tracking](assets/Claims%20Manager%20Contractor%20Tracking%20Diagram.png)

### Table: Contractor tracking (columns)

**Contractor & link**

| Column          | Description |
|-----------------|-------------|
| Contractor Name | Name of the contractor assigned to the claim (blank if none). |
| Contractor Link | URL to the contractor’s contact record in BriteCore; when no contractor, the link has no `id`. |

**Claim & assignment**

| Column               | Description |
|----------------------|-------------|
| Claim Number         | Unique claim identifier. |
| Adjuster Name        | Assigned adjuster. |
| Attorney Name        | Attorney on the claim, if any. |
| Public Adjuster Name | Public adjuster on the claim, if any. |

**Policy & date**

| Column             | Description |
|--------------------|-------------|
| Policy Type        | Policy form/type (e.g. Homeowners Form 2, Personal Auto). |
| Last Reserve Change | Date of the most recent reserve change. |

**Financial (same structure as Detail tab)**

| Column               | Description |
|----------------------|-------------|
| Total Paid           | Total amount paid. |
| Reinsurance Recovery | Amount recovered from reinsurance. |
| Net Paid             | Total paid minus reinsurance recovery. |
| Total Incurred       | Total incurred. |
| Reinsurance Incurred | Incurred ceded to reinsurance. |
| Net Incurred         | Total incurred minus reinsurance incurred. |
| Loss Reserved / Loss Paid / Loss Incurred | Loss reserve and payments. |
| Adjusting Reserved / Adjusting Paid / Adjusting Incurred | Adjusting expense. |
| Legal Reserved / Legal Paid / Legal Incurred | Legal. |
| Subrogation Reserved / Subrogation Received / Subrogation Incurred | Subrogation. |
| Salvage Reserved / Salvage Received / Salvage Incurred | Salvage. |
| Reinsurance Reserved | Reinsurance reserve. |

