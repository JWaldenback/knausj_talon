tag: user.file_manager
-
title force: user.file_manager_refresh_title()
manager show: user.file_manager_toggle_pickers()
manager close: user.file_managjer_hide_pickers()
manager refresh: user.file_manager_update_lists()
go [to] <user.system_path>: user.file_manager_open_directory(system_path)
go (last | back | previous): user.file_manager_go_back()
go (next | forth): user.file_manager_go_forward()
go [to] parent: user.file_manager_open_parent()
^follow numb <number_small>$:
    directory = user.file_manager_get_directory_by_index(number_small - 1)
    user.file_manager_open_directory(directory)
^follow {user.file_manager_directories}$:
    user.file_manager_open_directory(file_manager_directories)
^(select | cell) folder {user.file_manager_directories}$:
    user.file_manager_select_directory(file_manager_directories)
^open <number_small>$:
    file = user.file_manager_get_file_by_index(number_small - 1)
    user.file_manager_open_file(file)
^folder numb <number_small>$:
    directory = user.file_manager_get_directory_by_index(number_small - 1)
    user.file_manager_select_directory(directory)
^file numb <number_small>$:
    file = user.file_manager_get_file_by_index(number_small - 1)
    user.file_manager_select_file(file)
^file {user.file_manager_files}$: user.file_manager_select_file(file_manager_files)
^(select | cell) file {user.file_manager_files}$:
    user.file_manager_select_file(file_manager_files)

#new folder
folder new: key(ctrl-shift-n)
#folder new <user.text>: user.file_manager_new_folder(text)

#show properties
properties show: user.file_manager_show_properties()

# open terminal at location
terminal here: user.file_manager_terminal_here()

folder next: user.file_manager_next_folder_page()
folder last: user.file_manager_previous_folder_page()

file next: user.file_manager_next_file_page()
file last: user.file_manager_previous_file_page()

view large icons: key(ctrl-shift-1)
view medium icons: key(ctrl-shift-2)
view small icons: key(ctrl-shift-4)
view details: key(ctrl-shift-6)

(refresh | reload) it: key(f5)