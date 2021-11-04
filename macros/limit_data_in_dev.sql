{% macro limit_data_in_dev(column_name, dev_days_of_data=3, target_name='default') -%}
{% if target.name == target_name %}
where {{column_name}} >= dateadd('day', -{{dev_days_of_data}}, current_timestamp)
{% endif %}
{%- endmacro %}