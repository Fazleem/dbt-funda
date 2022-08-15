{%- macro cents_to_dollar(column_name, decimal_places = 0.2) -%}
round( 1.0 * {{column_name}}/100, {{decimal_places}} )
{%- endmacro %}