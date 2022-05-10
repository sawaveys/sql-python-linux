cost=0
while(True):
    cup=input("Do you want small, medium or large?")
    if(cup=="small"):
        cost+=2
        break 
    elif(cup=="medium"):
        cost+=3
        break
    elif(cup=="large"):
        cost+=4
        break
    else:
        print("Please only enter small medium or large")
while(True):
    coffee=input("Do you want brewed, espresso or cold press?")
    if(coffee=="brewed"):
        break
    elif(coffee=="espresso"):
        cost+=0.5
        break
    elif(coffee=="cold press"):
        cost+=1
        break
    else:
        print("Invalid input of coffee kind")
flavour=input("Would you like to add a flavoured syrup? (Yes or No)")
if(flavour=="yes" or flavour=="Yes"):
    while(True):
        flavourType=input("Do you want hazelnut, vanilla or caramel?")
        if(flavourType=="hazelnut" or flavourType=="vanilla" or flavourType=="caramel"):
            cost+=0.5
            break
        else:
            print("Sorry we dont have that flavour ! please pick from the options we have")
print("You asked for a " +cup+" cup of "+coffee+" coffee with "+flavourType+" syrup.")
#add the tip 
cost+=cost*0.15
print("The price with a tip is %.2f"%(cost))