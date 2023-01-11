library("ggplot2")

View(PupilTeacher_Ratio)

colnames(PupilTeacher_Ratio)[2] ="EducationalStage"
colnames(PupilTeacher_Ratio)[3] ="PupilTeacherRatio"
ggplot(data=PupilTeacher_Ratio)+ 
  geom_path(mapping = aes(x=Year, y=PupilTeacherRatio, color=EducationalStage))+
  labs(title="Pupil Teacher Ratio", subtitle = "From 2001-2016",
       caption="Datasets from Jabatan Perangkaan Malaysia (DOSM)")