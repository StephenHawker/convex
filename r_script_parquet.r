# This is a program to read a parquet file and print line 2
# to standard error
# Author: Steve Hawker
#######################################################
setwd("/tmp")
#install.packages("devtools", quiet = TRUE)
install.packages('devtools', lib = "/usr/lib64/R/library", repos = "http://cran.us.r-project.org")
install.packages("aws.s3",  lib = "/usr/lib64/R/library", repos = "http://cran.us.r-project.org", quiet = TRUE)
#install.packages("SparkR", quiet = TRUE)
#install.packages("sparklyr", quiet = TRUE)
devtools::install_github("rstudio/sparklyr")
#library("datasets")
#library(aws.s3)
library(sparklyr)
spark_install ("3.0.0") 

#aws.s3::s3read_using(read.csv, object = "s3://sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e/address_file.parquet")

Sys.setenv("AWS_DEFAULT_REGION" = "eu-west-2")
#library("aws.s3")

library(sparklyr)
sc <- spark_connect (master = "local")

# load parquet file into a Spark data frame and coerce into R data frame
spark_df = spark_read_parquet(sc, name = "disp", path="/tmp/address_file.parquet", repartition = 0, memory = TRUE)
# Convert to R data frame from spark
r_df <- collect(spark_df)

v <- function(...) cat(sprintf(...), sep='', file=stderr())

row <- r_df[2,]
v("%s", row)

#loop the df
#for(i in 1:nrow(df)) {
#    row <- df[i,]
    # do stuff with row
#    if (i==2) {
      #Write contents out to stderr
#      v("%s", row)
#    }
#}

