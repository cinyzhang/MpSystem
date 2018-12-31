package cn.edu.hist.mapper;

import cn.edu.hist.model.BssSysRoleoperate;
import cn.edu.hist.model.BssSysRoleoperateExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BssSysRoleoperateMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_roleoperate
     *
     * @mbggenerated
     */
    int countByExample(BssSysRoleoperateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_roleoperate
     *
     * @mbggenerated
     */
    int deleteByExample(BssSysRoleoperateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_roleoperate
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String roid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_roleoperate
     *
     * @mbggenerated
     */
    int insert(BssSysRoleoperate record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_roleoperate
     *
     * @mbggenerated
     */
    int insertSelective(BssSysRoleoperate record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_roleoperate
     *
     * @mbggenerated
     */
    List<BssSysRoleoperate> selectByExample(BssSysRoleoperateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_roleoperate
     *
     * @mbggenerated
     */
    BssSysRoleoperate selectByPrimaryKey(String roid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_roleoperate
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") BssSysRoleoperate record, @Param("example") BssSysRoleoperateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_roleoperate
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") BssSysRoleoperate record, @Param("example") BssSysRoleoperateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_roleoperate
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(BssSysRoleoperate record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_roleoperate
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(BssSysRoleoperate record);
}