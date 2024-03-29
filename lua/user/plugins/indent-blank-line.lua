local ok, indent_blank_line = pcall(require, 'indent_blankline')

if not ok then
  vim.cmd('echom "plugin error: intent-blankline is missing"')
  return
end

indent_blank_line.setup {
  char_blankline = '│',
  show_current_context = true,
  show_current_context_start = false,
  context_patterns = {
    "literal_value", "abstract_class_declaration", "abstract_method_signature",
    "accessibility_modifier", "ambient_declaration", "arguments", "array",
    "array_pattern", "array_type", "arrow_function", "as_expression",
    "asserts", "assignment_expression", "assignment_pattern",
    "augmented_assignment_expression", "await_expression",
    "binary_expression", "break_statement", "call_expression",
    "call_signature", "catch_clause", "class", "class_body",
    "class_declaration", "class_heritage", "computed_property_name",
    "conditional_type", "constraint", "construct_signature",
    "constructor_type", "continue_statement", "debugger_statement",
    "declaration", "decorator", "default_type", "do_statement",
    "else_clause", "empty_statement", "enum_assignment", "enum_body",
    "enum_declaration", "existential_type", "export_clause",
    "export_specifier", "export_statement", "expression",
    "expression_statement", "extends_clause", "finally_clause",
    "flow_maybe_type", "for_in_statement", "for_statement",
    "formal_parameters", "function", "function_declaration",
    "function_signature", "function_type", "generator_function",
    "generator_function_declaration", "generic_type", "if_statement",
    "implements_clause", "import", "import_alias", "import_clause",
    "import_require_clause", "import_specifier", "import_statement",
    "index_signature", "index_type_query", "infer_type",
    "interface_declaration", "internal_module", "intersection_type",
    "jsx_attribute", "jsx_closing_element", "jsx_element", "jsx_expression",
    "jsx_fragment", "jsx_namespace_name", "jsx_opening_element",
    "jsx_self_closing_element", "labeled_statement", "lexical_declaration",
    "literal_type", "lookup_type", "mapped_type_clause",
    "member_expression", "meta_property", "method_definition",
    "method_signature", "module", "named_imports", "namespace_import",
    "nested_identifier", "nested_type_identifier", "new_expression",
    "non_null_expression", "object", "object_assignment_pattern",
    "object_pattern", "object_type", "omitting_type_annotation",
    "opting_type_annotation", "optional_parameter", "optional_type", "pair",
    "pair_pattern", "parenthesized_expression", "parenthesized_type",
    "pattern", "predefined_type", "primary_expression", "program",
    "property_signature", "public_field_definition", "readonly_type",
    "regex", "required_parameter", "rest_pattern", "rest_type",
    "return_statement", "sequence_expression", "spread_element",
    "statement", "statement_block", "string", "subscript_expression",
    "switch_body", "switch_case", "switch_default", "switch_statement",
    "template_string", "template_substitution", "ternary_expression",
    "throw_statement", "try_statement", "tuple_type",
    "type_alias_declaration", "type_annotation", "type_arguments",
    "type_parameter", "type_parameters", "type_predicate",
    "type_predicate_annotation", "type_query", "unary_expression",
    "union_type", "update_expression", "variable_declaration",
    "variable_declarator", "while_statement", "with_statement",
    "yield_expression"
  },
  filetype_exclude = {
    "dashboard"
  }
}
