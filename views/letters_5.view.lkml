view: letters_5 {
  # row_number: You can use row_number to index your rows. This is useful here as I only want
  #             to receive one row every query; the row number that matches the day of the year
  #             this is defined in the sql_always_where in the model file.
  #             This is also useful if you need a primary key in your view file, but don't have
  #             one, I would however suggest using generate_uuid() as pk instead of a window
  #             function as it is more performannt!

  sql_table_name: (select *, row_number() over() as rn from `lookerplus.wordle.letters_5`) ;;

  dimension: words {
    primary_key: yes
    sql: ${TABLE}.string_field_0 ;;
  }

  dimension: rn {
    hidden: yes
    type: number
    sql: ${TABLE}.rn ;;
  }

  # LIQUID

  # This dimension uses some often used liquid parameters such as:
  # assign, split, for loop, if statement, append and plus.

  # assign: set a variable to an object. For example a string or the output of a sql cell (result)

  # split: chop a string into elements on a separator. You have a string: "looker is cool". You can
  #        split this string on a space an return 3 elements:    {% assign x = string | split: " " %}
  #        returns ["looker", "is", "cool"]

  # for: using a for loop command, you can iterate through these 3 elements: {% for elem in x %}
  #      just remember to end the for loop using {% endfor %}

  # if: the condition if will do something if the condition yields True. There are a number of condition
  #     statements you can use: ==, !=, <, >, <=, >=. You can then use elsif and else to keep going through
  #     conditions. Remeber to end your if statement with {% endif %}

  # append: add characters or other strings to a string

  # plus: there are a number of numeric operators in liquid, plus simply adds a number to an assigned
  #       variable

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
