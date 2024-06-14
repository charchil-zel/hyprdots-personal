return {
	-- CODE RUNNER
	{
		"CRAG666/code_runner.nvim",
		config = true,
		filetype = {
			java = {
				"cd $dir &&",
				"javac $fileName &&",
				"java $fileNameWithoutExt",
			},
			python = "python3 -u",
			typescript = "deno run",
			rust = {
				"cd $dir &&",
				"rustc $fileName &&",
				"$dir/$fileNameWithoutExt",
			},
		},
	},
}
