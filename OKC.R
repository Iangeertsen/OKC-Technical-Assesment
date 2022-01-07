
shotdata <- read.csv("shots_data_w_zones.csv")


#Shot Distribution

#Corner 3s shot distribution percentage, Team A
NROW(shotdata$Shot.Type[shotdata$team == "Team A" & shotdata$Shot.Type == "Corner 3"]) /NROW(shotdata$team[shotdata$team == "Team A"])

#Non Corner 3s shot distribution percentage, Team A
NROW(shotdata$Shot.Type[shotdata$team == "Team A" & shotdata$Shot.Type == "Non Corner 3"]) /NROW(shotdata$team[shotdata$team == "Team A"])

#Two Pointers shot distribution percentage, Team A
NROW(shotdata$Shot.Type[shotdata$team == "Team A" & shotdata$Shot.Type == "Two Point"]) /NROW(shotdata$team[shotdata$team == "Team A"])

#Corner 3s shot distribution percentage, Team B
NROW(shotdata$Shot.Type[shotdata$team == "Team B" & shotdata$Shot.Type == "Corner 3"]) /NROW(shotdata$team[shotdata$team == "Team B"])

#Non Corner 3s shot distribution percentage, Team B
NROW(shotdata$Shot.Type[shotdata$team == "Team B" & shotdata$Shot.Type == "Non Corner 3"]) /NROW(shotdata$team[shotdata$team == "Team B"])

#Two Pointers shot distribution percentage, Team B
NROW(shotdata$Shot.Type[shotdata$team == "Team B" & shotdata$Shot.Type == "Two Point"]) /NROW(shotdata$team[shotdata$team == "Team B"])


#Effective Field Goal Percentage

#Team A
(NROW(shotdata$fgmade[shotdata$fgmade == "1" & shotdata$team == "Team A"]) + (NROW(shotdata$team[shotdata$team == "Team A" & shotdata$fgmade == "1"]) - NROW(shotdata$team[shotdata$team == "Team A" & shotdata$fgmade == "1" & shotdata$Shot.Type == "Two Point"]))/2)/280

#Team A, Corner 3s
NROW(shotdata$fgmade[shotdata$fgmade == "1" & shotdata$team == "Team A" & shotdata$Shot.Type == "Corner 3"])*1.5 / NROW(shotdata$fgmade[shotdata$team == "Team A" & shotdata$Shot.Type == "Corner 3"])

#Team A, Non Corner 3s
NROW(shotdata$fgmade[shotdata$fgmade == "1" & shotdata$team == "Team A" & shotdata$Shot.Type == "Non Corner 3"])*1.5 / NROW(shotdata$fgmade[shotdata$team == "Team A" & shotdata$Shot.Type == "Non Corner 3"])

#Team A, Two Pointers
NROW(shotdata$fgmade[shotdata$fgmade == "1" & shotdata$team == "Team A" & shotdata$Shot.Type == "Two Point"]) / NROW(shotdata$fgmade[shotdata$team == "Team A" & shotdata$Shot.Type == "Two Point"])

#Team B
(NROW(shotdata$fgmade[shotdata$fgmade == "1" & shotdata$team == "Team B"]) + (NROW(shotdata$team[shotdata$team == "Team B" & shotdata$fgmade == "1"]) - NROW(shotdata$team[shotdata$team == "Team B" & shotdata$fgmade == "1" & shotdata$Shot.Type == "Two Point"]))/2)/280

#Team B, Corner 3s
NROW(shotdata$fgmade[shotdata$fgmade == "1" & shotdata$team == "Team B" & shotdata$Shot.Type == "Corner 3"])*1.5 / NROW(shotdata$fgmade[shotdata$team == "Team B" & shotdata$Shot.Type == "Corner 3"])

#Team B, Non Corner 3s
NROW(shotdata$fgmade[shotdata$fgmade == "1" & shotdata$team == "Team B" & shotdata$Shot.Type == "Non Corner 3"])*1.5 / NROW(shotdata$fgmade[shotdata$team == "Team B" & shotdata$Shot.Type == "Non Corner 3"])

#Team B, Two Pointers
NROW(shotdata$fgmade[shotdata$fgmade == "1" & shotdata$team == "Team B" & shotdata$Shot.Type == "Two Point"]) / NROW(shotdata$fgmade[shotdata$team == "Team B" & shotdata$Shot.Type == "Two Point"])

