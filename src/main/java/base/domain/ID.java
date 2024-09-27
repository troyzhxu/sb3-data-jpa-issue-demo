package base.domain;

public interface ID<IdType extends Number> {

    IdType getId();

    void setId(IdType id);

}
