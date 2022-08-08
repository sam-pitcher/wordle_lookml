connection: "lookerplus"

include: "/views/*.view.lkml"

explore: letters_5 {
  sql_always_where: ${rn} = extract(dayofyear from current_date()) - 77 ;;
}
