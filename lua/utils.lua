local M = {}

function M.require_if_exists(module)
    local ok, result = pcall(require, module)
    if ok then
        return result
    elseif type(result) == "string" and result:match("module '[^']+' not found") then
        return nil
    else
        error(result)  -- Re-raise if it's a different kind of error
    end
end

return M
