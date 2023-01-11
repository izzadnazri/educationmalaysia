library("ggplot2")

SPM_Achievement <- clean_names(SPM_Achievement)
colnames(SPM_Achievement)[1] ="Year"
colnames(SPM_Achievement)[5] ="NumberOfCandidates"
ggplot(subset(SPM_Achievement,grade %in% c("All Grade A(s)")))+ 
  geom_col(mapping = aes(x=Year, y=NumberOfCandidates, width = 0.6),fill="orange")+
  labs(title="SPM Achievement in Malaysia", subtitle = "All Grade A(s) from 2014-2020",
       caption="Datasets from Jabatan Perangkaan Malaysia (DOSM)")