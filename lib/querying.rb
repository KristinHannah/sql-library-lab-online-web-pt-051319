def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books 
  WHERE series_id = 1 
  ORDER BY books.year;
  "
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto 
  FROM characters 
  ORDER BY length(characters.motto) DESC
  LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species)
  FROM characters 
  WHERE characters.species = 'human';"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM series 
  INNER JOIN authors
  ON series.author_id = authors.id
  INNER JOIN subgenres 
  ON series.subgenre_id = subgenres.id;
  "
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM characters
  INNER JOIN series 
  ON characters.series_id = series.id
  GROUP BY series.title
  HAVING MAX(characters.species = 'human')
  LIMIT 1;
  "
end
    
    #SELECT 
#FROM
#JOIN
#  ON
#WHERE
#GROUP BY
#HAVING
#ORDER BY
#LIMIT
    
def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.id) AS book_count
  FROM character_books
  INNER JOIN characters
  ON characters.id = character_books.character_id
  GROUP BY character_books.character_id
  ORDER BY book_count DESC, characters.name;"
end
