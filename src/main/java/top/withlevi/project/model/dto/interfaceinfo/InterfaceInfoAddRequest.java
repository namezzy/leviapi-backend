package top.withlevi.project.model.dto.interfaceinfo;

import lombok.Data;

import java.io.Serializable;

/**
 * 请求添加参数对象
 *
 */
@Data
public class InterfaceInfoAddRequest implements Serializable {


    /**
     * 名称
     */
    private String name;

    /**
     * 描述信息
     */
    private String description;

    /**
     * 接口地址
     */
    private String url;

    /**
     * 请求参数
     */
    private String requestParams;

    /**
     * 请求头
     */
    private String requestHeader;

    /**
     * 响应头
     */
    private String responseHeader;



    /**
     * 请求类型
     */
    private String method;


}