return {
	"nvim-tree/nvim-tree.lua",
	enabled = true,
	opts = {
        sort = { sorter = "case_sensitive" },
        view = { width = 40 },
        renderer = { group_empty = true },
        filters = { dotfiles = true }
    }
}
