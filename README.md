ITC172ExampleFilesForAssignment2
================================
This AspNet web site covers the essentials needed for the second assignment in ITC172. 

It includes a master page, a stylesheet, and three content pages. On the first content
page there is a form for entering new customers. The content is written to a class
that is stored in a session variable.

The second content page recalls the object from the session variable and displays the
content in textboxes for the user to confirm. When the user confirms the lastname is passed
to the third content page by means of http Get. The page gets the name from the 
http string and thanks the customer for his or her submission
