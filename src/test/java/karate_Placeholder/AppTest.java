package karate_Placeholder;

import com.intuit.karate.junit5.Karate;

import junit.framework.TestCase;

/**
 * Unit test for simple App.
 */
public class AppTest 
    extends TestCase
{
      @Karate.Test
    Karate testPostUser() {
        return Karate.run("postUser.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testPostComment() {
        return Karate.run("postComment.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testListComment() {
        return Karate.run("getListing.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testIDComment() {
        return Karate.run("getCommentbyID.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testUserComment() {
        return Karate.run("getListingofpostByuser.feature").relativeTo(getClass());
    }
}
