def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year
  FROM books
  WHERE series_id = 1
  ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  ORDER BY LENGTH(motto) DESC
  LIMIT 1;
  "
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(characters.species) AS species_count
  FROM characters
  ORDER BY species_count ASC
  "
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN series
  ON authors.id = series.author_id
  JOIN subgenres
  ON series.subgenre_id =  subgenres.id;"

end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  JOIN characters
  ON characters.series_id = series.id
  WHERE characters.species = 'human'
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.id) AS book_count
  FROM character_books
  JOIN characters
  ON character_books.character_id = characters.id
  JOIN books
  ON character_books.book_id = books.id
  ORDER BY book_count DESC;"
end
