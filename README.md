# Acme Widget Co - Basket Proof of Concept

## Overview
This is a Ruby proof of concept for Acme Widget Co’s sales system.

## Features
- Calculates subtotal and delivery based on spend
- Applies offer: “Buy one Red Widget, get the second half price”
- Returns final basket total

## Usage
```bash
ruby example.rb
```

Expected output:
```
B01, G01 -> $37.85
R01, R01 -> $54.37
R01, G01 -> $60.85
B01, B01, R01, R01, R01 -> $98.27
```

## Requirements
- Ruby 3.0+
