library("ggplot2")

View(FederalGovernment_Expenditure)

#Total expenditure on education (RM million)
ggplot(subset(FederalGovernment_Expenditure,Item %in% c("Total expenditure on education (RM million)")))+ 
  geom_path(mapping = aes(x=Year,y=Value),color="orange")+
  geom_point(mapping = aes(x=Year,y=Value))+
  labs(title="Total expenditure on education (RM million)", subtitle = "From 2012-2019",
       caption="Datasets from Jabatan Perangkaan Malaysia (DOSM)")

#Total expenditure on education per capita (RM)
ggplot(subset(FederalGovernment_Expenditure,Item %in% c("Total expenditure on education per capita (RM)")))+ 
  geom_path(mapping = aes(x=Year,y=Value),color="orange")+
  geom_point(mapping = aes(x=Year,y=Value))+
  labs(title="Total expenditure on education", subtitle = "per capita (RM) from 2012-2019",
       caption="Datasets from Jabatan Perangkaan Malaysia (DOSM)")

#Annual recurrent cost per student (RM)
ggplot(subset(FederalGovernment_Expenditure,Item %in% c("Annual recurrent cost per student (RM)")))+ 
  geom_path(mapping = aes(x=Year,y=Value,color=Details))+
    labs(title="Annual recurrent cost per student (RM)", subtitle = "From 2012-2019",
        caption="Datasets from Jabatan Perangkaan Malaysia (DOSM)")
