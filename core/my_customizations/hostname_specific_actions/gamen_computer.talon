hostname: Gamen
-
#Windows key + Ctrl + (number) – Switch to the last active window of the app pinned to the taskbar in the position indicated by the number.
focus [file] explorer: key(super-ctrl-2)
focus chrome: key(super-ctrl-3)
#focuses on the joel@zutobi.com chrome profile browser window
focus work: key(super-ctrl-4)
focus edge: key(super-ctrl-5)
focus notes: key(super-ctrl-6)
focus (slack | lack | like): key(super-ctrl-7)

focus outlook: user.open_specific_tab("Google Chrome", "outlook.live.com")
focus google calendar: user.open_specific_tab("Google Chrome", "calendar.google.com")
#focus notes: user.open_specific_tab("Google Chrome", "iCloud-anteckningar")

focus gmail [Joel]: user.open_specific_tab("Microsoft Edge", "joel@zutobi")
focus gmail support: user.open_specific_tab("Microsoft Edge", "support@zutobi")
focus gmail hello: user.open_specific_tab("Microsoft Edge", "hello@zutobi")
focus gmail la Loran: user.open_specific_tab("Microsoft Edge", "lalurran@gmail")
focus gmail partnerships: user.open_specific_tab("Microsoft Edge", "partnerships@zutobi")

focus chat GPT: user.open_specific_tab("Microsoft Edge", "https://chat.openai.com/")

^grab screen selection$:
    user.toggle_talon_microphone()
    user.engine_mimic("event log clear logs")
    key(super-alt-8)
    sleep(300ms)
    key(enter)