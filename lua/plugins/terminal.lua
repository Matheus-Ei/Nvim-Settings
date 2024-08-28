return {
    -- Floaterm
    -- https://github.com/voldikss/vim-floaterm#lazygit
    {
        "voldikss/vim-floaterm"
    },

    -- LiveServer
    -- https://github.com/barrett-ruth/live-server.nvim
    {
        'barrett-ruth/live-server.nvim',

        build = 'pnpm add -g live-server', -- npm install -g live-server
        cmd = { 'LiveServerStart', 'LiveServerStop' },
        config = true
    },
}
