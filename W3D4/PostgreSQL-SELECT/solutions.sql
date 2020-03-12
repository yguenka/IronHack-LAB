-- Challenge 1
SELECT 	authors.au_id,
		authors.au_lname,
		authors.au_fname,
		titles.title,
		publishers.pub_name
		FROM authors
		INNER JOIN titleauthor
		ON authors.au_id = titleauthor.au_id
		INNER JOIN titles
		ON titleauthor.title_id = titles.title_id
		INNER JOIN publishers
		ON titles.pub_id = publishers.pub_id;

-- Challenge 2
SELECT 	authors.au_id,
		authors.au_lname,
		authors.au_fname,
		COUNT(titles.title) AS title_count,
		publishers.pub_name
		FROM authors
		INNER JOIN titleauthor
		ON authors.au_id = titleauthor.au_id
		INNER JOIN titles
		ON titleauthor.title_id = titles.title_id
		INNER JOIN publishers
		ON titles.pub_id = publishers.pub_id
		GROUP BY authors.au_id , authors.au_lname, publishers.pub_name, authors.au_fname
		ORDER BY title_count DESC;

-- Challenge 3
SELECT 	authors.au_id,
		authors.au_lname,
		authors.au_fname,
		(titles.price (*) titles.ytd_sales) AS total
		FROM authors
		INNER JOIN titleauthor
		ON authors.au_id = titleauthor.au_id
		INNER JOIN titles
		ON titleauthor.title_id = titles.title_id
		GROUP BY authors.au_id , authors.au_lname, authors.au_fname, total
		ORDER BY total DESC
		LIMIT 3;
		
		
--## Challenge 3 - Best Selling Author
--Who are the top 3 authors who have sold the highest number of titles? Write a query to find out
--Requirements:
--Your output should have the following columns:
--`AUTHOR ID` - the ID of the author
--`LAST NAME` - author last name
--`FIRST NAME` - author first name
--`TOTAL` - total number of titles sold from this author
--Your output should be ordered based on `TOTAL` from high to low.
--Only output the top 3 best selling authors.


--Challenge 4 - Best Selling Authors Rankin
--Now modify your solution in Challenge 3 so that the output will display all 23 authors instead of the top 3. Note that the authors who have sold 0 titles should also appear in your output (ideally display `0` instead of `NULL` as the `TOTAL`). Also order your results based on `TOTAL` from high to low.
