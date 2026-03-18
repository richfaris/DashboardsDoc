# BriteCore RealTime Dashboards

**How to use this document:** The sections below give a shared overview (why these dashboards exist, [chart options](#chart-options-all-dashboards), and an [index](#dashboard-index)). After that, each dashboard has its own chapter with tabs, charts, and column definitions. Open dashboards in BriteCore from **Reports** → **Dashboards** and pick the role from the selector at the top.

BriteCore RealTime Dashboards are role-based analytic views. Each dashboard provides filters, tables, and visuals for a specific audience. Data reflects the selected date ranges and filters.

**CSM / customer quick reference:** [Dashboard Datasheet](dashboard-datasheet.md) — one-page summary of every tab and chart with why it matters per persona. Generate styled HTML: `./build-datasheet.sh` → `build/Dashboard-Datasheet.html`.

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

| Option | Description |
|--------|-------------|
| **Filter** | Filter the data shown in that chart (e.g. by field, value, or date). Filtering is applied to the current visual; some dashboards also let filters from one chart affect others. |
| **Sort** | Sort the data in the chart (e.g. by column, ascending/descending). On tables, sort is often available from the column header. |
| **Export to CSV or Excel** | Export the data behind the chart to a file. Choose **CSV** or **Excel** (.xlsx) from the chart menu. The export includes the data currently displayed (or available) for that visual. Notifications such as "Working on your CSV file" / "Your CSV is ready" may appear. |
| **Expand to full screen** | Expand the chart to full screen for a larger view. Use the same control again (or Escape) to return to the dashboard layout. |

These behaviors are consistent across all BriteCore RealTime Dashboards: (filter, sort, export, and visual-level options from the chart menu). Individual dashboard and tab docs below describe what each chart shows; filtering, sorting, export, and full-screen are available on each unless the UI indicates otherwise.

------------------------------------------------------------------------

## Dashboard index

| Dashboard | Purpose | Why it helps | Tabs | Full documentation |
|-----------|---------|--------------|------|--------------------|
| **Claims Manager** | Claims performance and losses (summary, detail, contractor tracking) | See where losses concentrate, balance workloads, and hold vendors accountable. | Summary, Detail, Contractor Tracking | [Claims Manager](#claims-manager-dashboard) |
| **CEO** | Executive view: profitability, retention, current events, agency profile | Answer the board and act on what's working—profitability, retention, and agency performance in one view. | Profitability, Retention, Current Events, Agency Profile | [CEO](#ceo-dashboard) |
| **Agency Principal** | Agency-focused: commissions, production, payments due, summary metrics | Run the agency like a business: commissions, production, and receivables in one place. | Summary, Commissions, Production, Payments Due | [Agency Principal](#agency-principal-dashboard) |
| **CFO** | Policy transactions, cash, payments, and policy changes | Own the numbers for forecasting, reconciliation, and month-end close. | Policy Transactions, Policy Transaction Details, Cash Summary, Cash Details, Payments, Policies Changes | [CFO](#cfo-dashboard) |
| **Underwriting Manager** | Policy/premium info, claim information, claims changes | Balance growth and risk with clear views of book composition and loss drivers. | Policy and Premium Information, Claim Information, Claims Changes | [Underwriting Manager](#underwriting-manager-dashboard) |

---
