view: letters_5 {
  sql_table_name: (select *, row_number() over() as rn from `lookerplus.wordle.letters_5`) ;;
  dimension: words {
    primary_key: yes
    sql: ${TABLE}.string_field_0 ;;
  }
  dimension: rn {
    type: number
    sql: ${TABLE}.rn ;;
  }

  parameter: selection_1 {type: unquoted}
  dimension: guess_1 {
    sql: ${words} ;;
    html:
    {% assign n=0 %}
    {% assign guess = selection_1._parameter_value | split: "" %}
    {% assign answer = value | split: "" %}
    {% for i in answer %}
      {% if i == guess[n] %}
        <font color="green">{{guess[n]}}<font>
      {% elsif answer contains guess[n] %}
        <font color="orange">{{guess[n]}}<font>
      {% else %}
        <font color="red">{{guess[n]}}<font>
      {% endif %}
      {% assign n = n | plus: 1 %}
    {% endfor %};;
  }


  parameter: selection_2 {type: unquoted}
  dimension: guess_2 {
    sql: ${words} ;;
    html:
    {% assign n=0 %}
    {% assign guess = selection_2._parameter_value | split: "" %}
    {% assign answer = value | split: "" %}
    {% for i in answer %}
      {% if i == guess[n] %}
        <font color="green">{{guess[n]}}<font>
      {% elsif answer contains guess[n] %}
        <font color="orange">{{guess[n]}}<font>
      {% else %}
        <font color="red">{{guess[n]}}<font>
      {% endif %}
      {% assign n = n | plus: 1 %}
    {% endfor %};;
  }

  parameter: selection_3 {type: unquoted}
  dimension: guess_3 {
    sql: ${words} ;;
    html:
    {% assign n=0 %}
    {% assign guess = selection_3._parameter_value | split: "" %}
    {% assign answer = value | split: "" %}
    {% for i in answer %}
      {% if i == guess[n] %}
        <font color="green">{{guess[n]}}<font>
      {% elsif answer contains guess[n] %}
        <font color="orange">{{guess[n]}}<font>
      {% else %}
        <font color="red">{{guess[n]}}<font>
      {% endif %}
      {% assign n = n | plus: 1 %}
    {% endfor %};;
  }

  parameter: selection_4 {type: unquoted}
  dimension: guess_4 {
    sql: ${words} ;;
    html:
    {% assign n=0 %}
    {% assign guess = selection_4._parameter_value | split: "" %}
    {% assign answer = value | split: "" %}
    {% for i in answer %}
      {% if i == guess[n] %}
        <font color="green">{{guess[n]}}<font>
      {% elsif answer contains guess[n] %}
        <font color="orange">{{guess[n]}}<font>
      {% else %}
        <font color="red">{{guess[n]}}<font>
      {% endif %}
      {% assign n = n | plus: 1 %}
    {% endfor %};;
  }

  parameter: selection_5 {type: unquoted}
  dimension: guess_5 {
    sql: ${words} ;;
    html:
    {% assign n=0 %}
    {% assign guess = selection_5._parameter_value | split: "" %}
    {% assign answer = value | split: "" %}
    {% for i in answer %}
      {% if i == guess[n] %}
        <font color="green">{{guess[n]}}<font>
      {% elsif answer contains guess[n] %}
        <font color="orange">{{guess[n]}}<font>
      {% else %}
        <font color="red">{{guess[n]}}<font>
      {% endif %}
      {% assign n = n | plus: 1 %}
    {% endfor %};;
  }

  parameter: selection_6 {type: unquoted}
  dimension: guess_6 {
    sql: ${words} ;;
    html:
    {% assign n=0 %}
    {% assign guess = selection_6._parameter_value | split: "" %}
    {% assign answer = value | split: "" %}
    {% for i in answer %}
      {% if i == guess[n] %}
        <font color="green">{{guess[n]}}<font>
      {% elsif answer contains guess[n] %}
        <font color="orange">{{guess[n]}}<font>
      {% else %}
        <font color="red">{{guess[n]}}<font>
      {% endif %}
      {% assign n = n | plus: 1 %}
    {% endfor %};;
  }

}
