return {
    'goolord/alpha-nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },

    config = function()
        local alpha = require 'alpha'
        local dashboard = require 'alpha.themes.startify'

        dashboard.section.header.val = {
            [[                                                                                                                    ]],
            [[                                                                                                                    ]],
            [[NNNNNNNN        NNNNNNNN                                  VVVVVVVV           VVVVVVVV iiii                          ]],
            [[N:::::::N       N::::::N                                  V::::::V           V::::::Vi::::i                         ]],
            [[N::::::::N      N::::::N                                  V::::::V           V::::::V iiii                          ]],
            [[N:::::::::N     N::::::N                                  V::::::V           V::::::V                               ]],
            [[N::::::::::N    N::::::N    eeeeeeeeeeee       ooooooooooo V:::::V           V:::::Viiiiiii    mmmmmmm    mmmmmmm   ]],
            [[N:::::::::::N   N::::::N  ee::::::::::::ee   oo:::::::::::ooV:::::V         V:::::V i:::::i  mm:::::::m  m:::::::mm ]],
            [[N:::::::N::::N  N::::::N e::::::eeeee:::::eeo:::::::::::::::oV:::::V       V:::::V   i::::i m::::::::::mm::::::::::m]],
            [[N::::::N N::::N N::::::Ne::::::e     e:::::eo:::::ooooo:::::o V:::::V     V:::::V    i::::i m::::::::::::::::::::::m]],
            [[N::::::N  N::::N:::::::Ne:::::::eeeee::::::eo::::o     o::::o  V:::::V   V:::::V     i::::i m:::::mmm::::::mmm:::::m]],
            [[N::::::N   N:::::::::::Ne:::::::::::::::::e o::::o     o::::o   V:::::V V:::::V      i::::i m::::m   m::::m   m::::m]],
            [[N::::::N    N::::::::::Ne::::::eeeeeeeeeee  o::::o     o::::o    V:::::V:::::V       i::::i m::::m   m::::m   m::::m]],
            [[N::::::N     N:::::::::Ne:::::::e           o::::o     o::::o     V:::::::::V        i::::i m::::m   m::::m   m::::m]],
            [[N::::::N      N::::::::Ne::::::::e          o:::::ooooo:::::o      V:::::::V        i::::::im::::m   m::::m   m::::m]],
            [[N::::::N       N:::::::N e::::::::eeeeeeee  o:::::::::::::::o       V:::::V         i::::::im::::m   m::::m   m::::m]],
            [[N::::::N        N::::::N  ee:::::::::::::e   oo:::::::::::oo         V:::V          i::::::im::::m   m::::m   m::::m]],
            [[NNNNNNNN         NNNNNNN    eeeeeeeeeeeeee     ooooooooooo            VVV           iiiiiiiimmmmmm   mmmmmm   mmmmmm]],
            [[                                                                                                                    ]],
            [[                                                                                                                    ]],
    }
    alpha.setup(dashboard.opts)
    end,
}