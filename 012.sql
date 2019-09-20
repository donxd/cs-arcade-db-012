/*Please add ; after each select statement*/
CREATE PROCEDURE suspectsInvestigation2()
BEGIN
    SELECT 
        id, 
        name,
        surname
    FROM 
        Suspect
    WHERE 
        -- ( height >= 170 AND weight > 70 ) OR 
        -- ( weight < 68 AND weight > 54 ) -- OR 
        height <= 170 OR 
        ( name not like 'B_' and surname not like 'Gre_n' ) OR 
        -- ( height > 170 and surname like 'Gre_n' ) 
        ( name like '_B' and surname like 'Gre_n' )
        -- ( name like 'B%' and surname like 'Gre_n')
        -- ( weight < 68 AND weight > 55 ) OR 
        -- ( weight = 55 )
        
        -- x ( 
         -- weight > 54 AND height > 184
        -- )
        -- x ( 
         -- weight > 66 AND height > 169
        -- )
        -- x ( 
           -- weight > 59 AND height > 164
        -- )
        -- ( 
           -- weight > 69 AND height > 179
        -- )
        -- ( 
           --  weight > 55 AND height > 185
        -- )
        -- height > 199
        -- height > 180
        -- weight > 70 OR 
        -- ( weight > 70 AND -- OR 
        -- height > 179 )
    GROUP BY 
        id 
    ORDER BY 
        id;
END