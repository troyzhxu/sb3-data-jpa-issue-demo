package bp.web.user.repository;

import bp.web.user.domain.RoleTmpl;
import bp.web.user.model.RolePart;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RoleTmplRepository extends CrudRepository<RoleTmpl, Integer> {

    /**
     * using find_in_set in sql, a ConverterNotFoundException will be thrown
     */
    @Query("""
    select new bp.web.user.model.RolePart(id, name, rkey) from RoleTmpl
    where find_in_set(:appId, appIds) is true and id not in (:idList) and deleted = false
    """)
    List<RolePart> findRoleInfoListByIdNotInAndAppId(List<Integer> idList, int appId);

    /**
     * not using 'new bp.web.user.model.RolePart(id, name, rkey)' in sql, it works.
     */
    @Query("""
    from RoleTmpl
    where find_in_set(:appId, appIds) is true and id not in (:idList) and deleted = false
    """)
    List<RoleTmpl> findAllByIdNotInAndAppId(List<Integer> idList, int appId);


    /**
     * not using find_in_set in sql, it works too.
     */
    @Query("""
    select new bp.web.user.model.RolePart(id, name, rkey) from RoleTmpl
    where id not in (:idList) and deleted = false
    """)
    List<RolePart> findRoleInfoListByIdNotIn(List<Integer> idList);

}
