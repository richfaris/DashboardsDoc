-- Lua filter for pandoc: set table column widths in DOCX to reduce wrapping.
-- Use with: pandoc ... -L docx-table-widths.lua
-- Optional: add --reference-doc=reference.docx with a "Table" style at 9pt for smaller table text.

local function set_col_widths(tbl, widths)
  if not tbl.colspecs or #tbl.colspecs == 0 then return tbl end
  for i, col in ipairs(tbl.colspecs) do
    local w = widths[i]
    if w and w > 0 and w <= 1 then
      if #col == 1 then
        tbl.colspecs[i] = { col[1], w }
      else
        tbl.colspecs[i][2] = w
      end
    end
  end
  return tbl
end

function Table(tbl)
  local n = #tbl.colspecs
  -- Two-column tables (Column | Description): narrow first, wide second
  if n == 2 then
    return set_col_widths(tbl, { 0.22, 0.78 })
  end
  -- Dashboard index: 5 columns - give Purpose, Why it helps, and link column room
  if n == 5 then
    return set_col_widths(tbl, { 0.14, 0.16, 0.28, 0.18, 0.24 })
  end
  -- Default: equal-ish widths for other tables (e.g. 3+ column definition tables)
  if n >= 3 and n <= 6 then
    local w = 1.0 / n
    local widths = {}
    for i = 1, n do widths[i] = w end
    return set_col_widths(tbl, widths)
  end
  return tbl
end
