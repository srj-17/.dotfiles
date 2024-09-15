-- this is used to join / split blocks of code / tree (really good i'd say
-- I've only set the toggle tree behavior as everything else is encapsulated by that
return {
  'Wansmer/treesj',
  keys = {
      -- only use toggle mapping and nothing else
      { "T", "<cmd>TSJToggle<cr>", desc = "Join Toggle" },
  },
  opts = {
      use_default_keymaps = false,
      max_join_length = 150,
  },
}
