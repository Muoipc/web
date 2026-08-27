package vn.iotstar.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Category implements Serializable {
    private int id;
    private String name;
    private String icon;

    public Category() {
        super();
    }

    public Category(int id, String name, String icon) {
        super();
        this.id = id;
        this.name = name;
        this.icon = icon;
    }

    public Category(String name, String icon) {
        super();
        this.name = name;
        this.icon = icon;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCateid() {
        return id;
    }

    public void setCateid(int cateid) {
        this.id = cateid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCatename() {
        return name;
    }

    public void setCatename(String catename) {
        this.name = catename;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getIcons() {
        return icon;
    }

    public void setIcons(String icons) {
        this.icon = icons;
    }

    @Override
    public String toString() {
        return "Category [id=" + id + ", name=" + name + ", icon=" + icon + "]";
    }
}
