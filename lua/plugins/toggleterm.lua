return {
	-- amongst your other plugins
	{
		"akinsho/toggleterm.nvim",
		version = "*",
        enabled = true,
        opts = {
            open_mapping = [[<c-\>]],
            -- 打开新终端后自动进入插入模式
            start_in_insert = true,
            -- 在当前buffer的下方打开新终端
            -- direction = 'horizontal',
            direction = "float",
            -- direction = 'vertical' | 'horizontal' | 'tab' | 'float',
            float_opts = {
                border = "curved",
                -- border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
            },
        }
	},
}
