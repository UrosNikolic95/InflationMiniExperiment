# InflationMiniExperiment

Octave script

This experiment was suposed to answer to the question: 
"What would happen if we calculate price over and over again?"

Some observations have been made in this experiment.
1)If efficiancy coeficiant is larger than profit coeficiant, we have deflation.
The eficiancy coeficiant is the ratio  betwen what we produse and what we consume.
If we produce 1.2 times more than we consume then eficiancy coeficiant is 1.2.
For the sake of simplicity simulation uses same eficiancy coeficiant for all resurces.
The profit coeficiant is the ration between seling price and production price.
If the selling price is 1.1 times larger then production price, then profit coeficiant is 1.1.
2)If eficiancy coefficiant is equal to profit coeficiant then prices stay the same.
3)If eficiancy coeficiant is smaler then profit coeficiant, we have inflation, which grows exponentaly, hyperinflation.

4)If eficiancy coeficiant is larger than profit coeficiant, then det(diag(production/profit_coeficiant)-consumption)>0
5)If eficiancy coefficiant is equal to profit coeficiant, then det(diag(production/profit_coeficiant)-consumption)=0
6)If eficiancy coeficiant is smaler then profit coeficiant, then then det(diag(production/profit_coeficiant)-consumption)<0

7)After many iterations, profit_coeficiant/eficiency_coeficiant = (curent price)/(previous price)

The experiment has several problems:
1)It uses idealistic asumptions.
2)We cant take in consideration every factor that exists.
3)We can only use simplified model for experiment.

