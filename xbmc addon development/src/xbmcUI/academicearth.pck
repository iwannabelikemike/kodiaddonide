["courses", {"universities": {"sibling": "Courses", "type": "thread", "up": "courses", "name": "Universities", "params": {"url": "http://www.academicearth.org", "regexp": "menu-item-227[10].+?\"><a href=\"(?P<url>.+?)\">(?P<label>.+?)</a>", "compflags": "0"}}, "lectures": {"name": "Lectures", "up": "media", "down": "playlist", "sibling": "embedUrl", "params": {"url": "http://academicearth.org/universities/stanford/", "regexp": "<a target=\"_blank\" href=\"(?P<videoUrl>.+?)\">.+?<h4 class=\"lecture-title\">(?P<label>.+?)</h4>", "compflags": "re.DOTALL"}, "type": "thread"}, "playlist": {"sibling": "courses", "type": "thread", "up": "lectures", "name": "playlist", "params": {"url": "http://academicearth.org/playlists/", "regexp": "<h3 class=\"playlist-title\">(.+?)<a href=\"(?P<url>.+?)\">(?P<label>.+?)</a>", "compflags": "re.DOTALL"}}, "Courses": {"type": "thread", "params": {"url": "http://academicearth.org/", "regexp": "menu-item-249.+?\"><a href=\"(?P<url>.+?)\">(?P<label>.+?)</a>", "compflags": "0"}, "name": "Courses", "up": "courses"}, "media": {"down": "lectures", "params": {"url": "http://www.movie25.tw/watch-school-dance-2014-48108-1171666.html", "regexp": "onclick=\"location.href='(?P<url>.+?)'\"  value=\"Click Here to Play\" />", "compflags": "re.DOTALL"}, "type": "thread", "name": "media"}, "rootmenu": {"params": {}, "type": "list", "name": "rootmenu"}, "electives": {"type": "thread", "params": {"url": "http://academicearth.org/electives/", "regexp": "<h3 class=\"post-title\"><a href=\"(?P<url>.+?)\">(?P<label>.+?)</a></h3>", "compflags": "re.DOTALL"}, "name": "electives", "up": "embedUrl"}, "courses": {"down": "universities", "type": "thread", "params": {"url": "http://academicearth.org/universities/stanford/", "regexp": "(?#<SPAN>)<li class=\"course-preview\">.+?<aside class=\"meta\">.+?(<span class=\"course-videos\" data-(?P<label3>.+?)=\"(?P<label1>[^>]+)\">[^<]+</span>.+?)?</aside>.+?<h3 class=\"course-title\"><a[^>]+>(?P<label>[^>]+)</a>.+?(<ul>.+?(<li class=\"lecture-preview\">.+?</li>)*.+?</ul>)", "compflags": "re.DOTALL", "nextregexp": "<span class='page-numbers current'>.+?</span>\n<a class='page-numbers' href='(?P<url>.+?)'>"}, "name": "Courses", "up": "lectures"}, "earchresult": {"down": "search", "params": {"url": "http://academicearth.org/page/3/?s=computer", "regexp": "<a href=\"(?P<videoUrl>[^\"]+?)\" title=\"(?P<label>.+?)\">", "compflags": "re.DOTALL|re.IGNORECASE", "enabled": false, "nextregexp": "<li class=\"pagination__next\"><a href=\"(?P<url>.+?)\" rel=\"next\">(?P<label>.+?)</a>"}, "type": "thread", "name": "earchresult", "up": "media"}, "search": {"params": {"url": "http://academicearth.org/page/3/?s=computer", "regexp": "(?#<SEARCH>)http://academicearth.org/?s=<search>", "compflags": "re.DOTALL", "enabled": false}, "type": "thread", "name": "search", "up": "earchresult"}, "embedUrl": {"name": "embedUrl", "up": "media", "down": "electives", "sibling": "earchresult", "params": {"url": "http://academicearth.org/electives/practical-math-how-to-take-a-punch/", "regexp": "<iframe src=\"https://fast.wistia.net/embed/iframe/(?P<hashedid>.+?)\\?[^\"]+\" allowtransparency=\"true\" frameborder=\"0\" scrolling=\"no\" class=\"(?P<label>.+?)\"", "compflags": "re.IGNORECASE"}, "type": "thread"}}]
{"addon_name": "My Own Academic Earth", "addon_requires": "xbmc.python,2.1.0,|script.module.urlresolver,2.4.0,|script.module.metahandler,1.0.0,|script.module.addon.common,1.0.0,|script.common.plugin.cache,1.0.0,", "addon_disclaimer": "Use with care. Experimental work.", "addon_description": "Browse the site academicearth.org and was generated using the alfa xbmcIDE", "addon_id": "plugin.video.ideacademicearth", "addon_summary": "Browse site academicearth.org", "addon_resources": "basicFunc.py,lib", "addon_fanart": "C:/eclipse/Workspace/xbmc addon development/src/xbmcUI/images/AcademicEarthFanart.jpg", "addon_icon": "C:/eclipse/Workspace/xbmc addon development/src/xbmcUI/images/AcademicEarthLogo.png"}
{"search": "def search():\n    kb = xbmc.Keyboard(\"\", \"Search search\" , False)\n    kb.doModal()\n    if (kb.isConfirmed()):\n        text = kb.getText()\n        text = urllib.quote_plus(text)\n        srchUrl = \"http://academicearth.org/?s=<search>\".replace(\"<search>\", text)\n        args[\"url\"] = [srchUrl]\n        return earchresult()\n\n    return EMPTYCONTENT\n", "earchresult": "def earchresult():\n    url = args.get(\"url\")[0]\n    regexp = r'<a href=\"(?P<videoUrl>[^\"]+?)\" title=\"(?P<label>.+?)\">'\n    compflags = re.DOTALL|re.IGNORECASE\n    subMenus = parseUrlContent(url, regexp, compflags)\n    menuContent = []\n    for elem in subMenus:\n        itemParam = dict([(key,elem.pop(key)) for key  in elem.keys() if key in LISTITEM_KEYS])\n        itemParam[\"isFolder\"] = False\n        otherParam = {}\n        paramDict = dict([(key, value[0]) for key, value in args.items() if hasattr(value, \"__getitem__\")])\n        paramDict.update({'menu': u'media'})\n        paramDict.update(elem)\n        menuContent.append([paramDict, itemParam, otherParam])\n    nextregexp = '<li class=\"pagination__next\"><a href=\"(?P<url>.+?)\" rel=\"next\">(?P<label>.+?)</a>'\n    nextmenu = parseUrlContent(url, nextregexp)\n    if nextmenu:\n        paramDict = dict([(key, value[0]) for key, value in args.items() if hasattr(value, \"__getitem__\")])\n        paramDict.update({'url':nextmenu[0]['url'], 'menu':'earchresult'})\n        itemParam = {'isFolder':True, 'label':'Next Page >>>'}\n        menuContent.append([paramDict, itemParam, None])\n    return menuContent ", "_codeframe_": "<header>\n\n<rootmenu>\n\n<search>\n\n<earchresult> or EMPTYCONTENT\n\n<electives>\n\n<embedUrl>\n\n<playlist>\n\n<Courses>\n\n<universities>\n\n<courses>\n\n<lectures>\n\n<media>\n\nbase_url = sys.argv[0]\naddon_handle = int(sys.argv[1])\nargs = urlparse.parse_qs(sys.argv[2][1:])\nxbmcplugin.setContent(addon_handle, 'movies')\n\nmenu = args.get('menu', None)\n\nmenuFunc = menu[0] if menu else 'rootmenu'\nmenuItems = eval(menuFunc + '()')\nif menuItems: makeXbmcMenu(addon_handle, base_url, menuItems)    \n\n\n\n\n"}
