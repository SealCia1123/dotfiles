-- local home = os.getenv("HOME")
-- local workspace_path = home .. "/.local/share/nvim/jdtls-workspace/"
-- local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
-- local workspace_dir = workspace_path .. project_name
--
-- local status, jdtls = pcall(require, "jdtls")
-- if not status then
--     return
-- end
-- local extendedClientCapabilities = jdtls.extendedClientCapabilities
-- local config = {
--     capabilities = {
--         workspace = {
--             configuration = true,
--         },
--         textDocument = {
--             completion = {
--                 completionItem = {
--                     snippentSupport = true,
--                 },
--             },
--         },
--     },
--     cmd = {
--         "java",
--         "-Declipse.application=org.eclipse.jdt.ls.core.id1",
--         "-Dosgi.bundles.defaultStartLevel=4",
--         "-Declipse.product=org.eclipse.jdt.ls.core.product",
--         "-Dlog.protocol=true",
--         "-Dlog.level=ALL",
--         "-Xmx1g",
--         "--add-modules=ALL-SYSTEM",
--         "--add-opens",
--         "java.base/java.util=ALL-UNNAMED",
--         "--add-opens",
--         "java.base/java.lang=ALL-UNNAMED",
--         "-javaagent:" .. home .. "/.local/share/nvim/mason/packages/jdtls/lombok.jar",
--         "-jar",
--         vim.fn.glob(home .. "/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"),
--         "-configuration",
--         home .. "/.local/share/nvim/mason/packages/jdtls/config_linux",
--         "-data",
--         workspace_dir,
--     },
--     root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),
--
--     settings = {
--         java = {
--             signatureHelp = { enabled = true },
--             extendedClientCapabilities = extendedClientCapabilities,
--             maven = {
--                 downloadSources = true,
--             },
--             referencesCodeLens = {
--                 enabled = true,
--             },
--             references = {
--                 includeDecompiledSources = true,
--             },
--             inlayHints = {
--                 parameterNames = {
--                     enabled = "all", -- literals, all, none
--                 },
--             },
--             format = {
--                 enabled = false,
--             },
--         },
--     },
--
--     init_options = {
--         bundles = {},
--         usePlaceholders = true,
--     },
-- }
-- config.capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- require("jdtls").start_or_attach(config)
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
local home = os.getenv("HOME")
local workspace_path = home .. "/.local/share/nvim/jdtls-workspace/"
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = workspace_path .. project_name

local status, jdtls = pcall(require, "jdtls")
if not status then
  return
end
local extendedClientCapabilities = jdtls.extendedClientCapabilities
local config = {
  capabilities = {
    workspace = {
      configuration = true,
    },
    textDocument = {
      completion = {
        completeopt = "menu,menuone,fuzzy",
        completionItem = {
          snippentSupport = true,
        },
      },
    },
  },
  cmd = {
    "java",
    "-XX:+UseParallelGC",
    "-XX:GCTimeRatio=4",
    "-XX:AdaptiveSizePolicyWeight=90",
    "-Dsun.zip.disableMemoryMapping=true",
    "-Xmx2g",
    "-Xms100m",
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "--add-modules=ALL-SYSTEM",
    "--add-opens",
    "java.base/java.util=ALL-UNNAMED",
    "--add-opens",
    "java.base/java.lang=ALL-UNNAMED",
    "-javaagent:" .. home .. "/repos/jdtls/lombok.jar",
    "-jar",
    vim.fn.glob(home .. "/repos/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"),
    "-configuration",
    home .. "/repos/jdtls/config_linux",
    "-data",
    workspace_dir,
  },
  root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),

  settings = {
    java = {
      signatureHelp = { enabled = true },
      extendedClientCapabilities = extendedClientCapabilities,
      eclipse = {
        downloadSources = true,
      },
      maven = {
        downloadSources = true,
      },
      referencesCodeLens = {
        enabled = true,
      },
      references = {
        includeDecompiledSources = true,
      },
      inlayHints = {
        parameterNames = {
          enabled = "all", -- literals, all, none
        },
      },
      format = {
        enabled = false,
      },
    },
  },

  init_options = {
    bundles = {},
    usePlaceholders = true,
  },
}
config.capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
require("jdtls").start_or_attach(config)
