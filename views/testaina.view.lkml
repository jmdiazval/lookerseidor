view: testaina {
  sql_table_name: `PoC_Cortex_Analytics.testaina`
    ;;

  dimension: ano {
    type: number
    sql: ${TABLE}.Ano ;;
  }

  dimension: bolsas_compradas {
    type: number
    sql: ${TABLE}.Bolsas_Compradas ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.Categoria ;;
  }

  dimension: ccaa {
    type: string
    sql: ${TABLE}.CCAA ;;
  }

  dimension: ciudad {
    type: string
    sql: ${TABLE}.Ciudad ;;
  }

  dimension: familia {
    type: string
    sql: ${TABLE}.Familia ;;
  }

  dimension_group: fecha {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.Latitud ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.Longitud ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}.Mes ;;
  }

  dimension: n__linea {
    type: number
    sql: ${TABLE}.N__Linea ;;
  }

  dimension: n_clientes {
    type: number
    sql: ${TABLE}.N_Clientes ;;
  }

  dimension: nombre_articulo {
    type: string
    sql: ${TABLE}.Nombre_Articulo ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.Pais ;;
  }

  dimension: precio_total {
    type: number
    sql: ${TABLE}.Precio_Total ;;
  }

  dimension: precio_unitario {
    type: number
    sql: ${TABLE}.Precio_Unitario ;;
  }

  dimension: ventas_a__o_actual {
    type: number
    sql: ${TABLE}.Ventas_A__o_Actual ;;
  }

  dimension: ventas_a__o_anterior {
    type: number
    sql: ${TABLE}.Ventas_A__o_anterior ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
