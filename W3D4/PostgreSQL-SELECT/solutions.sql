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
		COALESCE(SUM(sales.qty), 0) AS total
		FROM authors
		LEFT JOIN titleauthor
		ON authors.au_id = titleauthor.au_id
		LEFT JOIN sales
		ON sales.title_id = sales.title_id
		GROUP BY authors.au_id , authors.au_lname, authors.au_fname
		ORDER BY total DESC
		LIMIT 3;
		
--Challenge 4 
SELECT 	authors.au_id,
		authors.au_lname,
		authors.au_fname,
		COALESCE(SUM(sales.qty), 0) AS total
		FROM authors
		LEFT JOIN titleauthor
		ON authors.au_id = titleauthor.au_id
		LEFT JOIN sales
		ON sales.title_id = sales.title_id
		GROUP BY authors.au_id , authors.au_lname, authors.au_fname
		ORDER BY total DESC;