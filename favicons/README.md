# Favicons

Pregenerated favicons and tiles for maximum device compatibility.

These assets should be deployed at the site root and included in an HTML page
with the following snippet:

```html
<html>
  <head>
    <!-- rest ... -->

    <!-- generics -->
    <link rel="icon" href="/favicon-32x32.png" sizes="32x32" />
    <link rel="icon" href="/favicon-128x128.png" sizes="128x128" />
    <link rel="icon" href="/favicon-192x192.png" sizes="192x192" />

    <!-- Android -->
    <link rel="shortcut icon" sizes="196x196" href="/favicon-196x196.png" />

    <!-- iOS -->
    <link rel="apple-touch-icon" href="/favicon-152x152.png" sizes="152x152" />
    <link rel="apple-touch-icon" href="/favicon-180x180.png" sizes="180x180" />

    <!-- Safari pinned tab icon -->
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="black" />

    <!-- Windows 8 IE 10 -->
    <meta name="msapplication-tilecolor" content="#ffffff" />
    <meta name="msapplication-tileimage" content="/mstile-150x150.png" />

    <!-- Windows 8.1 + IE11 and above -->
    <meta name="msapplication-config" content="/browserconfig.xml" />

    <!-- Progressive webapp -->
    <link rel="manifest" href="/site.webmanifest" />

    <!-- rest ... -->
  </head>
  <!-- rest ... -->
</html>
```
