# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: wordle_from_dataflow {
  hidden: yes

  join: wordle_from_dataflow__word_info {
    view_label: "Wordle From Dataflow: Word Info"
    sql: LEFT JOIN UNNEST(${wordle_from_dataflow.word_info}) as wordle_from_dataflow__word_info ;;
    relationship: one_to_many
  }
}

view: wordle_from_dataflow {
  sql_table_name: `lookerplus.wordle.wordle_from_dataflow`
    ;;

  dimension_group: ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ts ;;
  }

  dimension: words {
    primary_key: yes
    sql: ${TABLE}.word ;;
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
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}

      {% elsif answer contains guess[n] %}
        <font color="orange">{{guess[n]}}<font>
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}

      {% else %}
        <font color="red">{{guess[n]}}<font>
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}

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
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
      {% elsif answer contains guess[n] %}
        <font color="orange">{{guess[n]}}<font>
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
      {% else %}
        <font color="red">{{guess[n]}}<font>
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
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
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
      {% elsif answer contains guess[n] %}
        <font color="orange">{{guess[n]}}<font>
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
      {% else %}
        <font color="red">{{guess[n]}}<font>
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
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
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
      {% elsif answer contains guess[n] %}
        <font color="orange">{{guess[n]}}<font>
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
      {% else %}
        <font color="red">{{guess[n]}}<font>
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
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
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
      {% elsif answer contains guess[n] %}
        <font color="orange">{{guess[n]}}<font>
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
      {% else %}
        <font color="red">{{guess[n]}}<font>
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
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
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
      {% elsif answer contains guess[n] %}
        <font color="orange">{{guess[n]}}<font>
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
      {% else %}
        <font color="red">{{guess[n]}}<font>
        {% assign answer = answer | join: '' %}
        {% assign answer = answer | remove_first: guess[n] %}
        {% assign answer = answer | split: "" %}
      {% endif %}
      {% assign n = n | plus: 1 %}
    {% endfor %};;
  }

  dimension: word_info {
    hidden: yes
    sql: ${TABLE}.word_info ;;
  }

}

view: wordle_from_dataflow__word_info {
  dimension: letter {
    type: string
    sql: letter ;;
  }

  dimension: times {
    type: number
    sql: times ;;
  }

  dimension: wordle_from_dataflow__word_info {
    type: string
    hidden: yes
    sql: wordle_from_dataflow__word_info ;;
  }
}
