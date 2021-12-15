# System plus has asssigned you a task to find that wether a path between two cities exists or not.
# They have given you the information in the form of list of cities where you can reach from that city.
# Function should take two arguments.Function should return true or false

# Below is the list of cities where you can reach from that city. In case of lahore we can see that we can go to kasur and Multan.

# lahore: [kasur ,Multan]
# kasur: []
# Multan: [lahore , islamabad]
# Gungrawala: []
# islamabad: [karachi , peshawar] 
# kashmir: []
# peshawar: [kashmir , Murree , Gungrawala]
# Murree:  []
# karachi: []

# Example:
    # Input  lahore , Gungrawala
    # Output True 
    # Reasoning (lahore ->Multan-> islamabad-> peshawar -> Gungrawala)

    # Input peshawar , Kasur
    # Output false
    # There is not path between peshwar and kasur

# Hint: Graph problem