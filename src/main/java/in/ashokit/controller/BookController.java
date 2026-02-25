package in.ashokit.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import in.ashokit.bindings.Book;

@Controller
public class BookController {

    @GetMapping("/books")
    public String getBooks(Model model) {

        List<Book> books = Arrays.asList(
                new Book(101, "Spring", 450.00),
                new Book(102, "Spring Boot", 550.00),
                new Book(103, "Microservices", 650.00),
                new Book(104, "Hibernate", 400.00)
        );

        model.addAttribute("books", books);

        return "books"; // JSP name
    }
}
