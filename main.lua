local MOD_ID = 'catastrophe'
local CONTENT_PATH = SMODS.Mods[MOD_ID].path..'content/'

-- Most game objects use card sized sprites. We're going to try using one atlas for everything.
SMODS.Atlas({key = 'card_sprites', path = 'card_sprites.png', px = 71, py = 95})

--- Loads scripts from a specified directory and returns the results of their execution.
--- 
--- @param path string The directory to load entries from. This will be relative to the content folder of the mod.
--- @return table A table containing the results of each valid script in the directory.
local function load_entries(path)
    local file_path = CONTENT_PATH..path
    local entries = {}
    local entry_files = NFS.getDirectoryItems(file_path)
    local entry_count = 0
    for _, filename in pairs(entry_files) do
        if (string.sub(filename, -4) == '.lua') then
            local file_func, err = NFS.load(file_path..'/'..filename)
            if (err) then
                sendErrorMessage(err, MOD_ID)
            elseif (file_func == nil) then 
                sendErrorMessage('Failed to load file '..filename, MOD_ID)
            else
                table.insert(entries, file_func())
                entry_count = entry_count + 1
            end
        else
            sendWarnMessage('Unexpected file '..filename..' found in '..file_path, MOD_ID)
        end
    end
    sendInfoMessage('Located '..entry_count..' '..path..'.', MOD_ID)
    return entries
end

local jokers = load_entries('jokers')
local seals = load_entries('seals')
