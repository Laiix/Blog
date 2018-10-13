package top.eussi.domain;

import java.sql.Timestamp;

/**
 * @author wangxueming 2018-10-13
 *
 */
public class Category extends BaseDomain {

    private String id;

	private String name;

    private String description;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
