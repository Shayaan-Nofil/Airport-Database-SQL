# DB_Assignment_2
Database assignment 2 done by i210450 &amp; i210419

Q3  
![Q3](https://user-images.githubusercontent.com/129294873/228567722-80e61489-9f48-44d1-b339-2644fd63e509.png)  
This query finds the registration numbers of airplanes that have never undergone maintenance.  
For this query we made a sub query to get to get the airplane registration numbers that were serviced and then
we just selected the registration numbers from AIRPLANE that are not included in the sub query's registration numbers  


Q4  
![Q4](https://user-images.githubusercontent.com/129294873/228567725-f2473b10-d60a-49de-a3dd-1d43b29672c2.png)  
This query finds the names and addresses of corporations that own airplanes with a capacity greater than 200.  
For this query we join the corporation, airplane, and plane_type tables, along with a where clause on the plane capacity
to find the correct output.

Q5  
![Q5](https://user-images.githubusercontent.com/129294873/228567732-7ca361ab-aeaa-4eed-9444-c7a2a7814f71.png)  
This query finds the average salary of employees who work the night shift (between 10 PM and 6 AM).  
For this query we simply got the average salary from EMPLOYEE table for night shift workers


Q6  
![Q6](https://user-images.githubusercontent.com/129294873/228567737-7b280ac7-c7c2-43f6-adac-5b5d1bf79247.png)  
This query finds the top 5 employees with the highest total number of maintenance hours worked.    
For this query we used the pservice table to to find the sum of service hours for each employee by grouping according
to ssn.

Q7  
![Q7](https://user-images.githubusercontent.com/129294873/228567740-c31d4e48-1ab7-49be-8794-fa15f7102edb.png)    
This query finds the names and registration numbers of airplanes that have undergone maintenance in the past week.  
For this query we use the SDate attribute of PService table to determine if it has been done in the past week
and we group it by Reg# so that if a plane was serviced more than once in the past week, it would not be mentioned again 

Q8  
![Q8](https://user-images.githubusercontent.com/129294873/228567745-dfe41120-9bbc-4689-978d-b38c1c4567ac.png)  
This query finds the names and phone numbers of all owners who have purchased a plane in the past month.  
For this query we use a CASE statement to deal with both type of owners. Both cases have a subquery that return a concatenated field because multiple fields can't be returned. PDate is used to check for purchase within the last month.  


Q9  
![Q9](https://user-images.githubusercontent.com/129294873/228567747-8e5af4c4-72c1-4d4f-ac93-9f8c3c6ad168.png)  
This query finds the number of airplanes each pilot is authorized to fly.  
For this query we simply get the count in FLIES table grouping it by the license numbers  

Q10
![Q10](https://user-images.githubusercontent.com/129294873/228567754-13aa7bb4-6b9f-4092-95f3-7ec88e56ba56.png)  
This query finds the location and capacity of the hangar with the most available space. 
For this query we had to use a sub query to calculate the total amount of planes in each hangers which we preceeded to
subtract from the total capacity of each hangar. After that we ordered the results in descending order, and selected the top row.


Q11  
![Q11](https://user-images.githubusercontent.com/129294873/228567757-1d103236-3388-4c4d-84a9-d5a81fc3d76e.png)  
This query finds the number of planes owned by each corporation, sorted in descending order by number of planes.  
For this query we simply ignore all person entries in the owner table and count the corporation entries grouping them
by the corporation names

Q12  
![Q12](https://user-images.githubusercontent.com/129294873/228567764-3128fa81-a5da-4d64-ad0b-96c6cc278234.png)  
This query finds the average number of maintenance hours per plane, broken down by plane type.  
For this query we joined the plane_type, airplane, and pservice tables, and grouped the result according to plane model.
Along with that we displatyed the average hours worked per plan type in one column.


Q15  
![Q15](https://user-images.githubusercontent.com/129294873/228567768-ade2686a-d878-4565-a362-23de25234b0a.png)  
This query finds the names of pilots who are qualified to fly a plane that is currently undergoing maintenance.  
For this query we use a sub query that uses SDate to determine the planes being serviced on the current day and it gives the model numbers for these planes. The main query goes through the flies table and if a model number is in the model numbers returned by the subquery, then that pilot;s name and license number is displayed. It is grouped by pilot names so they're not repeated

Q16  
![Q16](https://user-images.githubusercontent.com/129294873/228567770-10a9cd3d-bd7c-41be-8803-827f0e6671aa.png)  
This query finds the names of employees who have worked on planes owned by a particular corporation, sorted by the total number of maintenance hours worked.
For this query we joined pperson, employee, pservice, airplane, and owns table where we equalled the corporation name from owns table to a particular corp.
After that we grouped according to the person name, and ordered by the sum of service hours worked in descending order.

Q17  
![Q17](https://user-images.githubusercontent.com/129294873/228567871-5912849b-f1f6-4e61-93fd-2a4951d08a5f.png)  
This query finds the names and registration numbers of airplanes that have never been owned by a corporation or undergone maintenance work from an employee who works the day shift.  
For this query we use a sub query that uses another sub query. The inner most sub query returns the registration numbers of all the planes that have ever been serviced by a day shift employee. The outer sub query returns all other registration numbers of planes that were either serviced by night shift employees only or they were not serviced at all. The main query uses the OWNS table to check if the registration number is in the registration numbers returned by the sub query. It also checks that O_Type is Person so that it's not owned by a corporation.  


Q19  
![Q19](https://user-images.githubusercontent.com/129294873/228567875-83014c89-d40e-48b6-b750-7861f1289a96.png)  
This query finds the total number of planes stored in each hangar.  
This query simply gets the count from AIRPLANE table and groups it by hangar number.  

Q20  
![Q20](https://user-images.githubusercontent.com/129294873/228567884-99d31604-204f-45b1-bad4-ae9fbd0dc3f4.png)  
This query finds the total number of planes of each plane type.
For this query, we joined the airplane and plane_type tables, where we grouped by plane model, and calculated the sum of entries in each group.

Q21  
![Q21](https://user-images.githubusercontent.com/129294873/228567890-fb43f76b-9828-4342-a9bf-395aac3b2b0f.png)  
This query finds the total number of services performed on each plane.  
This query just gets the count of each registration number in the PService table. It uses Left Join for AIRPLANE and PService to also include the planes that have never been serviced. 

Q22  
![Q22](https://user-images.githubusercontent.com/129294873/228567895-e3307915-9859-438d-ab04-68ebb0791a8a.png)  
This query finds the average salary of employees in each shift.  
for this query we selected the shift worked, and the avg salary from the employee table and grouped it according to shift.

Q23  
![Q23](https://user-images.githubusercontent.com/129294873/228567900-ed2acadb-70bb-4ace-9ac5-7bcc68dfd84c.png)  
This query finds the total number of planes each owner owns.  
For this query we are using a CASE statement to deal with both type of owners. If the owner is a person, then a sub query is used to get the name of the person from their SSN.  


Q24  
![Q24](https://user-images.githubusercontent.com/129294873/228567904-ef6e426e-3865-4e3b-bb71-a015c3263530.png)  
This query finds the total number of planes each owner owns.  
For this query we selected the person name, and the count of the amount of entries of one particular license number in the flies table. We had to join the person,
pilot and flies table for this. We grouped by person name.

Q25  
![Q25](https://user-images.githubusercontent.com/129294873/228567973-60fd4cf4-8a57-4416-b26c-feabb359ec72.png)  
The first query checks how many more planes can each hangar still store.  
For this query we use a sub query to get the count of each hangar from the AIRPLANE table and this count is then subtracted from the Capacity in HANGAR table to get the capacity left.        
  
The second query gets the names and license numbers of pilots with no restrictions.  
For this query we simply get the records from PILOT table where the restriction column says none.  
  
The third query finds the name of the plane type with most number of planes.  
For this query we count each occurrence of a model number in the AIRPLANE table. For the one with the most number of planes, we simply get the first row in descending order.  
  
The fourth query finds skilled enough employees who could work on more than 2 types of planes.  
For this query we check for a model number being repeated more than twice for the same employee's SSN in the WORKS_ON table. We group it by empoyee names so they are not repeated.
 
  
  


