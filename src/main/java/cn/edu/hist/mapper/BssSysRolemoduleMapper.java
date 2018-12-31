package cn.edu.hist.mapper;

import cn.edu.hist.model.BssSysRolemodule;
import cn.edu.hist.model.BssSysRolemoduleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BssSysRolemoduleMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_rolemodule
     *
     * @mbggenerated
     */
    int countByExample(BssSysRolemoduleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_rolemodule
     *
     * @mbggenerated
     */
    int deleteByExample(BssSysRolemoduleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_rolemodule
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String rmid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_rolemodule
     *
     * @mbggenerated
     */
    int insert(BssSysRolemodule record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_rolemodule
     *
     * @mbggenerated
     */
    int insertSelective(BssSysRolemodule record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_rolemodule
     *
     * @mbggenerated
     */
    List<BssSysRolemodule> selectByExample(BssSysRolemoduleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_rolemodule
     *
     * @mbggenerated
     */
    BssSysRolemodule selectByPrimaryKey(String rmid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_rolemodule
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") BssSysRolemodule record, @Param("example") BssSysRolemoduleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_rolemodule
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") BssSysRolemodule record, @Param("example") BssSysRolemoduleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_rolemodule
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(BssSysRolemodule record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bss_sys_rolemodule
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(BssSysRolemodule record);
}