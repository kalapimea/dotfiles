hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 12,

        border_size = 2,

        layout = "dwindle",

        col = {
            active_border = {
                colors = {
                    "rgba(c4a7e7ff)",
                    "rgba(9ccfd8ff)"
                },
                angle = 45,
            },

            inactive_border = "rgba(403d52aa)",
        },
    },

    decoration = {
        rounding = 12,

        active_opacity = 1,
        inactive_opacity = 0.93,

        blur = {
            enabled = true,
            size = 5,
            passes = 2,
            vibrancy = 0.2,
        },

        shadow = {
            enabled = true,
            range = 12,
            render_power = 4,
            color = 0xaa000000,
        },
    },

    animations = {
        enabled = true,
    },
})
