{% snapshot address_snapshot_chek %}

{{
    config(
        target_schema="snapshot",
        strategy="check",
        unique_key="customer_id",
        check_cols=["address"]
    )
}}

select * from raw.customer

{% endsnapshot %}