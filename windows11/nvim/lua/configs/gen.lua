local gen = require "gen"

local opts = {
  model = "qwen2.5-coder:3b-instruct-q4_K_M",
  display_mode = "split",
}
gen.setup(opts)

gen.prompts["Explain"] = {
  prompt = "Explain the following code:\n$text",
  replace = false,
}

gen.prompts["Generate Given Code"] = {
  prompt = "The following is my code:\n$text\nWrite code about:\n$input",
  replace = false,
}

gen.prompts["Refator"] = {
  prompt = "Suggest improvements or refactoring for the following code:\n$text",
  replace = false,
}
