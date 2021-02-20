library(tidyverse)
library(readxl)
# Read the main files
v1 <- read_excel("datasets/data_v1.xlsx")
str(v1)

# Read the file - level 3 naics
n_l3 <- read_excel("datasets/NAICS/NAICS_L3.xlsx")

# left join by the number - level 3
v2 <- left_join(v1, n_l3)

# read the file - level 4
n_l4 <- read_excel("datasets/NAICS/NAICS_L4.xlsx")

#left join by the number - level 4
v3 <- left_join(v2, n_l4)

# read the file - level 5
n_l5 <- read_excel("datasets/NAICS/NAICS_L5.xlsx")

#left join by the number - level 5
v4 <- left_join(v3, n_l5)

write.csv(v4, "datasets/data_v2.csv", na = "")
#################################################
# Event 
#################################################
# read v2 Excel
v5 <- read_excel("datasets/data_v2_E.xlsx")

# read the file event v1 
e1 <- read_excel("datasets/oiics/Event/event_l1.xlsx")

# left join by event - level 1
v6 <- left_join(v5,e1)

# read the file event v2 
e2 <- read_excel("datasets/oiics/Event/event_l2.xlsx")

# left join by event - level 2
v7 <- left_join(v6,e2)

# read the file event v3 
e3 <- read_excel("datasets/oiics/Event/event_l3.xlsx")

# left join by event - level 3
v8 <- left_join(v7,e3)

write.csv(v8, "datasets/data_v3.csv", na = "")

#################################################
# Part of Body
#################################################
# read v3 Excel
v9 <- read_excel("datasets/data_v3_E.xlsx")

# read the file part level1 
p1 <- read_excel("datasets/oiics/part/part_l1.xlsx")


# read the file part level2 
p2 <- read_excel("datasets/oiics/part/part_l2.xlsx")

# left join by event - level 2
v11 <- left_join(v9, p2)

# read the file part level 3
p3 <- read_excel("datasets/oiics/part/part_l3.xlsx")

# left join by event - level 3
v12 <- left_join(v11, p3)

# left joion level 1
v13 <- left_join(v12, p1)

#view(v13)
#names(v13)

write.csv(v13, "datasets/data_v4.csv", na = "")

#################################################
# Nature
#################################################
# read  Excel v4 
v14 <- read_excel("datasets/data_v4_E.xlsx")

# read the file nature level1 
n1 <- read_excel("datasets/oiics/Nature/Nature_L1.xlsx")

# left join by nature - level 1

v15 <- left_join(v14, n1)
# read the file nature level 2 
n2 <- read_excel("datasets/oiics/Nature/Nature_L2.xlsx")

# left join by nature - level 2
v16 <- left_join(v15, n2) 


# read the file nature level 3
n3 <- read_excel("datasets/oiics/Nature/Nature_L3.xlsx")


# left join by nature - level 3
v17 <- left_join(v16, n3)

write.csv(v17, "datasets/data_v5.csv", na = "")

#################################################
# Source 1
#################################################
# read Excel v5
v18 <- read_excel("datasets/data_v5_E.xlsx")

# read the file source level1 

s1 <- read_excel("datasets/oiics/Source1/source1_l1.xlsx")
# left join by source - level 1
v19 <- left_join(v18, s1)

# read the file source level2
s2 <- read_excel("datasets/oiics/Source1/source1_l2.xlsx")

# left join by source - level 2
v20 <- left_join(v19, s2)

# read the file source level 3
s3 <- read_excel("datasets/oiics/Source1/source1_l3.xlsx")

# left join by source - level 3
v21 <- left_join(v20, s3)

write.csv(v21, "datasets/data_v6.csv", na = "")

#     Nonclassifiable
#     OTHER SOURCES

#################################################
# Source 2
#################################################
# read Excel v6
v22 <- read_excel("datasets/data_v6_E.xlsx")

# read the file source level1
s2_1 <- read_excel("datasets/oiics/Source2/source2_l1.xlsx")

# left join by source - level 1

v23 <- left_join(v22, s2_1)

# read the file source level 2
s2_2 <- read_excel("datasets/oiics/Source2/source2_l2.xlsx")

# left join by source - level 2

v24 <- left_join(v23, s2_2)

# read the file source level 3
s2_3 <- read_excel("datasets/oiics/Source2/source2_l3.xlsx")

# left join by source - level 3

v25 <- left_join(v24, s2_3)


write.csv(v25, "datasets/data_v7.csv", na = "")






















