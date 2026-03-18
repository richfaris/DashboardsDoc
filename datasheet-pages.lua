-- Cover → each dashboard (h2 block) → footer ("Full documentation")

local function text(h)
  return pandoc.utils.stringify(h):lower()
end

function Pandoc(doc)
  local cover, sheets, footer = {}, {}, {}
  local mode = "cover"
  local current_sheet = nil

  local function flush_sheet()
    if current_sheet and #current_sheet > 0 then
      sheets[#sheets + 1] = current_sheet
      current_sheet = nil
    end
  end

  for _, blk in ipairs(doc.blocks) do
    if blk.t == "Header" and blk.level == 2 then
      if text(blk):find("full documentation") then
        flush_sheet()
        mode = "footer"
        footer[#footer + 1] = blk
      else
        flush_sheet()
        mode = "sheet"
        current_sheet = { blk }
      end
    elseif mode == "cover" then
      cover[#cover + 1] = blk
    elseif mode == "sheet" and current_sheet then
      current_sheet[#current_sheet + 1] = blk
    else
      footer[#footer + 1] = blk
    end
  end
  flush_sheet()

  local out = {}
  if #cover > 0 then
    out[#out + 1] = pandoc.Div(cover, pandoc.Attr("", { "datasheet-cover" }, {}))
  end
  for i, blocks in ipairs(sheets) do
    out[#out + 1] = pandoc.Div(blocks, pandoc.Attr("", { "dashboard-sheet", "dashboard-" .. i }, {}))
  end
  if #footer > 0 then
    out[#out + 1] = pandoc.Div(footer, pandoc.Attr("", { "datasheet-footer" }, {}))
  end
  return pandoc.Pandoc(out, doc.meta)
end
