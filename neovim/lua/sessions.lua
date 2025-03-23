local function maybe_make_dir(path)
  if vim.fn.isdirectory(path) == 0 then
    vim.fn.mkdir(path, "p")
  end
end

local function get_normalized_cwd()
  local cwd = vim.fn.getcwd()
  local cwd_normalized = cwd:gsub('/', '__')
  return cwd_normalized
end

local function get_session_dir()
  return vim.fn.stdpath('data') .. '/sessions/'
end

local function get_session_path()
  local session_dir = get_session_dir()
  local cwd = get_normalized_cwd()

  return session_dir .. cwd
end

function make_session()
  local session_dir = get_session_dir()
  maybe_make_dir(session_dir)

  local session_path = get_session_path()

  vim.cmd('mks! ' .. session_path)
end
vim.keymap.set('n', '<F11><F11>', make_session)

function load_session()
  local session_path = get_session_path()

  local cmd = 'source ' .. session_path
  vim.cmd(cmd)
end
vim.keymap.set('n', '<F11>', load_session)

--[[
function delete_session()
  local session_path = get_session_path()

  vim.fn.delete(session_path)
end
vim.keymap.set('n', '<F10>', delete_session)
]]
