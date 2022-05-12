
Liquid Notes
- template language used in shopify themes
- bridge between templates and data
- allow themes to be agnostic and reusable


Syntax:
{{ ... }} # denotes output
{% ... %} } # denotes logic

- objects use dot syntax
- loops allow iteration over objects
- filters manipulate output
- logic controls output flow
- operators allows comparision

{% for image in product.images %} } # logic
<img src="{{ image | img_url: 'medium' }}"> # output
{% endfor %} }

<h2>{{ product.title }}</h2> # get replaced at runtime
# product is the object, title is the property
# dot syntax to access properties


Collections
- collections signified by plural object names
- each individual item has its own properties
- liquid loops allow to output items
- can target individual items directly

ex:
shop.types
shop.metafields


Loops
{% for image in product.images %} }
<img src="{{ image | img_url: 'medium' }}"> # shopify img filter
# for every img, output img tag
{% endfor %} }

<p class="date-time">
{{ article.published_at | date: '%d %B %y '}} # date filter
</p>

{{ 'style.css' | asset_url | stylesheet_tag }}


Operators
- compare variables
>
>
==
!=
>=
<=
or
and
contains