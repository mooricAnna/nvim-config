return {
	"linux-cultist/venv-selector.nvim",
	lazy = false,
	config = function()
		local venv = require("venv-selector")
		venv.setup({
			search = false,
			stay_on_this_version = true,
			anaconda_envs_path = os.getenv("HOME") .. "/miniconda3/envs",
			auto_refresh = true,
			search_workspace = false,
		})
		venv.retrieve_from_cache()
	end,
	keys = {
		{ "<leader>vs", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" },
		{ "<leader>vc", "<cmd>:VenvSelectCached<cr>", desc = "Select Cached VirtualEnv" },
	},
}
