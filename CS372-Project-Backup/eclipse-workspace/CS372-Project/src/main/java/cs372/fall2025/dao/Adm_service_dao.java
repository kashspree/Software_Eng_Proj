package cs372.fall2025.dao;

import java.util.ArrayList;
import cs372.fall2025.model.Front_page_display_model;

public class Adm_service_dao {
    public ArrayList<Front_page_display_model> get_front_page_data() {
        ArrayList<Front_page_display_model> list = new ArrayList<>();

        // Temporary hardcoded data — replace with DB code later
        list.add(new Front_page_display_model("Planning", "This is the planning phase."));
        list.add(new Front_page_display_model("Design", "This is the design phase."));
        list.add(new Front_page_display_model("Testing", "This is the testing phase."));

        return list;
    }
}
