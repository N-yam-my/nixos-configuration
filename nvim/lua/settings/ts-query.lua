local query = vim.treesitter.query
-- query.add_directive(
--   "hogehoge",
--   function (
--   match, -- table<integer, TSNode[]>
--   pattern, -- integer
--   source, -- integer|string
--   predicate, -- any[]
--   metadata -- table
--   )
--     
--   end
-- )
-- query.add_predicate(
--   "hoge",
--   function (
--   match, -- table<integer, TSNode[]>
--   pattern, -- integer
--   source, -- integer|string
--   predicate, -- any[]
--   metadata -- table
--   )
--     
--   end
-- )
query.add_directive(
  "hogehoge",
  function (
  match, -- table<integer, TSNode[]>
  pattern, -- integer
  source, -- integer|string
  predicate, -- any[]
  metadata -- table
  )
    
  end
)
