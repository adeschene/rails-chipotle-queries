Fourteenth Ruby on Rails Bootcamp assignment.

6 small scripts to analyze a database consisting of Chipotle order information and particularly to answer the questions in the table below:

Question | Answer
---------|--------
How many Burritos were sold? | 1231 |
What were gross sales during this period? | 34500.16 |
What was the most popular menu item? | "Chicken Bowl" |
Which is the most popular kind of meat? | "Chicken" |
Which kind of canned soda is most popular? | "Coca Cola" |
What were gross sales for drinks/food? | 1401.71 / 33098.45 |

The csv file for the data can be found [here](https://github.com/adeschene/rails-chipotle-queries/blob/main/lib/assets/chipotle.csv).

Scripts that were written to answer the questions can be found [here](https://github.com/adeschene/rails-chipotle-queries/tree/main/lib/assets/scripts).

Chipotle data source: https://github.com/thechaudharysab/Chipotle-data_analysis-example

If you want to run these scripts yourself, the easiest way would likely be to just download chipotle.csv, seed.rb, and the scripts folder and then create a new rails application to test them on.

---

Fifteenth Ruby on Rails Bootcamp assignment.

A table with the item name, total sales, and percentage of total gross revenue for each item in the chipotle data.

The code that was used to get this info:
```
Order.group(:item_name).sum(:item_price).to_a.map{
  |name_price| "#{name_price[0]},$%0.2f,%0.2f%%" % [
    pair[1].to_f / 100.0,
    (pair[1].to_f / 3450016) * 100
]}

=> ["name,$sales,percentage%","name,$sales,percentage%",...]
```

|Item                                 |Total Sales|Percentage of Gross Revenue|
|-------------------------------------|-----------|---------------------------|
|Carnitas Salad Bowl                  |$66.34     |0.19%                      |
|Bowl                                 |$29.60     |0.09%                      |
|Chips and Tomatillo-Red Chili Salsa  |$59.75     |0.17%                      |
|Canned Soft Drink                    |$438.75    |1.27%                      |
|Barbacoa Salad Bowl                  |$106.40    |0.31%                      |
|Veggie Bowl                          |$867.99    |2.52%                      |
|Nantucket Nectar                     |$98.31     |0.28%                      |
|Chicken Soft Tacos                   |$1108.09   |3.21%                      |
|Chips and Mild Fresh Tomato Salsa    |$3.00      |0.01%                      |
|Izze                                 |$67.80     |0.20%                      |
|Chicken Salad                        |$81.09     |0.24%                      |
|Chicken Bowl                         |$7342.73   |21.28%                     |
|Carnitas Bowl                        |$736.71    |2.14%                      |
|Barbacoa Burrito                     |$894.75    |2.59%                      |
|Carnitas Salad                       |$8.99      |0.03%                      |
|Steak Bowl                           |$2260.19   |6.55%                      |
|Chips and Tomatillo-Green Chili Salsa|$78.87     |0.23%                      |
|Steak Soft Tacos                     |$536.05    |1.55%                      |
|Salad                                |$14.80     |0.04%                      |
|Veggie Salad Bowl                    |$182.50    |0.53%                      |
|Side of Chips                        |$185.90    |0.54%                      |
|Chips and Roasted Chili Corn Salsa   |$67.85     |0.20%                      |
|Chips and Guacamole                  |$2201.04   |6.38%                      |
|Chicken Burrito                      |$5575.82   |16.16%                     |
|Carnitas Soft Tacos                  |$375.94    |1.09%                      |
|Chips and Fresh Tomato Salsa         |$361.36    |1.05%                      |
|Veggie Salad                         |$50.94     |0.15%                      |
|Crispy Tacos                         |$14.80     |0.04%                      |
|Barbacoa Bowl                        |$672.36    |1.95%                      |
|Veggie Crispy Tacos                  |$8.49      |0.02%                      |
|Chicken Salad Bowl                   |$1228.75   |3.56%                      |
|Chips and Tomatillo Green Chili Salsa|$132.75    |0.38%                      |
|Steak Salad                          |$35.66     |0.10%                      |
|Bottled Water                        |$302.56    |0.88%                      |
|Steak Crispy Tacos                   |$357.34    |1.04%                      |
|Steak Burrito                        |$3851.43   |11.16%                     |
|Barbacoa Crispy Tacos                |$120.21    |0.35%                      |
|Carnitas Burrito                     |$597.83    |1.73%                      |
|Veggie Burrito                       |$934.77    |2.71%                      |
|Burrito                              |$44.40     |0.13%                      |
|Steak Salad Bowl                     |$343.59    |1.00%                      |
|Chips and Roasted Chili-Corn Salsa   |$43.02     |0.12%                      |
|Chicken Crispy Tacos                 |$472.13    |1.37%                      |
|Chips and Tomatillo Red Chili Salsa  |$147.50    |0.43%                      |
|6 Pack Soft Drink                    |$356.95    |1.03%                      |
|Veggie Soft Tacos                    |$73.96     |0.21%                      |
|Canned Soda                          |$137.34    |0.40%                      |
|Barbacoa Soft Tacos                  |$250.46    |0.73%                      |
|Carnitas Crispy Tacos                |$77.96     |0.23%                      |
|Chips                                |$494.34    |1.43%                      |
