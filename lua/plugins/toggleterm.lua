---@diagnostic disable: undefined-global

return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        opts = {
            direction = 'vertical',
            start_in_insert = true,
            close_on_exit = false,
        },
        config = function()
            local toggleterm = require('toggleterm')

            -- Check if fish shell is available
            local has_fish = vim.fn.executable('fish') == 1

            -- Function to get the appropriate shell command
            local function get_shell_cmd()
                local current_dir = vim.fn.getcwd()
                local venv_path = current_dir .. '/.venv'

                -- Check if .venv directory exists
                if vim.fn.isdirectory(venv_path) == 1 then
                    if has_fish then
                        return 'fish -c "source .venv/bin/activate.fish && fish"'
                    else
                        return vim.o.shell .. ' --rcfile ' .. venv_path .. '/bin/activate'
                    end
                else
                    return has_fish and 'fish' or vim.o.shell
                end
            end

            toggleterm.setup({
                -- Use fish as default shell if available, otherwise use default
                shell = get_shell_cmd,
                -- Terminal configuration for modifiable behavior
                start_in_insert = true,
                close_on_exit = false,
                -- Allow the terminal buffer to be modifiable
                on_open = function(term)
                    vim.cmd('setlocal modifiable')
                    vim.cmd('setlocal modified')
                end,
                -- You can add other configuration options here as needed
            })
        end,
    }
}