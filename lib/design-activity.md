What classes does each implementation include? Are the lists the same?
  Each class includes a CartEntry, a ShoppingCart, and an Order class. Their implementations are not the same. In Implementation B, the price is calculated in every class, whereas in Implementation A only the final price is calculated. 

Write down a sentence to describe each class.
  CartEntry: Takes care of one initial item being put in each shopping vart/ 
  ShoppingCart: Collects the list of all items added to the shopping cart. In Implementation B, it creates a sub-total of the price.
  Order: Instantiates ShoppingCart and sums all of the items in the cart and calculates total price with sales tax.


How do the classes relate to each other? It might be helpful to draw a diagram on a whiteboard or piece of paper.

In IMP.B, order has a ShoppingCart instance and in IMP.A ShoppingCart has a CartEntry instance.



What data does each class store? How (if at all) does this differ between the two implementations?
  CartEntry: stores the quantity and the unit price of each individual object. 
  ShoppingCart: Stores an array of the list of entries into the shopping cart. 
  Order: Order is similar in both classes, but rather than summing the items in the last method in order, it access the subtotals it created in the ShoppingCart class.

What methods does each class have? How (if at all) does this differ between the two implementations?
  CartEntry: constructor and (in Imp. B a price method)
  ShoppingCart: constructor and (in Imp. B a price method)
  Order: constructor and a total_price method

Consider the Order#total_price method. In each implementation:
    Is logic to compute the price delegated to "lower level" classes like ShoppingCart and CartEntry, or is it retained in Order?
      - In Implementation A it is retained in order, but in IMP B it is delegated to each class. 
    
    Does total_price directly manipulate the instance variables of other classes?
      - In IMP A it does - the order class uses @entries from ShoppingCart to creates the total sum, but in IMP. B it does not.

If we decide items are cheaper if bought in bulk, how would this change the code? Which implementation is easier to modify?

I think IMP B would be easier to modify in this case - because the price is determined in each class it could be modified by applying a discount in the CartEntry class

Which implementation better adheres to the single responsibility principle? 
I think IMP B does because it contains the price for each class within itself, unlike IMP which creates a chain that at the end can finally be used to calculate the total_price.

Bonus question once you've read Metz ch. 3: Which implementation is more loosely coupled?

I think IMP is less tightly coupled. It does not directly depend on other classes as does IMP A to find the total price.


My code: In my original code, my classes are very strongly coupled, and they call upon eachother across classes. To improve my design while refactoring, I would like to ensure that the classes only have single responsibility. 