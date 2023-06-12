package com.example.gamity.controller;

import com.example.gamity.constants.Constants;
import com.example.gamity.controller.bean.Category;
import com.example.gamity.controller.bean.Game;
import com.example.gamity.controller.bean.User;
import com.example.gamity.dao.GameDao;
import com.example.gamity.service.CategoryService;
import com.example.gamity.service.GameService;
import com.example.gamity.service.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String aboutPage() {
        return "AboutPagev2";
    }



    // needs to be updated
    @RequestMapping(value = "/chat", method = RequestMethod.GET)
    public String chatPage() {
        return "chatPage";
    }

    @RequestMapping(value = "/chatv2", method = RequestMethod.GET)
    public String chatPagev2() {
        return "chatPagev2";
    }





    // is good
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contactPagev2() {
        return "ContactPagev2";
    }



    // Will probably be updated
    @RequestMapping(value = "/errorPage", method = RequestMethod.GET)
    public String errorPage(){
        return "ErrorPage";
    }

    @RequestMapping(value = "/errorPagev2", method = RequestMethod.GET)
    public String errorPagev2(){
        return "ErrorPagev2";
    }

    @RequestMapping(value = "/forgot", method = RequestMethod.GET)
    public String forgotPage(){
        return "ForgotPasswordEmailConfirm";
    }

    @RequestMapping(value = "/forgotv2", method = RequestMethod.GET)
    public String forgotPagev2(){
        return "ForgotPasswordEmailConfirmv2";
    }

    @RequestMapping(value = "/forgotOg", method = RequestMethod.GET)
    public String forgotPageOg(){
        return "ForgotPasswordPage";
    }

    @RequestMapping(value = "/forgotOgv2", method = RequestMethod.GET)
    public String forgotPageOgv2(){
        return "ForgotPasswordPagev2";
    }



    // needs to be updated
    @RequestMapping(value = "/GameCategories", method = RequestMethod.GET)
    public String gameCategoriesv0() {
        return "GameCategories";
    }

    @RequestMapping(value = "/GameCategoriesv2", method = RequestMethod.GET)
    public String gameCategoriesv2() {
        return "GameCategoriesv2";
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

    @RequestMapping(value = "/GameHostRequestv2", method = RequestMethod.GET)
    public String gameHostingRequestPagev2() {
        return "GameHostingRequestPagev2";
    }



    // is good
    @RequestMapping(value = "/Game", method = RequestMethod.POST)
    public String playGamePagev2(ModelMap model, @RequestParam long gameId) {
        Game game = gameService.getGameById(gameId);
        model.put("gameCode", game.getCode());
        model.put("gameDescription", game.getDescription());
        model.put("gameRating", game.getRating());

        return "GamePlayPagev2";
    }

    @RequestMapping(value = "/Game", method = RequestMethod.GET)
    public String playGamePage() {
        return "GamePlayPagev2";
    }

    @RequestMapping(value = "/GameRequest", method = RequestMethod.GET)
    public String gameRequestPage() {
        return "GameRequestPage";
    }

    @RequestMapping(value = "/GameRequestv2", method = RequestMethod.GET)
    public String gameRequestPagev2() {
        return "GameRequestPagev2";
    }


    @RequestMapping(value = "/selectGame", method = RequestMethod.GET)
    public String gameSelection(){
        return "GameSelectionPagev2";
    }


    @RequestMapping(value = "/selectGamev2", method = RequestMethod.GET)
    public String gameSelectionv2(ModelMap model) throws JsonProcessingException {
        List<Game> games = gameService.getAllGames(); // Retrieve all games

        ObjectMapper objectMapper = new ObjectMapper();
        String jsonData = objectMapper.writeValueAsString(games);
        model.put("games", jsonData); // Add the games to the model
        return "GameSelectionPagev2";
    }



    @RequestMapping(value = "/Homev2", method = RequestMethod.GET)
    public String homePagev2(){
        return "Homepage";
    }

    @RequestMapping(value = "/Home", method = RequestMethod.GET)
    public String homePage(){
        return "Homepagev2";
    }

    @RequestMapping(value = "/Home", method = RequestMethod.POST)
    public String homePage2(){
        return "Homepagev2";
    }

    @RequestMapping(value = "/ListOfGames", method = RequestMethod.GET)
    public String gamesPage() {
        return "ListOfGamesv2";
    }

    @RequestMapping(value = "/ListOfGamesv2", method = RequestMethod.GET)
    public String gamesPagev2() {
        return "ListOfGamesv2";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(){
        return "LoginPage";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String welcomePage(ModelMap model, @RequestParam String userId, @RequestParam String password){
        System.out.println("Connecting database...");
        User user = userService.getUserByUserId(userId);

        if(user.getPassword().equals(password)) {
            model.put("userId", userId);
            if(user.getRoleId()== Constants.ROLE_ADMIN){
                List<User> usersList = userService.getAllUsers();
                model.put("usersList", usersList);
                return "GameSelectionPagev2";
            } else{
                return "GameSelectionPagev2";
            }
        }
        model.put("errorMsg", "Please provide the correct userid and password");
        return "LoginPage";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registerPage(Model model){
        User user = new User();
        model.addAttribute("user", user);
        return "RegisterPagev2";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerPage(@ModelAttribute("user") User user, ModelMap model){
        int count = userService.createNewUser(user);

        if(count != 1){
            model.put("errorMsg", "Some issue occured with registration");
            return "RegisterPagev2";
        }

        model.put("successMsg", "User created successfully!");
        return"LoginPage";
    }

    @RequestMapping(value = "/registerv2", method = RequestMethod.GET)
    public String registerPagev2(Model model){
        User user = new User();
        model.addAttribute("user", user);
        return "RegisterPage";
    }

    @RequestMapping(value = "/registerv2", method = RequestMethod.POST)
    public String registerPagev2(@ModelAttribute("user") User user, ModelMap model){
        int count = userService.createNewUser(user);

        if(count != 1){
            model.put("errorMsg", "Some issue occured with registration");
            return "RegisterPage";
        }

        model.put("successMsg", "User created successfully!");
        return"LoginPage";
    }



    // is good
    @RequestMapping(value = "/Dashboard", method = RequestMethod.GET)
    public String userDashboard() {
        return "UserDashboard";
    }







}
