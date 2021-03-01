## How do you tell what OO system (S3 vs. S4) an object is associated with?
  # Use the otype() command to return a the type of object.
  # Use the isS4() command to return a logical indicating if the object is a S4 type.
  
## How do you determine the base type (like integer or list) of an object?
  # Use the class() command to determine the base type. 

## What is a generic function?
  # A generic function is a function with a collection of methods.
  # A method is a function that performs specific calculations on objects of a specific class.
  
## What are the main differences between S3 and S4?
  # S3: Older, simpler, more dynamic, less structured version, single dispatch.
  # S4: Newer, more structured, more rigorous, multi-dispatch.
  
## In your GitHub, create two examples of S3 and S4.
  #GitHub Link: (https://github.com/koeneralex/rprogramming-week7-s3-s4)

  library(pryr)

  # Download any type of data (from the web or use datasets package) or create your own set.
  mtcars

  # S3 Object
  s3 <- mtcars
  head(s3)
  s3$cyl
  s3$mpg
  s3$mpg[1]
  isS4(s3)

  # S4 Object
  setClass("cars", representation(carNames="character",mpg="numeric",cyl="numeric"))
  carNames <- row.names(s3)
  s4 <- new("cars", carNames=carNames, mpg=s3$mpg, cyl=s3$cyl)
  s4@carNames
  s4@mpg
  s4@mpg[1]
  isS4(s4)





