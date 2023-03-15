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
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-e>"] = { ":ToggleTermSendVisualLines<cr>", desc = "Evaluate the visual selection in terminal" },     -- change description but the same command
    ["<leader>e"] = { ":ToggleTermSendVisualLines<cr>", desc = "Evaluate the visual selection in terminal" },
  },
  v = {
    -- ["<C-e>"] = { ":ToggleTermSendVisualLines<cr>", desc = "Evaluate the visual selection in terminal" },      -- change description but the same command
    ["<leader>e"] = { ":ToggleTermSendVisualLines<cr>", desc = "Evaluate the visual selection in terminal" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
