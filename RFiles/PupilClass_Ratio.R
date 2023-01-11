library("ggplot2")

View(PupilClass_Ratio)

colnames(PupilClass_Ratio)[2] ="EducationalStage"
colnames(PupilClass_Ratio)[3] ="PupilClassRatio"
ggplot(data=PupilClass_Ratio)+ 
  geom_path(mapping = aes(x=Year, y=PupilClassRatio, color=EducationalStage))+
  scale_y_continuous(expand = expansion(0), limits= c(15,35))+
  labs(title="Pupil Class Ratio", subtitle = "From 2001-2016",
       caption="Datasets from Jabatan Perangkaan Malaysia (DOSM)")