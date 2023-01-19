-- Made in Microsoft Server Managment Studio Local Db with default settings

-- Két felhasználót egynek tekintek, ha ugyanaz a Loginjük A és B között
-- Ugyanaz a név két felhasználónál, különböző Loginnel nem okoz gondot

--1.feladat: Szükségünk van minden userre egyszer a listánkban mely mindkét táblában előfordul, Login-ra,  a névre, és a valódi utolsó login dátumra
(select User_A.Login[User Login], User_B.Full_name[User Full Name],
IIF(MAX(User_A.LastLogin) >= MAX(User_B.LoginDate), MAX(User_A.LastLogin), MAX(User_B.LoginDate))[Last Login Time]
from User_A inner join User_B on User_A.Login = User_B.Login_ID
group by User_A.Login, User_B.Full_name)

--2.feladat: Szükségünk van minden userre mely valamelyik táblából hiányzik, Login-ra,  a névre, és a valódi utolsó login dátumra
(select User_A.Login[User Login], User_A.Name[User Full Name], MAX(User_A.Lastlogin)[Last Login Time] from User_A
where not exists (select User_B.Full_name from User_B where User_B.Login_ID = User_A.Login)
GROUP BY User_A.Login, User_A.Name)
UNION
(select User_B.Login_ID[User Login], User_B.Full_name[User Full Name], MAX(User_B.LoginDate)[Last Login Time] from User_B
where not exists (select User_A.Name from User_A where User_A.Login = User_B.Login_ID)
GROUP BY User_B.Login_ID, User_B.Full_name)
