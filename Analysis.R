

table(dat$Age.range..Year., dat$Current.status.of.the.patient)
chisq.test(dat$Saturation.of.pulse.oxygen, dat$Current.status.of.the.patient, correct = FALSE)
##Hypertension
dat<- read.csv("comorbidities.csv", header = TRUE)
dat<- dat%>% filter(dat$Current.status.of.the.patient =="Alive" & dat$Hypertension..HTN. ==0)
nrow(dat)
non_h_d <- 54
non_h_a <- 45
h_d <- 41
h_a <- 28
Hypertension <- 
      
      x<- c(41,28)
y<- c(54,45)

#Diabetes

dat<- read.csv("comorbidities.csv", header = TRUE)
dat<- dat%>% filter(dat$Current.status.of.the.patient =="Dead" & dat$Diabetes.mellitus..DM. == 0)
nrow(dat)
non_d_d <- 42
non_d_a <- 38
d_d <- 53
d_a <- 35

x<- c(42,38)

y<- c(53,35)

##Asthma
dat<- read.csv("comorbidities.csv", header = TRUE)
dat<- dat%>% filter(dat$Current.status.of.the.patient =="Alive" & dat$Asthma == 0)
nrow(dat)
non_a_d <- 92
non_a_a <- 61
a_d <- 3
a_a <- 12

x<- c(92,61)

y<- c(3,12)


##Heart Disease
dat<- read.csv("comorbidities.csv", header = TRUE)
dat<- dat%>% filter(dat$Current.status.of.the.patient =="Dead" & dat$Heart.diseases == 0)
nrow(dat)
non_a_d <- 72
non_h_a <- 68
h_d <- 23
h_a <- 5

x<- c(72,68)

y<- c(23,5)

##Kidney Disease

dat<- read.csv("comorbidities.csv", header = TRUE)
dat<- dat%>% filter(dat$Current.status.of.the.patient =="Alive" & dat$Kidney.diseases == 0)
nrow(dat)
non_k_d <- 92
non_k_a <- 71
k_d <- 3
k_a <- 2

x<- c(92,71)

y<- c(3,2)

##Other Chronic Disease
dat<- read.csv("comorbidities.csv", header = TRUE)
dat<- dat%>% filter(dat$Current.status.of.the.patient =="Dead" & dat$Other.chronic.diseases == 0)
nrow(dat)
non_o_d <- 83
non_o_a <- 69
o_d <- 12
o_a <- 4

x<- c(83,69)

y<- c(12,4)



## Symptoms
#Acute Severe Respiratory
dat<- read.csv("symptoms.csv", header = TRUE)
dat<- dat%>% filter(dat$Current.status.of.the.patient =="Dead" & dat$Fever == 0)
nrow(dat)
non_F_d <- 45
non_F_a <- 32
F_d <- 50
F_a <- 41

x<- c(45,32)

y<- c(50,41)
#Cough
dat<- read.csv("symptoms.csv", header = TRUE)
dat<- dat%>% filter(dat$Current.status.of.the.patient =="Alive" & dat$Cough == 0)
nrow(dat)
non_C_d <- 69
non_C_a <- 56
C_d <- 26
C_a <- 17

x<- c(69,56)

y<- c(26,17)
##Vomiting
dat<- read.csv("symptoms.csv", header = TRUE)
dat<- dat%>% filter(dat$Current.status.of.the.patient =="Dead" & dat$Vomiting == 0)
nrow(dat)
non_V_d <- 91
non_V_a <- 73
V_d <- 4
V_a <- 0

x<- c(91,73)

y<- c(4,0)

#Sore throat

dat<- read.csv("symptoms.csv", header = TRUE)
dat<- dat%>% filter(dat$Current.status.of.the.patient =="Alive" & dat$Sore.throat== 0)
nrow(dat)
non_S_d <- 90
non_S_a <- 68
S_d <- 5
S_a <- 5

x<- c(90,68)

y<- c(5,5)

#a<- c(19,2)
##Hypertension

dat<- read.csv("symptoms.csv", header = TRUE)
dat<- dat%>% filter(dat$Current.status.of.the.patient =="Dead" & dat$Hypertension..HTN.== 0)
nrow(dat)
non_H_d <- 92
non_H_a <- 71
H_d <- 3
H_a <- 2

x<- c(92,71)

y<- c(3,2)

#Diarrhoea

dat<- read.csv("symptoms.csv", header = TRUE)
dat<- dat%>% filter(dat$Current.status.of.the.patient =="Alive" & dat$Diarrhea== 0)
nrow(dat)
non_D_d <- 93
non_D_a <- 71
D_d <- 2
D_a <- 2

x<- c(93,71)

y<- c(2,2)

#Others

dat<- read.csv("symptoms.csv", header = TRUE)
dat<- dat%>% filter(dat$Current.status.of.the.patient =="Dead" & dat$Others== 0)
nrow(dat)
non_O_d <- 70
non_O_a <- 55
O_d <- 25
O_a <- 18

x<- c(6,8)

y<- c(89,65)


mat<- matrix(c(x,y), nrow=2, byrow = TRUE)
d1<- as.data.frame(mat)
rownames(d1)<- c("Increase","Decreased")
colnames(d1) <- c("Alive","Dead")
d1

chisq.test(d1, correct = FALSE)





dat<- read.csv("comorbidities.csv", header = TRUE)
dat<- dat[1:168,]
table(dat$Newly.admitted.to.ICU,dat$Current.status.of.the.patient )

x<- c(86,70)

y<- c(9,3)


mat<- matrix(c(x,y), nrow=2, byrow = TRUE)
d1<- as.data.frame(mat)
rownames(d1)<- c("Increase","Decreased")
colnames(d1) <- c("Alive","Dead")
d1
chisq.test(d1, correct = FALSE)







