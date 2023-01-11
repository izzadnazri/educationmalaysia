library("ggplot2")

View(NoOf_Teachers)

ggplot(data=NoOf_Teachers)+ 
  geom_col(mapping = aes(x=Year, y=Total, fill=Educational_stage, width = 0.6))+
  labs(title="No of Teachers in Malaysia", subtitle = "From 2000-2020",
       caption="Datasets from Jabatan Perangkaan Malaysia (DOSM)")