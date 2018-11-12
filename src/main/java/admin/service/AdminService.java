package admin.service;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

public interface AdminService {

	List<LinkedHashMap<String, Object>> getMenu(HashMap<String, Object> param);

	HashMap<String, Object> getMenuList(HashMap<String, Object> param);

	HashMap<String, Object> getCategoryList(HashMap<String, Object> param);

	String getPath(String a);

}
