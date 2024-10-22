return {
    'akinsho/bufferline.nvim', 
    enabled = true,
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
        options = {
            separator_style = "thin",
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    highlight = "Normal",
                    separator = true -- use a "true" to enable the default, or set your own character
                }
            }
        }
    }
}
