package com.example.gamity.controller;

import com.example.gamity.constants.Constants;
import com.example.gamity.controller.bean.Category;
import com.example.gamity.controller.bean.Game;
import com.example.gamity.controller.bean.Rating;
import com.example.gamity.controller.bean.User;
import com.example.gamity.dao.GameDao;
import com.example.gamity.service.CategoryService;
import com.example.gamity.service.GameService;
import com.example.gamity.service.RatingService;
import com.example.gamity.service.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mysql.cj.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller

public class UserController {

    @Autowired
    UserService userService;
    @Autowired
    GameService gameService;
    @Autowired
    CategoryService categoryService;
    @Autowired
    RatingService ratingService;

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String aboutPage() {
        return "AboutPage";
    }


    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contactPage() {
        return "ContactPage";
    }

    @RequestMapping(value = "/contact", method = RequestMethod.POST)
    public String contactPagePost() {
        return "ContactPage";
    }

    // Will probably be updated
    @RequestMapping(value = "/errorPage", method = RequestMethod.GET)
    public String errorPage(){
        return "ErrorPage";
    }

    @RequestMapping(value = "/forgot", method = RequestMethod.GET)
    public String forgotPage(){
        return "ForgotPasswordEmailConfirm";
    }

    @RequestMapping(value = "/forgotOg", method = RequestMethod.GET)
    public String forgotPageOg(){
        return "ForgotPasswordPage";
    }

    @RequestMapping(value = "/GameCategories", method = RequestMethod.POST)
    public String gameCategories(ModelMap model, @RequestParam long idCategory) throws JsonProcessingException {
        Category category = categoryService.getCategory(idCategory);
        model.put("categoryName", category.getNameCategory());
        List<Game> games = gameService.getAllGamesByCategory(idCategory); // Retrieve all games
        ObjectMapper objectMapper = new ObjectMapper();
        String jsonData = objectMapper.writeValueAsString(games);
        model.put("games", jsonData); // Add the games to the model
        return "GameCategories";
    }

    // might be updated
    @RequestMapping(value = "/GameHostRequest", method = RequestMethod.GET)
    public String gameHostingRequestPage() {
        return "GameHostingRequestPage";
    }
    @RequestMapping(value = "/GameHostRequest", method = RequestMethod.POST)
    public String gameHostingRequestPagePOST() {
        return "GameHostingRequestPage";
    }

    @RequestMapping(value = "/Game", method = RequestMethod.POST)
    public String playGamePagePost(ModelMap model, @RequestParam long gameId) {
        Game game = gameService.getGameById(gameId);
        model.put("gameCode", game.getCode());
        model.put("gameDescription", game.getDescription());
        model.put("gameRating", game.getRating());
        return "GamePlayPage";
    }

    @RequestMapping(value = "/GameRequest", method = RequestMethod.GET)
    public String gameRequestPage() {
        return "GameRequestPage";
    }

    @RequestMapping(value = "/selectGame", method = RequestMethod.GET)
    public String gameSelection(ModelMap model) throws JsonProcessingException {
        List<Game> games = gameService.getAllGames(); // Retrieve all games
        ObjectMapper objectMapper = new ObjectMapper();
        String jsonData = objectMapper.writeValueAsString(games);
        model.put("games", jsonData); // Add the games to the model
        return "GameSelectionPage";
    }

    @RequestMapping(value = "/Home", method = RequestMethod.GET)
    public String homePagev2(){
        return "Homepage";
    }

    @RequestMapping(value = "/Home", method = RequestMethod.POST)
    public String homePage2(){
        return "Homepage";
    }

    @RequestMapping(value = "/ListOfGames", method = RequestMethod.GET)
    public String gamesPage(ModelMap model) throws JsonProcessingException {


        List<Game> games = gameService.getAllGamesName(); // Retrieve all games' names

        String jsonData= "[";
        for(int i = 0; i<games.size(); i++){
           jsonData+= "\n{ name: \""+games.get(i).getGameName() +"\" },";
        }
        jsonData.substring(0, jsonData.length()-2);
        jsonData+= "]";
        model.put("games", jsonData); // Add the games to the model


        return "ListOfGames";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(){
        return "LoginPage";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String welcomePage(ModelMap model, @RequestParam String userId, @RequestParam String password) throws JsonProcessingException {
        System.out.println("Connecting database...");
        User user = userService.getUserByUserId(userId);

        if(user.getPassword().equals(password)) {
            model.put("userId", userId);
            if(user.getRoleId()== Constants.ROLE_ADMIN){
                List<User> usersList = userService.getAllUsers();
                model.put("usersList", usersList);
                List<Game> games = gameService.getAllGames(); // Retrieve all games
                ObjectMapper objectMapper = new ObjectMapper();
                String jsonData = objectMapper.writeValueAsString(games);
                model.put("games", jsonData); // Add the games to the model
                return "GameSelectionPage";
            } else{
                List<Game> games = gameService.getAllGames(); // Retrieve all games
                ObjectMapper objectMapper = new ObjectMapper();
                String jsonData = objectMapper.writeValueAsString(games);
                model.put("games", jsonData); // Add the games to the model
                return "GameSelectionPage";
            }
        }
        model.put("errorMsg", "Please provide the correct userid and password");
        return "LoginPage";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registerPage(Model model){
        User user = new User();
        model.addAttribute("user", user);
        return "RegisterPage";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerPage(@ModelAttribute("user") User user, ModelMap model){
        int count = userService.createNewUser(user);
        if(count != 1){
            model.put("errorMsg", "Some issue occured with registration");
            return "RegisterPage";
        }
        model.put("successMsg", "User created successfully!");
        return"RegisterPage";
    }

    // needs updating
    @RequestMapping(value = "/Dashboard", method = RequestMethod.GET)
    public String userDashboard() {
        return "UserDashboard";
    }

}
