-- 1
SELECT DISTINCT b.cust_name
FROM restBill b
JOIN restRoom_management rm ON b.bill_date = rm.room_date
JOIN restStaff s ON rm.headwaiter = s.staff_no
WHERE s.first_name = 'Charles' AND b.bill_total > 450.00;

-- 2
SELECT s.first_name, s.surname
FROM restStaff s
WHERE s.staff_no = (
    SELECT rm.headwaiter
    FROM restRoom_management rm
    JOIN restBill b ON rm.room_date = b.bill_date
    WHERE b.cust_name = 'Nerida Smith' AND b.bill_date = 160111 );

---3
SELECT b.cust_name
FROM restBill b
WHERE b.bill_total = (SELECT MIN(bill_total) FROM restBill);

--4
SELECT s.first_name, s.surname
FROM restStaff s
WHERE s.staff_no NOT IN (SELECT DISTINCT waiter_no FROM restBill);

-- 5
SELECT b.cust_name, s.first_name AS headwaiter_first_name, s.surname AS headwaiter_surname, rm.room_name
FROM restBill b
JOIN restRoom_management rm ON b.bill_date = rm.room_date
JOIN restStaff s ON rm.headwaiter = s.staff_no
WHERE b.bill_total = (SELECT MAX(bill_total) FROM restBill);
