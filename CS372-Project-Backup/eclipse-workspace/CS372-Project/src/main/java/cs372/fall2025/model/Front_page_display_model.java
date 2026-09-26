package cs372.fall2025.model;

public class Front_page_display_model {
    private String display_title;
    private String display_content;

    public Front_page_display_model(String title, String content) {
        this.display_title = title;
        this.display_content = content;
    }

    public String getDisplay_title() {
        return display_title;
    }

    public String getDisplay_content() {
        return display_content;
    }
}
