--[[
  ----------------------------------------------------------
  DEFAULT INFO (LazyVim):
  ----------------------------------------------------------
    - Keymaps are automatically loaded on the VeryLazy event
    - Default keymaps that are always set:
        https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
    - Add any additional keymaps here

  ----------------------------------------------------------
  KEYMAP ANATOMY (vim.keymap.set):
  ----------------------------------------------------------

    --------------------------------------------------------
    vim.keymap.set(mode, lhs, rhs, opts)

    --------------------------------------------------------
    mode: The Vim mode the mapping applies to.
      - "i" = insert mode
      - "n" = normal mode
      - "v" = visual mode
      - "x" = visual block mode
      - "t" = terminal mode
      Can also be a table, e.g. { "n", "v" }

    --------------------------------------------------------
    lhs: The key sequence to trigger the mapping (e.g. "jk").

    --------------------------------------------------------
    rhs: The action executed when lhs is pressed.
      - "<Esc>" simulates pressing the Escape key.

    --------------------------------------------------------
    opts: A table of options for the mapping.
      - noremap = true  -> prevents recursive remapping.
      - silent = true   -> suppresses command output.
      - desc = "..."    -> description shown by plugins like which-key.

  ----------------------------------------------------------
  Example:
    vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true, desc = "Exit insert mode" })

]]

-- Exit insert mode with "jk" or "kj".
for _, combo in ipairs({ "jk", "kj" }) do
  vim.keymap.set("i", combo, "<Esc>", {
    noremap = true,
    silent = true,
    desc = "Exit insert mode with " .. combo,
  })
end
