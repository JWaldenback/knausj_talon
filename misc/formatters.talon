#provide both anchored and unachored commands via 'over'
phrase <user.text>$: user.insert_with_history(text)
phrase <user.text> over: user.insert_with_history(text)
{user.prose_formatter} <user.prose>$:
    user.insert_formatted(prose, prose_formatter)
{user.prose_formatter} <user.prose> over:
    user.insert_formatted(prose, prose_formatter)
<user.format_text>+$: user.insert_many(format_text_list)
<user.format_text>+ over: user.insert_many(format_text_list)
<user.formatters> it: user.formatters_reformat_selection(user.formatters)
word <user.word>: user.insert_with_history(user.word)
recent list: user.toggle_phrase_history()
recent close: user.phrase_history_hide()
recent repeat <number_small>:
    user.insert_with_history(user.get_recent_phrase(number_small))
recent copy <number_small>: clip.set_text(user.get_recent_phrase(number_small))
# Maybe the commands below should use that instead of it after all
select it: user.select_last_phrase()
before it: user.before_last_phrase()
(nope | scratch) it: user.clear_last_phrase()
nope it was <user.formatters>: user.formatters_reformat_last(formatters)

#pre (say | speak | sentence)
pre {user.prose_formatter} <user.prose>$: 
    key(space)
    user.insert_formatted(prose, prose_formatter)

#post (say | speak | sentence)
post {user.prose_formatter} <user.prose>$: 
    user.insert_formatted(prose, prose_formatter)
    key(space)

