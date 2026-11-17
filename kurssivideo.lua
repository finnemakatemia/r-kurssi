-- Videon upotus tunnisteella: {{< kurssivideo paiva1-tyoymparisto >}}
-- Osoitteet ovat tiedostossa _videot.yml. Tyhjä arvo näyttää "tulossa"-rivin.
-- Arvoksi käy YouTube-tunniste, videon osoite tai upotuskoodin src-osoite.

local function tunniste(arvo)
  return arvo:match("embed/([%w_-]+)")
      or arvo:match("[?&]v=([%w_-]+)")
      or arvo:match("youtu%.be/([%w_-]+)")
      or arvo:match("^([%w_-]+)$")
end

return {
  ["kurssivideo"] = function(args, kwargs, meta)
    local avain = pandoc.utils.stringify(args[1])
    local arvo = ""
    if meta.videot and meta.videot[avain] then
      arvo = pandoc.utils.stringify(meta.videot[avain])
    end
    local id = tunniste(arvo)
    if not id then
      return pandoc.RawBlock("html",
        '<div class="video-tulossa">Luentotallenne lisätään tähän, kun se on julkaistu.</div>')
    end
    return pandoc.RawBlock("html",
      '<div class="kurssivideo"><iframe src="https://www.youtube-nocookie.com/embed/' .. id ..
      '" title="Kurssivideo" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" ' ..
      'allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" ' ..
      'allowfullscreen></iframe></div>')
  end
}
