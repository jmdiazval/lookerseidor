view: customer_sales_clusters {
  sql_table_name: `PoC_Cortex_Analytics.CUSTOMER_SALES_CLUSTERS`
    ;;

  dimension: cluster {
    type: number
    sql: ${TABLE}.cluster ;;
  }

  dimension: cluster_distance {
    type: number
    sql: ${TABLE}.cluster_distance ;;
  }

  dimension_group: creation_date {
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
    sql: ${TABLE}.CreationDate ;;
  }

  dimension_group: creation_time {
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
    sql: ${TABLE}.CreationTime ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: distribution_channel {
    type: string
    sql: ${TABLE}.DistributionChannel ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.Item_ID ;;
  }

  dimension: material_number {
    type: string
    sql: ${TABLE}.MaterialNumber ;;
  }

  dimension: monetary_value {
    type: number
    sql: ${TABLE}.monetary_value ;;
  }

  dimension: net_price {
    type: number
    sql: ${TABLE}.NetPrice ;;
  }

  dimension: net_weight_of_item {
    type: number
    sql: ${TABLE}.NetWeightOfItem ;;
  }

  dimension: recency {
    type: number
    sql: ${TABLE}.recency ;;
  }

  dimension: sales_document_id {
    type: number
    sql: ${TABLE}.SalesDocument_ID ;;
  }

  dimension: sold_to_party_header_id {
    type: number
    sql: ${TABLE}.SoldToPartyHeader_ID ;;
  }

  dimension: sold_to_party_header_name {
    type: string
    sql: ${TABLE}.SoldToPartyHeaderName ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: weight_unit {
    type: string
    sql: ${TABLE}.WeightUnit ;;
  }

  measure: count {
    type: count
    drill_fields: [sold_to_party_header_name]
  }
}
