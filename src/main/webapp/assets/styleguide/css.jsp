<%@include file="header.jsp" %>

<h1 class="docs-page-header">CSS</h1>

<div class="docs-section">
    <h2 class="docs-section-header" id="">CSS Framework</h1>
    <p>As stated on our Getting Started page, our framework started with Bootstrap and it's development patters. We are also using portions of Bootstrap that work really well, such as their grid, variable structure, mixins, normalization, and some utilities. From there we fork away from it, by implementing the styles via LESS instead of by classes inside the DOM, and by creating an element and object structure that lets us write more object oriented CSS.</p>
</div>

<div class="docs-section">
    <h2 class="docs-section-header" id="">Elements</h1>
    <p>Elements are our basic building blocks of the site. These are the HTML tags and basic structure of the site. The inputs, the lists, the typography. The styles for these elements are defined in the root of our LESS folder. They aren't terribly useful on their own, but they do have properties, some basic styles, and are mostly used and built upon in Objects. For the most part, these elemental properties shouldn't be used verbatim on the site, but should really be mixing or LESS extended onto objects. Think of these are private variables and mixins to be used in other objects. </p>
</div>

<div class="docs-section">
    <h2 class="docs-section-header" id="">Object Oriented CSS</h1>
    <p>We want to write our CSS in the most object oriented way possible. The simplest way to describe or explain this is to seperate the visual styling from the DOM markup completely, and think of each section of markup as an object. Some objects are going to be small and have just their own properties, but other objects can be complex and be extensions of other simpler objects. What this does is use the power of LESS and extends to assign visual styles from other objects onto your object vs using "cascading" of style sheets.</p>
    <p>The simplest example is a section header. When we create a section header, we should write markup that describes it as a class of "section-header". We should also write our LESS aginst that object. We shouldn't just go with a simple h2 and use the default h2 styles. If the "section-header" is supposed to receive the visual treatment of a second rate header, we can &:extend(.header2) onto it. If the SEO team deems that should be an h2 tag for SEO purposes, make it so, but still assign it the class of what the object actually is and provide it's styles inside the LESS. An example of this is the headers in the styleguide. Note the "docs-section-header" class and LESS extends used in styleguide.less.</p>
</div>

<div class="docs-section">
    <h2 class="docs-section-header" id="">Some Styling rules to live by</h2>

</div>



<%@include file="footer.jsp" %>
