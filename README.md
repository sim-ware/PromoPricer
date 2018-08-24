# PromoPricer
Ruby BackEnd code for applying Promotions at Checkout.

## Tips
- Scan items any order
- needs to be flexible, work with Promotional Rules or not, in case they change.
- T.D.D.
- No Frameworks

## Tasks
- Create 'DB' for items (maybe a dictionary)
- Code Checkout
- Code optional promo (separately)

## Coding Checkout
```
co = Checkout​.new​(promotional_rules)
co​.scan​(item)
co​.scan​(item)
price = co​.total
```
Methods:
- .scan // Should add Item to the Basket.
- .total // Should add the Basket's Item's Prices.

Variables:
- promotional_rules // should apply promotional rules to the total price somehow.
- item // the item's hash.

## Example Output

```
Test data
---------
Basket: 001,002,003
Total price expected: £66.78

Basket: 001,003,001
Total price expected: £36.95

Basket: 001,002,001,003
Total price expected: £73.76
```
