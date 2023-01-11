library("ggplot2")

View(EnrolmentRate)

colnames(EnrolmentRate)[2] ="EducationType"
colnames(EnrolmentRate)[3] ="EnrolmentRate"
ggplot(data=EnrolmentRate)+ 
  geom_path(mapping = aes(x=Year,y=EnrolmentRate,color=EducationType))+
  geom_point(mapping = aes(x=Year,y=EnrolmentRate,color=EducationType))+
  labs(title="Enrolment Rate in Malaysian Education", subtitle = "From 2001-2016",
       caption="Datasets from Jabatan Perangkaan Malaysia (DOSM)")