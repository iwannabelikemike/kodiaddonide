["pagediscrim", {"pwire_movies": {"name": "pwire_movies", "up": "listadded", "down": "season_pwire_movies_lnk", "sibling": "pagediscrim", "params": {"icondefflag": 1, "url": "http://www.primewire.ag", "op_addonInfo1": "season<>tvshow*(?P<name>.+?) \\((?P<year>\\d+)\\)", "discrim": "urlin", "labeldefflag": 1, "compflags": "re.DOTALL", "nextregexp": "Get Next Page >>><-><a href=\"(?P<url>[^\"]+page[^\"]+)\">(?P<label>.+?)</a>", "headregexp": "Genre: <-><span>([^ ]+) [^>]+> <strong>[^<]+</strong></span>|<li><a href=\"(?P<url>[^\"]+genre=[^&\"]+)\">(?P<label>.+?)</a></li><=>Sort by: <-><span>[^>]+> <strong>([^<]+)</strong></span>|<li><a href=\"(?P<url>[^\"]+&*sort=[^\"]+)\">(?P<label>.+?)</a></li>", "regexp": "<div class=\"index_item index_item_ie\">\\s*?<a href=\"(?P<url>.+?)\" title=\"Watch (?P<label>.+?)\"><img src=\"(?P<iconImage>.+?)\" [^>]+>", "contextmenus": "Media Information,XBMC.Action(Info)", "op_addonInfo": "movie*(?P<name>.+?) \\((?P<year>\\d+)\\)"}, "type": "thread"}, "season_pwire_movies_lnk": {"sibling": "nav_tabs", "type": "link", "up": "pwire_movies", "params": {"source": true}, "name": "season"}, "playlist_list": {"name": "playlist_list", "up": "playlist_media", "down": "nav_tabs_playlist_list_lnk", "sibling": "season_playlist_media_lnk", "params": {"option": "3", "url": "http://www.primewire.ag/playlists.php?sort=hits", "compflags": "re.DOTALL|re.IGNORECASE", "headregexp": "Sort by <-><span class=\"index_show_by_selected\"><a [^>]+>(.+?)</a></span>|<span class=\"index_show_by_(?:not)*selected\"><a href=\"(?P<url>.+?)\">(?P<label>.+?)</a></span>", "regexp": "<td width=\"90\">.+?src=\"(?P<iconImage>[^\"]+)\".+?<strong><a href=\"(?P<url>.+?)\">(?P<label>.+?)</a>(?P<label1>.+?)</strong>", "contextmenus": ",", "nextregexp": "</span> <a href=\"(?P<url>.+?)\">(?P<label>.+?)<"}, "type": "thread"}, "buscar": {"params": {"url": "http://www.primewire.ag/?actor_name=woody+allen&sort=release", "regexp": "(?#<SEARCH>)http://www.primewire.ag/?<search>&sort=release", "searchkeys": "Title*search_keywords+Director*director+Starring*actor_name+Country*country", "compflags": "0", "contextmenus": ","}, "type": "thread", "up": "pwire_copy", "name": "Buscar"}, "season_pagediscrim_lnk": {"sibling": "pwire_copy", "type": "link", "up": "pagediscrim", "name": "season", "params": {"source": true}}, "season_playlist_media_lnk": {"params": {"source": true}, "type": "link", "name": "season", "up": "playlist_media"}, "media": {"down": "listadded", "type": "thread", "params": {"url": "http://www.primewire.ag/external.php?gd=1890549585&title=Donnie+Darko&url=aHR0cDovL3d3dy5wcm9tcHRmaWxlLmNvbS9sL0VFMjdCMUM0QTktREE5MEVGOTBCNg==&domain=cHJvbXB0ZmlsZS5jb20=&loggedin=0", "regexp": "<noframes>(?P<videourl>[^<]+)</noframes>", "compflags": "re.DOTALL", "enabled": false}, "name": "media"}, "pwire_copy": {"down": "buscar", "type": "thread", "params": {"": "", "icondefflag": 1, "url": "http://www.primewire.ag", "labeldefflag": 1, "compflags": "re.DOTALL", "regexp": "<div class=\"index_item index_item_ie\">\\s*?<a href=\"(?P<url>.+?)\" title=\"Watch (?P<label>.+?)\"><img src=\"(?P<iconImage>.+?)\" [^>]+>", "contextmenus": ",", "nextregexp": "</span> <a href=\"(?P<url>.+?)\">"}, "name": "pwire_copy", "up": "pagediscrim"}, "rootmenu": {"type": "list", "params": {"": "", "contextmenus": ",", "codenode": 0}, "name": "rootmenu"}, "season": {"down": "pwire_movies_season_lnk", "type": "thread", "params": {"url": "http://www.primewire.ag/watch-2727107-Revenge", "urlout": "/tv-", "urlin": "?tv", "compflags": "0", "regexp": "<h2>\\W+<a data-id=\"\\d+\" class=\"season-toggle\" href=\"(?P<url>.+?)\">&#9658; (?P<label>.+?)<span", "contextmenus": "Media Information,XBMC.Action(Info)", "urldata": "Season", "op_addonInfo": "season*Season (?P<season>\\d+)"}, "name": "season", "up": "episode"}, "playlist_list_nav_tabs_lnk": {"type": "link", "params": {"source": true}, "up": "nav_tabs", "name": "playlist_list"}, "nav_tabs_playlist_list_lnk": {"type": "link", "params": {}, "name": "nav_tabs", "up": "playlist_list"}, "pwire_movies_season_lnk": {"sibling": "playlist_media_season_lnk", "type": "link", "up": "season", "params": {}, "name": "pwire_movies"}, "pagediscrim": {"down": "season_pagediscrim_lnk", "params": {"url": "https://www.primewire.ag/watch-2747802-In-Search-of-Aliens-online-free", "regexp": "(?P<discrim>Season) \\d+", "compflags": "0", "contextmenus": ",", "discrim": "urldata"}, "type": "thread", "name": "pagediscrim", "up": "listadded"}, "nav_tabs": {"down": "playlist_list_nav_tabs_lnk", "type": "thread", "params": {"url": "http://www.primewire.ag/", "plainnode": 1, "discrim": "option", "compflags": "re.DOTALL|re.IGNORECASE", "regexp": "<li class=\"[un]*pressed\"><a href=\"(?P<url>[^\"]+)\" title=\"[WLP].+?\">(?P<label>.+?)</a></li>", "contextmenus": ","}, "name": "nav_tabs", "up": "pwire_movies"}, "listadded": {"down": "episode", "params": {"url": "http://www.primewire.ag/watch-2753133-Gore-Quebec", "regexp": "<span class=\"movie_version_link\">\\s*?<a href=\"(?P<url>[^\"]+?)\".+?writeln\\('(?P<label>.+?)'\\)", "compflags": "re.DOTALL|re.IGNORECASE"}, "type": "thread", "name": "listadded", "up": "media"}, "pagediscrim_season_lnk": {"type": "link", "params": {}, "name": "pagediscrim", "up": "season"}, "playlist_media": {"name": "playlist_media", "up": "listadded", "down": "playlist_list", "sibling": "pwire_movies", "params": {"icondefflag": 1, "url": "http://www.primewire.ag/playlists.php?id=41731", "op_addonInfo1": "season<>tvshow*(?P<name>.+?) \\( (?P<year>\\d+) \\)", "discrim": "urlout", "labeldefflag": 1, "urlin": "/tv-", "compflags": "re.DOTALL|re.IGNORECASE", "regexp": "<img src=\"(?P<iconImage>[^\"]+)\".+?<a href=\"(?P<url>[^\"]+)\">(?P<label>[^<]+)</a> (?P<label1>\\( [\\d]+ \\))", "contextmenus": "Media Information,XBMC.Action(Info)", "op_addonInfo": "movie*(?P<name>.+?) \\( (?P<year>\\d+) \\)"}, "type": "thread"}, "playlist_media_season_lnk": {"sibling": "pagediscrim_season_lnk", "type": "link", "up": "season", "name": "playlist_media", "params": {}}, "episode": {"name": "episode", "up": "listadded", "down": "season", "sibling": "playlist_media", "params": {"icondefflag": 1, "url": "http://www.primewire.ag/tv-2727107-Revenge/season-3", "labeldefflag": 1, "compflags": "re.DOTALL", "regexp": "<div class=\"tv_episode_item\"> <a href=\"(?P<url>.+?)\">(?P<label>E[0-9]+)\\W+?<span class=\"tv_episode_name\">(?P<label1>.+?)</span>", "contextmenus": "Media Information,XBMC.Action(Info)", "op_addonInfo": "episode*E(?P<episode>\\d+) .+?"}, "type": "thread"}}]
{"addon_id": "plugin.video.1channelide", "addon_requires": "xbmc.python,2.7.0,|script.module.urlresolver,2.4.0,|script.module.metahandler,2.7.0,|script.module.addon.common,2.0.0,|script.common.plugin.cache,2.5.5,", "addon_name": "1ChannelIDE", "addon_resources": "basicFunc.py,resources/lib/,True,basicFunc.py|CustomRegEx.py,resources/lib,True,CustomRegEx.py", "addon_fanart": "C:/Users/Alex Montes Barrios/git/addonDevelopment/xbmc addon development/src/xbmcUI/images/PrimeWirwFanart.jpg", "addon_icon": "C:/Users/Alex Montes Barrios/git/addonDevelopment/xbmc addon development/src/xbmcUI/images/PrimewireIcon.png"}
{"media": "def media():\n    import urlresolver\n    url = openUrl(args.get(\"url\")[0], validate = True)\n    if not url.startswith(\"http://www.primewire.ag\"):\n        regexp = r'http://(?P<videoHost>[^/]+)/(?P<videoId>[^.]+)'\n        match = re.search(regexp, url)\n        url = urlresolver.HostedMediaFile(host = match.group(\"videoHost\"), media_id = match.group(\"videoId\")).resolve()\n    else:\n        regexp = '<noframes>(?P<videourl>[^<]+)</noframes>'\n        compflags =re.DOTALL\n        url, data = openUrl(url)\n        subMenus = parseUrlContent(url, data, regexp, compflags )\n        videoUrl = subMenus[0][\"videourl\"]\n        url = urlresolver.HostedMediaFile(url = videoUrl).resolve()\n    li = xbmcgui.ListItem(path = url)\n    if args.get(\"icondef\", None): li.setThumbnailImage(args[\"icondef\"][0])\n    if args.get(\"labeldef\", None): li.setLabel(args[\"labeldef\"][0])\n    li.setProperty('IsPlayable', 'true')\n    li.setProperty('mimetype', 'video/x-msvideo')\n    return xbmcplugin.setResolvedUrl(handle=addon_handle,succeeded=True,listitem=li)\n", "_codeframe_": "<header>\n<rootmenu>\n\n\n<buscar>\n\n<pwire_copy>\n\n<pagediscrim>\n        \n\n# Deleted node playlist_sort\n\n<playlist_list>\n\n<playlist_media>\n\n<season>\n\n<episode>\n\n<nav_tabs>\n\n# Deleted node genre_list\n\n\n# Deleted node sort_list\n\n<pwire_movies>\n\n<listadded>\n\n<media>\n\n\nbase_url = sys.argv[0]\naddon_handle = int(sys.argv[1])\nargs = urlparse.parse_qs(sys.argv[2][1:])\nxbmcplugin.setContent(addon_handle, 'movies')\n\nmenu = args.get('menu', None)\n\nmenuFunc = menu[0] if menu else 'rootmenu'\nmenuItems = eval(menuFunc + '()')\nif menuItems: makeXbmcMenu(addon_handle, base_url, menuItems)\n"}
