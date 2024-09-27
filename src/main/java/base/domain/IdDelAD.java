package base.domain;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;

/**
 * @author Troy.Zhou @ 2022/8/5 16:46
 */
@Getter
@Setter
@MappedSuperclass
public class IdDelAD<IdType extends Number> extends DelAD implements ID<IdType> {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private IdType id;

}
