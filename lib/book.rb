class Book
 
  def initialize(title)
    @title = title
  end
 
  def title
    @title
  end
 
  def author=(author)
    @author = author
  end
 
  def author
    @author
  end
 
  def page_count=(num)
    @page_count = num
  end
 
  def page_count
    @page_count
  end
 
  def genre=(genre)
    @genre = genre
  end
 
  def genre
    @genre
  end
 
end
Run Learn now, and we get the following:

1) Book #turn_page can turn the page
     Failure/Error: book.turn_page
     NoMethodError:
       undefined method `turn_page' for #<Book:0x0000010145b350 @title="The World According to Garp">
     # ./spec/01_book_spec.rb:37:in `block (3 levels) in <top (required)>'
Giving Our Classes Behavior
So, this is pretty silly. Books can't turn their own pages, but we'll use the missing turn_page method to demonstrate that we don't only give our classes properties.

Like I said above, OOP gives us the opportunity to encapsulate both data and behavior within our classes. Here, we want to be able to make our books turn their pages.

How do we give our books a behavior? Well, we give them methods that do stuff! So, let's give our book a turn_page method:

# book.rb
 
class Book
 
  def initialize(title)
    @title = title
  end
 
  def title
    @title
  end
 
  def author=(author)
    @author = author
  end
 
  def author
    @author
  end
 
  def page_count=(num)
    @page_count = num
  end
 
  def page_count
    @page_count
  end
 
  def genre=(genre)
    @genre = genre
  end
 
  def genre
    @genre
  end
 
  def turn_page
  end
 
end
A quick run of the tests gives us this:

1) Book #turn_page can turn the page
     Failure/Error: expect($stdout).to receive(:puts).with("Flipping the page...wow, you read fast!")
       (#<IO:0x0000010106ac00>).puts("Flipping the page...wow, you read fast!")
           expected: 1 time with arguments: ("Flipping the page...wow, you read fast!")
           received: 0 times with arguments: ("Flipping the page...wow, you read fast!")
     # ./spec/01_book_spec.rb:35:in `block (3 levels) in <top (required)>'
It looks like our turn_page method doesn't really need to do much aside from print something to the screen. So, to make the test pass, let's add a puts statement to our turn_page method:

 
# book.rb
 
class Book
  def initialize(title)
    @title = title
  end
 
  def title
    @title
  end
 
  def author=(author)
    @author = author
  end
 
  def author
    @author
  end
 
  def page_count=(num)
    @page_count = num
  end
 
  def page_count
    @page_count
  end
 
  def genre=(genre)
    @genre = genre
  end
 
  def genre
    @genre
  end
 
  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end
 
end

book = Book.new("Some Title")
book.turn_page
