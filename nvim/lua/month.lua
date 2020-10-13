local M = {}

function M.getCompletionItems(prefix)
  -- define your total completion items
  local items = {'hello', 'world', 'helloworld'}
  return items
end

M.complete_item = {
  item = M.getCompletionItems
}

return M

