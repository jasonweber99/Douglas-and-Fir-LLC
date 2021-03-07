# Monmouth-Independence Visitor Center Website
The Monmouth-Independence Visitor Center Website will be a hub of information for visitors. There will be information about local businesses and attractions. Business owners will be able to update information about their businesses directly on the site. In addition, visitors will be able to use our itinerary-planning feature to plan visits to the area.

This website will serve as the senior capstone project for Douglas and Fir, LLC at Western Oregon University. The Monmouth-Independence Visitor Center currently does not have a web presence and we have been asked by the Executive Director of the Monmouth-Independence Chamber of Commerce to undertake this project.

### Links
- [Vision Statement](https://github.com/jasonweber99/Douglas-and-Fir-LLC/blob/dev/diagrams/Vision_Statement.md)
- [Custom Styling](#custom-class-styling)

## Deployment
[Website](https://mivisitorcenterdev.azurewebsites.net/) for Dev branch deployment at end of sprint.

## Contributors

### Team Members
* [Jason Weber](https://github.com/jasonweber99)
* [John Kirk III](https://github.com/jkirkiii19)
* [Kelby Evans](https://github.com/kelbyevans)
* [Quincey Freeman](https://github.com/quinceyfreeman)

### Project Advisor
* [Scot Morse](https://github.com/morses)

### Weekly Schedule
* Monday 9-10am: Advisor Meeting
* Tuesday 2-4pm: Team Meeting
* Thursday 3-5pm: Team Meeting

## Software Development Processes
* Disciplined Agile Delivery
* Scrum

## Technology Stack
* ASP.NET Core 3.1
* Bootstrap 4
* Microsoft Azure for WebApp and database deployment
* GitHub-Azure continuous deployment

## Coding Conventions
* [BEM](getbem.com/naming) naming convention for HTML/CSS
* General [C#](https://www.c-sharpcorner.com/UploadFile/8a67c0/C-Sharp-coding-standards-and-naming-conventions/) naming conventions
* Files and folders should be in PascalCase
* All models should be named in PascalCase
  * Models with corresponding database entities should be auto-generated
* View model names: {ViewName}ViewModel.cs
* Primary keys should always be named "ID"
* Database, entity, and attribute names should all be in PascalCase
* When possible, any additions to Models should be done by creating a partial class in a new file named {ModelName}Partial
* All local databases should be named according to the [ERD](https://github.com/jasonweber99/Douglas-and-Fir-LLC/blob/dev/diagrams/MIVisitorCenter.png)

## Git Conventions
* All merges to dev should be done through pull requests, to be reviewed by [Jason Weber](https://github.com/jasonweber99)
* Merges to main will be done at the end of the sprint review meeting
* Don't commit code that doesn't compile
* Feature branches should be named f{ID}


# Custom Class Styling

Here are some examples for the adheared styling for the Monmouth-Independence Visitor Center website. Below are some elements that have been altered from the original styling and how to access these elements through classes.

## Quick Links
- [Font](#font)
- [Headings](#headings)
- [Text](#text)
- [Navbar](#navbar)
- [Forms](#forms)
- [Accordion](#accordion)
- [Table](#table)
- [Buttons](#buttons)
- [Images](#images)
- [Color Scheme](#color-scheme)

## Font
DF has decided to select a modern font that users of the website will see across all pages. The fonts selected to be used for the website is 'Noto Sans JP' and 'Bebas Neue'. These font can be found on [Google Font](https://fonts.google.com) and are imported into the website using a stylesheet link in `Shared/_Layout.cshtml`. Below is an example of the fonts.

![](https://i.imgur.com/lNOacKX.png)

## Headings

```html
<h1 style='font-weight: [selected-weight]; font-style: [selected-style]'> Heading </h1>
```

Headings will adhere to using the 'Bebas Neue' font. This fonts will be shown for all header elements.
>Since the imported heading font only has one weight, `selected-weight` does not affect the weight of the font. If the heading needs to be bold, use `selected-weight='bold'`. Header `font-style` may be italic.

## Text

```html
<p style='font-weight: [selected-weight]; font-style: [selected-style]'> Paragraph </p>
```

Text elements such as `<p>,<a>...` will adhere to using the 'Noto Sans JP' font. This font will be shown for any text element on the website
>Since imported text font has multiple weights, `selected-weight` can be `100,300,400,500,700` or `900`. Text `font-style` may be italic.

## Navbar

The navbar that the website will use is a customized version of the navbar in the UIKit 3 library. This navbar will show links to pages at the left and will allows users to sign into their accounts to the right. The navbar for mobile is implemented using the Off-Canvas navigation from UIKit.

Below are code implementations for the navbar

> Implementation for navbar
```html
<div class="nav-contents">
    <div uk-sticky="sel-target: .uk-navbar-container; cls-active: uk-navbar-sticky">
        <nav class="uk-navbar-container uk-navbar" uk-navbar>
            <div class="uk-navbar-left">
                <ul class="uk-navbar-nav">
                    <li class="uk-active"><a href="#">Title</a></li>
                    <li class="hidden-mobile"><a href="#">Link 1</a>
                        <div class="uk-navbar-dropdown">
                            <ul class="uk-nav uk-navbar-dropdown-nav">
                                ...
                            </ul>
                        </div>
                    </li>
                    <li class="hidden-mobile"><a href="#">Link 2</a></li>
                    <li class="hidden-mobile"><a href="#">Link 3</a></li>
                </ul>            
            </div>
            <div class="uk-navbar-right">
                <ul class="uk-navbar-nav uk-visible@s">
                    <li class="hidden-mobile"><a class="uk-text-large" href="#">Sign In</a></li>
                    <li class="hidden-mobile"><a class="uk-text-large" href="#">Sign Out</a></li>
                </ul>
                <a href="#" class="uk-navbar-toggle hidden-desktop" uk-navbar-toggle-icon uk-toggle="target: #offcanvas-nav"></a>
            </div>
        </nav>
    </div>
</div>
```

> Implementation for Off-Canvas (Mobile Navigation)
```html
<div id="offcanvas-nav" uk-offcanvas="overlay: true">
    <div class="uk-offcanvas-bar">
        <ul class="uk-nav uk-nav-default">
            <li class="uk-parent"><a href="#">What to Do</a>
                <ul class="uk-nav-sub">
                ...
                </ul>
            </li>
            ...
        </ul>
    </div>
</div>
```

>Note that there are classes `hidden-mobile` and `hidden-desktop` that are made to not show some nav elements. This allows for the "hamburger" element to not display on desktop and some link elements to not display on mobile.

Using the implementation above, the navbars can be displayed as

![](https://i.imgur.com/SWclasf.png)

## Accordion

The website will use a customized UIKit accoridan class to display images with labels that can expand to show more information. These accoridans will be used as default whenever an accordian class is needed. 

Below is an example for an accorian class

```html
<ul class="uk-accordian--custom" uk-accordion >
    <li><a 
        href="#" 
        class="uk-accordion-title uk-height-medium uk-flex uk-flex-center uk-flex-middle uk-background-cover uk-light"
        data-src="(Name of Image Here)"
        data-sizes="(min-width: 650px) 650px, 100vw"
        style="color: #fff; border-radius: 10px;"
        uk-img>Title of Accordian
        </a>
        <div class="uk-accordion-content uk-flex uk-flex-center">
            <!-- Accordian Content -->
        </div>
    </li>
</ul> 
```

>Note that this accordian class is already custom styled so there is no need to style as this accordian class is mobile friendy

Using the custom class above, a set of accordian elements can be displayed as

![](https://i.imgur.com/2Z0MakR.jpg)

## Table

The website will use UIKit tables to help maintain a mobile-reponsive experience. Below is an example of a table from the UIKit library to demonstate the mobile-responsiveness

```html
<table class="uk-table uk-table-justify uk-table-responsive uk-table-middle uk-table-divider">
...
</table>
```

Note how the table uses the `uk-table-reponsive` class, which allow for tables to be displayed as

![](https://i.imgur.com/pa0xSat.png)

>For a more detailed list of all the available classes for tables, visit the [Table](https://getuikit.com/docs/table) documetation.

## Buttons

The website will use slightly styled buttons from UIKit to stay cohesive across all elements of the website. Below are UIKits implementation for buttons

```html
<button class="uk-button uk-button-default">Default</button>
<button class="uk-button uk-button-primary">Primary</button>
<button class="uk-button uk-button-secondary">Secondary</button>
```

>These buttons are styled directly so there is no need to call an extra class

![](https://i.imgur.com/eFo1O2O.png)

## Forms

The website will use custom styled forms from UIKit. These form elements have been styled directly, so there is no need to style them to keep the website cohesive. Below is an example of a code implementation of the form elements 

```html
<form class="uk-align-center" style="width: 70%;"">
    <fieldset class="uk-fieldset">
    
    <legend class="uk-legend">Form Example</legend>
    
    <div class="uk-margin">
        <input class="uk-input" type="text" placeholder="Input">
    </div>
    
    <div class="uk-margin">
        <select class="uk-select">
            <option>Option 01</option>
            <option>Option 02</option>
        </select>
    </div>
    
    <div class="uk-margin">
        <textarea class="uk-textarea" rows="5" placeholder="Textarea"></textarea>
    </div>
    
    <div class="uk-margin uk-grid-small uk-child-width-auto uk-grid">
        <label><input class="uk-radio" type="radio" name="radio2"> A</label>
        <label><input class="uk-radio" type="radio" name="radio2"> B</label>
    </div>
    
    <div class="uk-margin uk-grid-small uk-child-width-auto uk-grid">
        <label><input class="uk-checkbox" type="checkbox"> A</label>
        <label><input class="uk-checkbox" type="checkbox"> B</label>
    </div>
    
    <div class="uk-margin">
        <input class="uk-range" type="range" value="2" min="0" max="10">
    </div>

    <div class="uk-margin uk-text-center">
        <button class="uk-button uk-button-primary">Submit</button>
    </div>
    
    </fieldset>
</form>
```

Using the styles for forms designated, the above form would be displayed as

![](https://i.imgur.com/QiZMGwb.png)

## Images

This class can be used for image headers on pages that are cohesive with pages that include an accordion list of businesses. This class is also mobile-responsive so there is no need for additional styling other than what is shown in the example example below

```html
<div class="image-container">
    <div class="image-cover" data-src="(Image Path)" data-sizes="(min-width: 650px) 650px, 100vw" uk-img>
        <div class="accordion-title-card">Title For Image Here</div>
    </div>
</div>
```

The above code sample would produce an image such as

![](https://i.imgur.com/54jaJRj.png)



## Color Scheme

The color scheme of the website will be the color theme for the website can be viewed below. Elements such as `<button>` and `<form>` have  been styled to adhere to this color scheme.

![](https://i.imgur.com/wzdm8Yw.png)

>Note that this custom styling is subject to change as progress is made to the website and feedback is received from the stakeholders.