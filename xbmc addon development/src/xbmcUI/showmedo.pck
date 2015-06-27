["big_categories", {"languages": {"params": {"url": "http://showmedo.com/", "regexp": "<li class=\"[^\"]+\">(?:\\W+<span class=\"spacer\">-</span>)*\\W+<a href=\"(?P<url>[^\"]+)\">(?P<label>[^<]+)</a>", "compflags": "re.DOTALL|re.IGNORECASE"}, "type": "thread", "up": "series", "name": "languages"}, "learningpathshead": {"name": "learningpathshead", "up": "learningpath", "down": "lista_series_learningpathshead_lnk", "sibling": "learningpathshead_learningpath_lnk", "params": {"url": "http://showmedo.com/learningpaths/19/view", "regexp": "(?#<SPAN>)<a class=\"toc-backref\" href=\"#id[^12][\\d]*\">(?P<label>[^<]+).+?(?:<div class=\"section\"|<div class=\"network_LP\">)", "compflags": "re.DOTALL|re.IGNORECASE", "contextmenus": ",", "urlout": "/learningpaths/"}, "type": "thread"}, "learningpathshead_lista_series_lnk": {"type": "link", "params": {"source": true}, "name": "learningpathshead", "up": "lista_series"}, "lista_incomingvideos": {"name": "lista_incomingvideos", "up": "video_series", "down": "big_categories_lista_incomingvideos_lnk", "sibling": "learningpath", "params": {"url": "http://showmedo.com/", "compflags": "re.DOTALL|re.IGNORECASE", "regexp": "<a href=\"(?P<url>[^\"]+)\">\\W+<img alt=\"(?P<label>[^\"]+)\" src=\"(?P<iconImage>[^\"]+)\".+?/>", "contextmenus": ",", "option2": "3", "option1": "2"}, "type": "thread"}, "series": {"name": "series", "up": "lista_series", "down": "video_tutorial", "sibling": "media_lista_series_lnk", "params": {"url": "http://showmedo.com/videotutorials/python", "regexp": "(?#<SPAN>)<h3>(?P<label>.+?)(?: tagged with .+?)*</h3>(</div>\\W+<ul>.+?</ul>|<table class=\"tablesorter\">.+?</table>)", "compflags": "re.DOTALL|re.IGNORECASE", "contextmenus": ","}, "type": "thread"}, "learningpathshead_learningpath_lnk": {"type": "link", "params": {"source": true}, "name": "learningpathshead", "up": "learningpath"}, "big_categories": {"down": "lista_incomingvideos_big_categories_lnk", "type": "thread", "params": {"url": "http://showmedo.com/", "plainnode": 1, "discrim": "option", "compflags": "re.DOTALL|re.IGNORECASE", "regexp": "(?#<SPAN>)<span><h1>(?P<label>[^S][^<]+)</h1></span>.+?<div style=\"clear:both; font-size:0;height:1px\">", "contextmenus": ","}, "name": "big_categories", "up": "video_tutorial"}, "rootmenu": {"params": {}, "type": "list", "name": "rootmenu"}, "lista_incomingvideos_big_categories_lnk": {"type": "link", "params": {"source": true}, "name": "lista_incomingvideos", "up": "big_categories"}, "lista_series_media_lnk": {"type": "link", "params": {}, "name": "lista_series", "up": "media"}, "media": {"down": "video_series", "params": {"url": "http://showmedo.com/videotutorials/video?name=960000&fromSeriesID=96", "regexp": "quot;(?P<videoUrl>http://videos1.+?)&", "compflags": "re.DOTALL", "contextmenus": ",", "urlout": "/video?name"}, "type": "thread", "name": "media"}, "big_categories_lista_incomingvideos_lnk": {"type": "link", "params": {}, "name": "big_categories", "up": "lista_incomingvideos"}, "learningpath_learningpathshead_lnk": {"type": "link", "params": {}, "name": "learningpath", "up": "learningpathshead"}, "video_series": {"name": "video_series", "up": "media", "down": "lista_series", "sibling": "lista_series_media_lnk", "params": {"url": "http://showmedo.com/videotutorials/series?name=DKKuA1cT6", "regexp": "<div class=\"thumbnail\">.+?<img width=\"120\" height=\"90\" alt=\"\" src=\"(?P<thumbnailImage>[^\"]+)\" />.+?<h3><a href=\"(?P<url>[^\"]+)\">(?P<label>[^<]+)</a>", "compflags": "re.DOTALL"}, "type": "thread"}, "lista_series_learningpathshead_lnk": {"up": "learningpathshead", "sibling": "learningpath_learningpathshead_lnk", "params": {}, "name": "lista_series", "type": "link"}, "lista_series": {"name": "lista_series", "up": "video_series", "down": "series", "sibling": "lista_incomingvideos", "params": {"url": "http://showmedo.com/videotutorials/python", "regexp": "<a href=\"(?P<url>[^\"]+)\" (?:title=\"\" )*name=\"[^\"]+\">(?P<label>[^<]+)(?:</a>|<small>)", "compflags": "re.DOTALL|re.IGNORECASE", "contextmenus": ",", "discrim": "urlout"}, "type": "thread"}, "video_tutorial": {"name": "video_tutorial", "up": "series", "down": "big_categories", "sibling": "languages", "params": {"url": "http://showmedo.com/", "regexp": "<img src=\"(?P<iconImage>[^\"]+)\" />.+?<a href=\"(?P<url>[^\"]+)\">(?P<label>[^<]+)</a>", "compflags": "re.DOTALL|re.IGNORECASE", "contextmenus": ",", "discrim": "option"}, "type": "thread"}, "media_lista_series_lnk": {"sibling": "learningpathshead_lista_series_lnk", "type": "link", "up": "lista_series", "name": "media", "params": {"source": true}}, "learningpath": {"down": "learningpathshead", "type": "thread", "params": {"url": "http://showmedo.com/learningpaths/19/view", "regexp": "<a href=\"(?P<url>[^\"]+)\"><img width=\"120\" height=\"90\" alt=\"\" src=\"(?P<iconImage>[^\"]+)\" />.+?<a href=\"(?:http://showmedo.com)*/(?P<label1>[^/]+)/[^\"]+\">(?P<label>.+?)</a>", "compflags": "re.DOTALL|re.IGNORECASE", "contextmenus": ",", "discrim": "urlout"}, "name": "learningpath", "up": "video_series"}}]
{"addon_id": "plugin.video.showmedoide", "addon_icon": "C:/Eclipse/Workspace/xbmc addon development/src/xbmcUI/images/showmedo_logo_long.png", "addon_name": "showMeDoIDE", "addon_fanart": "C:/Eclipse/Workspace/xbmc addon development/src/xbmcUI/images/showMeDo_fanArt.jpg"}
{"_codeframe_": "<header>\n<rootmenu>\n\n<video_series>\n\n<media>\n\nbase_url = sys.argv[0]\naddon_handle = int(sys.argv[1])\nargs = urlparse.parse_qs(sys.argv[2][1:])\nxbmcplugin.setContent(addon_handle, 'movies')\n\nmenu = args.get('menu', None)\n\nmenuFunc = menu[0] if menu else 'rootmenu'\nmenuItems = eval(menuFunc + '()')\nif menuItems: makeXbmcMenu(addon_handle, base_url, menuItems)\n"}