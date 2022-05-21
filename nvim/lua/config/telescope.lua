local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        { file_ignore_patterns = {"node_modules"} },
        mappings = {
            n = {
                ["q"] = actions.close,
            },
        }
    }
}

