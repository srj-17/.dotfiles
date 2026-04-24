local config = {
	cmd = { "jdtls" },
	root_dir = vim.fs.root(0, { "gradlew", ".git", "mvnw", "src" }),
	settings = {
		java = {
			project = {
				sourcePaths = { "src" },
			},
			referencedLibraries = { "/usr/share/tomcat10/lib/*" },
		},
	},
}

require("jdtls").start_or_attach(config)
