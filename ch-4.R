## ch-4.R
## exercises from chap 4 of dog bayes

show(HairEyeColor)
dim(HairEyeColor)
?apply
EyeHairFreq = apply(HairEyeColor, c("Eye", "Hair"), sum)
EyeHairFreq
(EyeHairProp = EyeHairFreq/sum(EyeHairFreq))
show(round(EyeHairProp, 2))
(HairFreq = apply(EyeHairFreq, c("Hair"), sum))
HairProp = HairFreq/sum(HairFreq)
HairProp
show(round(HairProp, 2))
(EyeFreq = apply(HairEyeColor, c("Eye"), sum))
EyeProp = EyeFreq/sum(EyeFreq)
show(round(EyeProp, 2))
EyeHairProp["Blue",]/EyeProp["Blue"]


## 4.3 What is prob of drawing a 10 from pinochle deck
## dech = 48 cards
vals <- c("9", "10", "J", "Q", "K", "A")
vals <- c(vals, vals)
suits <- c("heart", "diamond", "club", "spade")
cards <- expand.grid(value = vals, suits = suits)
t <- table(cards)


## 4.4