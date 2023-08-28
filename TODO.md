### The Weather App
Description: Design and develop a weather application that fetches weather data from an API and displays it in a user-friendly manner. The app should allow users to search for a specific city and view its current weather conditions along with a [7-day forecast].

## Requirements

**UI Design**
- Create a visually appealing user interface for the app ✅
- A search bar for entering city names. ✅
- Current weather display, including temperature, weather condition, and an icon representing the weather. ✅
- A forecast section showing weather conditions for the [next 5 days], including dates, temperatures, and icons. ✅

**API Integration:**
- Utilize a weather API of your choice (e.g., OpenWeatherMap, WeatherAPI, etc.) to fetch weather data based on the user's search. ✅
- Implement error handling for network requests and display appropriate messages to the user if there are connectivity issues or invalid data. ✅

**Functionality**
- Allow users to enter a city name in the search bar. ✅
- Display the current weather data for the specified city, including temperature, weather condition, and an icon representing the weather. ✅
- Display the 5-day forecast with relevant details for each day. ✅
- Implement a refresh mechanism to update the weather data. ✅

**State Management**
- Use a state management solution such as Provider, Riverpod, or Bloc to manage the app's state effectively. ✅

**Persistence**
- Implement a simple form of data persistence (e.g., SharedPreferences or Hive) to save the user's last searched city and display it upon app launch. ✅

**Unit Testing**
- Write unit tests for critical parts of the application, such as API calls, data parsing, and state management. ❌ (i didn't have time to do this, but i can send you a link to a repo where i have done this before or we can talk about it in the interview, usually i use mockito and riverpod built in test for this)

**Responsive Design**
- Ensure that the app's UI is responsive and works well on different screen sizes and orientations. ❌ (i didn't have time to do this, but i can send you a link to a repo where i have done this before or we can talk about it in the interview, usually i use adaptive_breakpoints)

**Documentation**
- Provide clear comments in your code to explain the functionality of different components and logic. ✅
- Write a brief README that explains how to set up and run the app. ✅

**Bonus**
- Implement location services to allow users to fetch weather data for their current location(not implemented, it's simply could be implemented in the saved_place_provider)
- Add an option to switch between Celsius and Fahrenheit temperature units. ✅
- Provide detailed weather information (humidity, wind speed, etc.) in a separate screen. ✅
- Enhance the UI with animations and transitions.✅❌
- Implement a dark mode feature. ✅

### Remember
- to break down the task into manageable steps and commit your code regularly to version control (e.g., Git). ✅
- This task will help you practice API integration, state management, UI design, and testing within the context of a real-world app ✅
