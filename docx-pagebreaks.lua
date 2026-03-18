-- Insert Word page break before each dashboard chapter (level-1 heading).
-- Combined doc order: dashboards.md intro, then each * Dashboard.

local DASH = {
  ["claims manager dashboard"] = true,
  ["ceo dashboard"] = true,
  ["agency principal dashboard"] = true,
  ["cfo dashboard"] = true,
  ["underwriting manager dashboard"] = true,
}

local PAGE =
  '<w:p xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"><w:r><w:br w:type="page"/></w:r></w:p>'

function Pandoc(doc)
  local out = {}
  for _, b in ipairs(doc.blocks) do
    if b.t == "Header" and b.level == 1 then
      local key = pandoc.utils.stringify(b):lower()
      if DASH[key] then
        out[#out + 1] = pandoc.RawBlock("openxml", PAGE)
      end
    end
    out[#out + 1] = b
  end
  return pandoc.Pandoc(out, doc.meta)
end
