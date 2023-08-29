require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'palenight',
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff'},
		lualine_c = {
			{
				'filename',
				path = 3,
			},
		},
		lualine_y = {'datetime'},
	},
}
