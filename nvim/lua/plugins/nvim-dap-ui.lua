return {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")
        dapui.setup()
        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set("n", "<Leader>db", function()
            require("dap").toggle_breakpoint()
        end, { desc = "Debug: Toggle breakpoint" })
        vim.keymap.set("n", "<Leader>dr", function()
            require("dap").continue()
        end, { desc = "Debug: Start or continue the debugger" })
    end,
}
