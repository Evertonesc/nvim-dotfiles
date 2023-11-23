local dap = require('core/plugins/dap')

require('dap-go').setup{
	dap_configurations = {

		{
			type = "go",
			name = "Debug Go",
			request = "launch",
			program = "${file}",
		},
		{
			type = "go",
			name = "Debug test",
			request = "launch",
			mode = "test",
			program = "${file}",
		},
		{
			type = "go",
			name = "Debug test (go.mod)",
			request = "launch",
			mode = "test",
			program = "./${relativeFileDirname}",
		},
	}
}

-- dap.configurations.go = {
-- 	{
-- 		type = "go",
-- 		name = "Debug",
-- 		request = "launch",
-- 		program = "${file}",
-- 	},
-- 	{
-- 		type = "go",
-- 		name = "Debug test",
-- 		request = "launch",
-- 		mode = "test",
-- 		program = "${file}",
-- 	},
-- 	{
-- 		type = "go",
-- 		name = "Debug test (go.mod)",
-- 		request = "launch",
-- 		mode = "test",
-- 		program = "./${relativeFileDirname}",
-- 	},
-- }
