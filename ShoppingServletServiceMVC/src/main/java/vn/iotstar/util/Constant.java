package vn.iotstar.util;

import java.io.File;

public class Constant {
    public static final String SESSION_USERNAME = "username";
    public static final String COOKIE_REMEMBER = "username";
    public static final String REGISTER = "/views/register.jsp";

    // Thư mục upload: trên macOS dùng ~/upload
    public static final String DIR = System.getProperty("user.home") + File.separator + "upload";

    static {
        File uploadDir = new File(DIR + File.separator + "category");
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }
    }

    public static class Path {
        public static final String REGISTER = "/views/register.jsp";
        public static final String LOGIN = "/views/login.jsp";
        public static final String ADMIN_HOME = "/views/admin/home.jsp";
        public static final String WEB_HOME = "/views/web/home.jsp";
    }
}
