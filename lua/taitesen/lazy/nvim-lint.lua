return {
    'mfussenegger/nvim-lint',
    event = 'BufWritePost',
    config = function()
        -- Define a table of linters for each filetype (not extension).
        -- Additional linters can be found here: https://github.com/mfussenegger/nvim-lint#available-linters
        require('lint').linters_by_ft = {
            python = {
                -- Uncomment whichever linters you prefet
                'flake8',
                'mypy',
                'pylint',
            }
        }
    end
}
