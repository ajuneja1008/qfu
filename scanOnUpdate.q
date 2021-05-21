// Apply scan or over to iterate over all columns of a row for aggregation

// we initiate a table of quoteIDs, price and qty traded
t: ([quoteID:`$("rfq",/:string[1+til[50]])]; price:50?50.00; qty:50?2000)

// idea is to calculate the cumulative notional traded so far until the next quote is matched
update notionalTradedSoFar:{x+y*z}\[0;price;qty] from t
