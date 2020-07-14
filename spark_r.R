#!/usr/bin/env Rscript

library(sparklyr)

sc <- spark_connect(master = "local")

spark_tbl_handle <- spark_read_parquet(sc, "spark_table", "/tmp/address_file.parquet")

regular_df <- collect(spark_tbl_handle)
regular_df.show()