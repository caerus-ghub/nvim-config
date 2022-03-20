local pickers = require('telescope.pickers')
local finders = require('telescope.finders')
local themes = require("telescope.themes")
local config = require('telescope.config').values
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local pathTable = {
  ["Project"] = '~/path/to/project',
}

local mappings = function(prompt_bufnr, map)
  actions.select_default:replace(function()
    actions.close(prompt_bufnr);

    local selection = action_state.get_selected_entry()
    local projectName = selection[1];
    local projectPath = pathTable[projectName];

    vim.cmd('cd ' .. projectPath);
    vim.cmd('enew')
    vim.cmd('NvimTreeToggle')
  end)
  return true
end

local picker = function(opts)
    opts = opts or {}
    pickers.new(opts, {
        theme = themes.get_dropdown,
        prompt_title = "Projects",
        finder = finders.new_table({
            results = {
                "Project",
            }
        }),
        sorter = config.generic_sorter(opts),
        attach_mappings = mappings;
    }):find();
end

return picker
