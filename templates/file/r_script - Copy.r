# This is a program to read a parquet file and print line 2
# to standard error
# Author: Steve Hawker
#######################################################
setwd("/tmp")
install.packages("devtools", quiet = TRUE)
install.packages('devtools')
install.packages("aws.s3", quiet = TRUE)
install.packages("SparkR", quiet = TRUE)
install.packages("sparklyr", quiet = TRUE)
devtools::install_github("rstudio/sparklyr")
#library("datasets")
library(aws.s3)
spark_install ("2.0.1") 

aws.s3::s3read_using(read.csv, object = "s3://sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e/address_file.parquet")

obj <- get_object("s3://<bucket_name>/<file_name>")

read.parquet("s3n://sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e/address_file.parquet", header = "true", inferSchema = "true", na.strings = "NA")

usercsv_tbl <- read.parquet(sc,name = "usertbl",path="s3n://sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e/address_file.parquet") 
src_tbls(sc)

sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e
aws s3 cp address_file.parquet s3://sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e/address_file.parquet

S3://sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e/address_file.parquet

files <- get_bucket("sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e")
get_bucket(bucket = 'sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e.s3.eu-west-2.amazonaws.com')

https://sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e.s3.eu-west-2.amazonaws.com/address_file.parquet

library("aws.s3")

b <- 'sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e'

  config.fog_credentials = {
    :provider               => 'AWS',
    :region                 => 'eu-west-2'
    :endpoint               => 'https://s3-eu-west-2.amazonaws.com/'
  }

r = aws.s3::get_object(bucket = "sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e",key = "address_file.parquet")

r = aws.s3::get_object(bucket = "bucket",object = "object.csv")


# load the SparkR package
library(SparkR)
library(sparklyr)

# initialize sparkSession which starts a new Spark session
sc <- sparkR.session(master="local")

# load parquet file into a Spark data frame and coerce into R data frame
df <- collect(read.parquet('/tmp/address_file.parquet'))
df <- collect(read.parquet('S3://sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e/address_file.parquet'))

spark = SparkSession.builder
                        .master("local")             
                        .appName("app name")             
                        .config("spark.some.config.option", true).getOrCreate()
df2 = spark.read.parquet("s3://sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e/address_file.parquet")

path = "s3a://sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e/address_file.parquet"
df2 = collect(read.parquet(path))

df2 = parquetFile("s3://sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e/address_file.parquet")
val df2 = spark.read.parquet("s3://sthconvex084c65ba-3deb-4e0d-aa4a-c695ce419f4e/address_file.parquet")

# terminate Spark session
sparkR.stop()

v <- function(...) cat(sprintf(...), sep='', file=stderr())

#loop the df
for(i in 1:nrow(df)) {
    row <- df[i,]
    # do stuff with row
    if (i=2) {
      #Write contents out to stderr
      v("%s", row)
    }
}

