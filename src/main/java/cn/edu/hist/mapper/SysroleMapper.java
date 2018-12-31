package cn.edu.hist.mapper;

import cn.edu.hist.model.Sysrole;
import cn.edu.hist.model.SysroleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysroleMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysrole
     *
     * @mbggenerated
     */
    int countByExample(SysroleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysrole
     *
     * @mbggenerated
     */
    int deleteByExample(SysroleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysrole
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysrole
     *
     * @mbggenerated
     */
    int insert(Sysrole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysrole
     *
     * @mbggenerated
     */
    int insertSelective(Sysrole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysrole
     *
     * @mbggenerated
     */
    List<Sysrole> selectByExample(SysroleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysrole
     *
     * @mbggenerated
     */
    Sysrole selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysrole
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") Sysrole record, @Param("example") SysroleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysrole
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") Sysrole record, @Param("example") SysroleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysrole
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Sysrole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sysrole
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Sysrole record);
}