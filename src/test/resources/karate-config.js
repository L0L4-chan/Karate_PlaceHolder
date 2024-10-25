function fn() {
  var config = {
    dom: "https://jsonplaceholder.typicode.com",
    endUser: "users",
    endPost: "posts",
    endComment: "comments"
  };
  var user = {
    name: "user" + (Math.floor(Math.random() * 1000) + 1),
    email: "mail" + (Math.floor(Math.random() * 1000) + 1) + "@example.com"
  };
  karate.write(user, "classpath:data/userData.json");
  karate.log("User data:", user);
  var mail = {
    email: "mail" + (Math.floor(Math.random() * 1000) + 1) + "@example.com"
  };

  config.checkResponseTime = function(response) {
    if (response.time >= 2000) {
      throw new Error("El tiempo de respuesta excede los 2000 ms");
    }
  };

  karate.write(mail, "classpath:data/newEmail.json");
  return config;
}
