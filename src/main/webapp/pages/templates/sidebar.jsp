<%@page contentType="text/html; charset=utf-8" language="java" pageEncoding="UTF-8" %>
<div class="sidebar">
  <div class="ui vertical menu">
    <a class="item" href="/OCare/map/home">
      &nbsp;&nbsp;&nbsp;&nbsp;实时地图
      <i class="map icon"></i>
    </a>
    <a class="item" href="/OCare/monitor/list" style="width: 20rem;">
      &nbsp;&nbsp;&nbsp;&nbsp;监护人申请审核
      <i class="checkmark icon"></i>
    </a>
    <div id="employee">
        <div class="header item">
            <i class="legal icon"></i>
            人事管理
        </div>
        <a class="item" href="/OCare/hr">
            &nbsp;&nbsp;&nbsp;&nbsp;职员信息
        </a>
        <a class="item" href="/OCare/hr/entry">
            &nbsp;&nbsp;&nbsp;&nbsp;入职管理
        </a>
        <a class="item" href="/OCare/hr/leave">
            &nbsp;&nbsp;&nbsp;&nbsp;离职管理
        </a>
        <a class="item" href="/OCare/hr/table">
            &nbsp;&nbsp;&nbsp;&nbsp;查询
        </a>
        <a class="item" href="/OCare/hr/import">
            &nbsp;&nbsp;&nbsp;&nbsp;导入
        </a>
    </div>
    <div id=contract">
        <div class="header item">
          <i class="legal icon"></i>
          合同管理
        </div>
        <a class="item">
          &nbsp;&nbsp;&nbsp;&nbsp;合同列表
        </a>
        <a class="item">
          &nbsp;&nbsp;&nbsp;&nbsp;上传合同
        </a>
    </div>
    <div id="company">
        <div class="header item">
          <i class="book icon "></i>
          机构信息管理
        </div>
        <a class="item" href="/OCare/agent/list">
          &nbsp;&nbsp;&nbsp;&nbsp;机构列表
        </a>
        <a class="item" href="/OCare/company/list">
          &nbsp;&nbsp;&nbsp;&nbsp;机构申请审核
        </a>
    </div>
    <div id="personal">
        <div class="header item">
          <i class="child icon "></i>
          个人管理
        </div>
        <a class="item">
          &nbsp;&nbsp;&nbsp;&nbsp;监护人
        </a>
        <a class="item">
          &nbsp;&nbsp;&nbsp;&nbsp;志愿者
        </a>
    </div>
  </div>
</div>

<script>
  var type = "<%= session.getAttribute("sessionType") %>";
  if(type= "LegalPerson"){
    document.getElementById("company").style.display="none";
    document.getElementById("personal").style.display="none";
  }
</script>