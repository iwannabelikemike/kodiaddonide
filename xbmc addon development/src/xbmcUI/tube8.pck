["listaVideos", {"Content": {"params": {"url": "http://www.tube8.com", "regexp": "<li [^>v]*>\\W+<a href=\"(?P<url>[^\"]+)\">(?P<label>[^<]+)</a>", "compflags": "re.DOTALL|re.IGNORECASE"}, "type": "thread", "name": "Content", "up": "listaVideos"}, "media": {"down": "listaVideos", "type": "thread", "params": {"url": "http://www.movie25.tw/watch-school-dance-2014-48108-1171666.html", "regexp": "onclick=\"location.href='(?P<url>.+?)'\"  value=\"Click Here to Play\" />", "compflags": "re.DOTALL", "enabled": false}, "name": "media"}, "rootmenu": {"type": "list", "params": {}, "name": "rootmenu"}, "listaVideos": {"down": "Content", "params": {"": "", "url": "http://www.tube8.com/mostdiscussed.html", "compflags": "re.DOTALL|re.IGNORECASE", "headregexp": "Categories: <->(?#<SPAN>)(?s)</div>\\W+(?P<label>[^<]+)</div>\\W+<ul [^>]*id=\"categoriesList\"[^>]*>.+?</ul>|<li><a href=\"(?P<url>[^\"]+)\" >(?P<label>[^<]+)</a></li><=>Sort By: <->(?#<SPAN>)(?s)</div>\\W+(?P<label>[^<]+)</div>\\W+<ul [^>]*id=\"sortByList\"[^>]*>.+?</ul>|<li><a href=\"(?P<url>[^\"]+)\" >(?P<label>[^<]+)</a></li><=>Time Added: <->(?#<SPAN>)(?s)</div>\\W+(?P<label>[^<]+)</div>\\W+<ul [^>]*id=\"timeAddedList\"[^>]*>.+?</ul>|<li><a href=\"(?P<url>[^\"]+)\" >(?P<label>[^<]+)</a></li><=>Duration: <->(?#<SPAN>)(?s)</div>\\W+(?P<label>[^<]+)</div>\\W+<ul [^>]*id=\"durationList\"[^>]*>.+?</ul>|<li><a href=\"(?P<url>[^\"]+)\" >(?P<label>[^<]+)</a></li>", "regexp": "<img class=\"videoThumbs.+?src=\"(?P<iconImage>[^\"]+)\".+?<a href=\"(?P<videoUrl>[^\"]+)\" title=\"(?P<label>[^\"]+)\">(?P=label)</a>", "contextmenus": ",", "nextregexp": "</span></b>\\W+</li>\\W+<li>\\W+<b><a href=\"(?P<url>[^\"]+)\">"}, "type": "thread", "name": "listaVideos", "up": "media"}}]
{"addon_name": "Tube8", "addon_requires": "xbmc.python,2.1.0,", "addon_fanart": "C:/eclipse/Workspace/xbmc addon development/src/xbmcUI/images/tube8_fanart.jpg", "addon_icon": "C:/eclipse/Workspace/xbmc addon development/src/xbmcUI/images/tube8_icon.png", "addon_changelog": "C:/eclipse/Workspace/xbmc addon development/src/xbmcUI/images/changelog.txt", "addon_resources": "basicFunc.py,resources/lib/,True,basicFunc.py|sesame.py,resources/lib/,True,sesame.py", "addon_id": "plugin.video.tube8"}
{"media": "def media():\n    import sesame\n    url = args.get(\"videoUrl\", None)[0]\n    regexp = '\"video_title\":\"(?P<videotitle>.+?)\",.+?,\"video_url\":\"(?P<encvideourl>.+?)\"'\n    compflags = re.DOTALL\n    url, data = openUrl(url)\n    subMenus = parseUrlContent(url, data, regexp, compflags )\n    videoTitle = subMenus[0]['videotitle']\n    videoUrl = subMenus[0]['encvideourl'].replace('\\/', '/')\n    url = sesame.decrypt(videoUrl, videoTitle, 256)\n\n    li = xbmcgui.ListItem(path = url)\n    li.setProperty('IsPlayable', 'true')\n    li.setProperty('mimetype', 'video/x-msvideo')\n    return xbmcplugin.setResolvedUrl(handle     = addon_handle, succeeded=True, listitem=li)\n", "_codeframe_": "<header>\n\n<rootmenu>\n\n<Content>\n\n# Deleted node CategoryList\n\n# Deleted node CategoryFilter\n\n<listaVideos>\n\n<media>\n\n\nbase_url = sys.argv[0]\naddon_handle = int(sys.argv[1])\nargs = urlparse.parse_qs(sys.argv[2][1:])\nxbmcplugin.setContent(addon_handle, 'movies')\n\nmenu = args.get('menu', None)\n\nmenuFunc = menu[0] if menu else 'rootmenu'\nmenuItems = eval(menuFunc + '()')\nif menuItems: makeXbmcMenu(addon_handle, base_url, menuItems)\n"}