return {
    "aliqyan-21/wit.nvim",
    config = function()
        require("wit").setup({
            -- search_engine = "google" -- your preferred search engine name from the list
            -- search_engine = "bing" -- your preferred search engine name from the list
            -- search_engine = "duckduckgo" -- your preferred search engine name from the list
            -- search_engine = "ecosia" -- your preferred search engine name from the list
            -- search_engine = "brave" -- your preferred search engine name from the list
            search_engine = "perplexity" -- your preferred search engine name from the list
            -- search_engine = "https://any_other_search_engine.com/search?q=" -- for any other search engine not in list you can define it's url directly

            -- for example:
            -- search_engine = "https://you.com/search?q=" -- defining the search url of you.com as it is not in the list
        })
    end
}
