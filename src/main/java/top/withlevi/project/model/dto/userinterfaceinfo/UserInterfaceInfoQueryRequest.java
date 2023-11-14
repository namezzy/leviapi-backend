package top.withlevi.project.model.dto.userinterfaceinfo;

import lombok.Data;
import lombok.EqualsAndHashCode;
import top.withlevi.project.common.PageRequest;

import java.io.Serializable;

/**
 * 查询请求
 *
 * @author Levi
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class UserInterfaceInfoQueryRequest extends PageRequest implements Serializable {

    /**
     * 主键
     */
    private Long id;

    /**
     * 调用用户id
     */
    private Long userId;

    /**
     * 接口id
     */
    private Long interfaceInfoId;

    /**
     * 总调用次数
     */
    private Integer totalNum;

    /**
     * 剩余调用次数
     */
    private Integer leftNum;

    /**
     * 接口状态 (0-关闭, 1-开启)
     */
    private Integer status;

}