-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    -- Assistant
    ["<leader>ac"] = {
      function() require("chatgpt").openChat() end,
      desc = "Open Chat",
    },
    ["<leader>arx"] = {
      function() require("chatgpt").run_action "explain_code" end,
      desc = "Explain code",
    },
    ["<leader>aro"] = {
      function() require("chatgpt").run_action "optimize_code" end,
      desc = "Optimize code",
    },
    ["<leader>arc"] = {
      function() require("chatgpt").run_action "complete_code" end,
      desc = "Complete code",
    },
    ["<leader>art"] = {
      function() require("chatgpt").run_action "add_tests" end,
      desc = "Add tests",
    },
    ["<leader>arf"] = {
      function() require("chatgpt").run_action "fix_code" end,
      desc = "Fix code",
    },
    ["<leader>ar"] = { name = "Run Action" },
    ["<leader>a"] = { name = "Assistant" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    -- Assistant
    ["<leader>ac"] = {
      function() require("chatgpt").openChat() end,
      desc = "Open Chat",
    },
    ["<leader>ae"] = {
      function() require("chatgpt").edit_with_instructions() end,
      desc = "Edit with instructions",
    },
    ["<leader>arx"] = {
      function() require("chatgpt").run_action "explain_code" end,
      desc = "Explain code",
    },
    ["<leader>aro"] = {
      function() require("chatgpt").run_action "optimize_code" end,
      desc = "Optimize code",
    },
    ["<leader>arc"] = {
      function() require("chatgpt").run_action "complete_code" end,
      desc = "Complete code",
    },
    ["<leader>art"] = {
      function() require("chatgpt").run_action "add_tests" end,
      desc = "Add tests",
    },
    ["<leader>arf"] = {
      function() require("chatgpt").run_action "fix_code" end,
      desc = "Fix code",
    },
    ["<leader>ar"] = { name = "Run action" },
    ["<leader>a"] = { name = "Assistant" },
  },
}
