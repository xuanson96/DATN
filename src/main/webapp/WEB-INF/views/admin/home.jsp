<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

      <div class="item-flex" style="border-bottom: 1px solid #cccccc;padding-bottom: 11px;">
        <div class="item-flex" style="font-size: 16px;padding-left: 20px;">
          <i class=" fa fa-home home-icon"></i>
          <div style="margin-left: 10px;">Trang chủ</div>
        </div>
        <form class="item-search">
          <input type="text" ; placeholder="tìm kiếm">
          <i class="fa fa-search"></i>
        </form>
      </div>

      <div style = "display: flex">
        <div class="col-md-7" style="margin-top: 30px;">
          <div style=" padding: 5px;">
            <div class="item-flex " style="border: 1px solid #cccccc; border-bottom: none;">
              <div class="infobox item-flex" style="border-right: 1px solid #cccccc">
                <div class="infobox-icon"><i class="ace-icon fa fa-comments"></i></div>
                <div style="margin-left : 11px">
                  <div class="infobox-number item-flex">
                    <div style="font-size: 22px;color: #9abc32;">32</div>
                    <div style="margin-left: 64px;color: #77C646 ;">8%</div>
                    <i class="fa fa-arrow-up" aria-hidden="true"></i>
                  </div>
                  <div style = "font-size: 14px">comment </div>
                </div>
              </div>

              <div class="infobox item-flex" style="border-right: 1px solid #cccccc">
                <div class="infobox-icon"><i class="ace-icon fa fa-twitter"
                    style="background-color:rgb(140 194 230) ;"></i></i></div>
                <div style="margin-left : 11px">
                  <div class="infobox-number item-flex">
                    <div style="font-size: 22px;color: rgb(140 194 230);">15</div>
                    <div style="margin-left: 67px;color: rgb(140 194 230) ;">9%</div>
                    <i class="fa fa-arrow-up" aria-hidden="true" style="color: rgb(140 194 230);"></i>
                  </div>
                  <div style = "font-size: 14px">new followers</div>
                </div>
              </div>

              <div class="infobox item-flex">
                <div class="infobox-icon"><i class="ace-icon fa fa-shopping-cart"
                    style="background-color: #d58cdf;"></i></i></div>
                <div style="margin-left : 11px">
                  <div class="infobox-number item-flex">
                    <div style="font-size: 22px;color: #d58cdf">32</div>
                    <div style="margin-left: 68px;color: red ;">5%</div>
                    <i class="fa fa-arrow-down" aria-hidden="true" style="color: red;"></i>
                  </div>
                  <div style = "font-size: 14px">new orders</div>
                </div>
              </div>
            </div>

            <div class="item-flex " style="border: 1px solid #cccccc;">
              <div class="infobox item-flex" style="padding-right: 65px;border-right: 1px solid #cccccc">
                <div class="infobox-icon"><i class="ace-icon fa fa-flask" style="background-color:#dd6566"></i></i>
                </div>
                <div style="margin-left : 11px">
                  <div class="infobox-number item-flex">
                    <div style="font-size: 22px;color: #dd6566;">7</div>
                  </div>
                  <div style = "font-size: 14px">experiments</div>
                </div>
              </div>

              <div class="infobox item-flex" style="padding-right: 15px;border-right: 1px solid #cccccc">
                <div class="infobox-icon"><i class="fa fa-bar-chart" aria-hidden="true"
                    style="background-color: #f79263;"></i></div>
                <div style="margin-left : 11px">
                  <div class="infobox-number item-flex">
                    <div style="font-size: 22px;color: #f79263;">9,99</div>
                    <div style="margin-left: 68px;color: #77C646;margin-left: 43px;">9%</div>
                    <i class="fa fa-arrow-up" aria-hidden="true"></i>
                  </div>
                  <div style = "font-size: 14px">pageviews</div>
                </div>
              </div>

              <div class="infobox item-flex">
                <div class="infobox-icon">
                  <div class="clearfix">
                    <div class="c100 p80 small" style="font-size: 44px;">
                      <span style="color:#f31010">80%</span>
                      <div class="slice">
                        <div class="bar"></div>
                        <div class="fill"></div>
                      </div>
                    </div>
                  </div>

                </div>
                <div style="margin-left : 12px">
                  <div class="infobox-number item-flex">
                    <div style="font-size: 22px;color: #9abc32;">32</div>
                    <div style="margin-left: 68px;color: #77C646 ;">8%</div>
                    <i class="fa fa-arrow-up" aria-hidden="true"></i>
                  </div>
                  <div style = "font-size: 14px">~ 58 GB</div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-8" style="margin-top: 30px;">
            <div class="item-flex" style="margin-left: 111px; margin-top: 15px;">
              <div class="item-flex" style="padding: 7px;width: 129px;height: 55px;background-color: #9abc32;">
                <div class="infobox-icon">
                  <div class="clearfix">
                    <div class="c100 p19 small" style="font-size: 46px;background-color: red;">
                      <span style="color:black">19%</span>
                      <div class="slice">
                        <div class="bar"></div>
                        <div class="fill"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div style="margin-left: 8px;color: white;">
                  <div>Task</div>
                  <div style="font-size: 12px;">Complition</div>
                </div>
              </div>
              <div class="item-flex"
                style="padding: 12px;background-color: #6fb3e0;width: 129px;height: 55px;color: white">
                <i class="fa fa-bar-chart" aria-hidden="true" style="font-size: 36px;"></i>
                <div style="margin-left: 8px;">
                  <div>Earnings</div>
                  <div style="font-size: 12px;">$89,000</div>
                </div>
              </div>
              <div class="item-flex"
                style="padding: 12px;width: 129px;height: 55px;background-color: #999999;color: white;">
                <i class="ace-icon fa fa-download" style="font-size: 30px;"></i>
                <div style="margin-left: 8px;">
                  <div>Downloads</div>
                  <div style="font-size: 12px;">1,345</div>
                </div>
              </div>
            </div>
          </div>

        </div>

        <div class="col-md-5" style="margin-top: 30px;margin-bottom: 30px;">
          <div style=" border: 1px solid #cccccc;padding: 10px;">
            <div style="display: flex;">
              <div style="color: #77C646 ;"><i class="ace-icon fa fa-signal"></i> Traffic Sources </div>
              <div style="margin-left: 200px;padding: 4px;background-color: blue;color: white; ">This Week <i
                  class="ace-icon fa fa-angle-down 0"></i></div>
            </div>

            <div style="display: flex;">
              <img src="../image/Circle.png" style="height: 225px;padding: 18px;">             
              <div style="margin-top: 24px; margin-left: 22px;">
                <div class="item-flex rectangle-item">
                  <div class="rectangle-icon" style="background-color: #ffde16;"></div>
                  <div>social networks</div>
                </div>
                <div class="item-flex rectangle-item">
                  <div class="rectangle-icon" style="background-color: #0ba14b"></div>
                  <div>social networks</div>
                </div>
                <div class="item-flex rectangle-item">
                  <div class="rectangle-icon" style="background-color: #20409a;"></div>
                  <div>social networks</div>
                </div>
                <div class="item-flex rectangle-item">
                  <div class="rectangle-icon" style="background-color: #7f3f98"></div>
                  <div>social networks</div>
                </div>
                <div class="item-flex rectangle-item">
                  <div class="rectangle-icon" style="background-color: #ed1c24"></div>
                  <div>social networks</div>
                </div>
                <div class="item-flex rectangle-item">
                  <div class="rectangle-icon" style="background-color: #f26522;"></div>
                  <div>social networks</div>
                </div>
              </div>
            </div>

            <div class="item-flex">
              <div style="display: flex;">
                <div><i class="ace-icon fa fa-facebook-square fa-2x " style="color: blue;"></i> likes</div>
                <div style="font-size: large;margin-left: 6px;">19,999</div>
              </div>
              <div style="display: flex;margin-left: 35px;">
                <div><i class="ace-icon fa fa-twitter-square fa-2x " style="color: purple;"></i> tweets</div>
                <div style="font-size: large;margin-left: 6px;">9,81</div>
              </div>
              <div style="display: flex;margin-left: 35px;">
                <div><i class="ace-icon fa fa-pinterest-square fa-2x " style="color: red;"></i> pins</div>
                <div style="font-size: large;margin-left: 6px;">1,081</div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    <hr style="width: 100% ;height: 1px;background-color: #cccccc;margin-top: 30px;">
	<div style = "display: flex">
      <div class="col-md-6">
        <div class="recent ">
          <div class="item-flex " style="border-bottom: 1px solid #cccccc;">
            <div class="item-flex " style="font-size: 17px;">
              <i class="ace-icon fa fa-rss " style=" color :#ff892a!important"></i>
              <div style="margin-left: 5px;color: #4383b4!important;">RECENT</div>
            </div>
            <div class="item-flex " style=" margin-left: 192px;">
              <div style="padding: 7px 12px;">Tasks</div>
              <div style="padding: 7px 12px;">Members</div>
              <div style="padding: 7px 12px;">Comments</div>
            </div>
          </div>
          <div class="item-flex item-recent" style="color: #69aa46!important;font-size: 17px;border-right: none;">
            <i class="ace-icon fa fa-list"></i>
            <div style="margin-left: 5px;">Sorttable Lists</div>
          </div>

          <div class="item-flex item-recent" style="border-left: 4px solid orange">
            <div class="item-flex">
              <input type="checkbox" style="margin: 0;">
              <div style="margin-left: 10px;"> Answering customer questions</div>
            </div>
            <div class="clearfix" style="margin-left: 201px;">
              <div class="c100 p80 small" style="font-size: 36px;">
                <span style="color:#f31010">80%</span>
                <div class="slice">
                  <div class="bar"></div>
                  <div class="fill"></div>
                </div>
              </div>
            </div>
          </div>

          <div class="item-flex item-recent" style="padding-bottom: 18px;border-left: 4px solid red">
            <div class="item-flex">
              <input type="checkbox" style="margin: 0;">
              <div style="margin-left: 10px;"> Fix bugs</div>
            </div>
            <div style="margin-left: 312px;font-size: 18px; ">
              <i class=" fa fa-pencil bigger-130" style="padding: 5px;color: #63a0d2;"></i>
              <i class=" fa fa-trash-o bigger-130" style="padding: 5px; color: #e27360;"></i>
              <i class=" fa fa-flag bigger-130" style="padding: 5px; color: #80b762;"></i>
            </div>
          </div>

          <div class="item-flex item-recent" style="border-left: 4px solid green;">
            <div class="item-flex">
              <input type="checkbox" style="margin: 0;">
              <div style="margin-left: 10px;">Cleaning up</div>
            </div>
            <i class="fa fa-cogs"
              style="margin-left: 340px;font-size: 17px;padding: 7px;color: white;background-color: #428bca;"></i>
          </div>
          <div class="item-flex item-recent" style="padding: 14px 8px;border-left: 4px solid purple;">
            <input type="checkbox" style="margin: 0;">
            <div style="margin-left: 10px;"> Adding new features</div>
          </div>
          <div class="item-flex item-recent" style="padding: 14px 8px;border-left: 4px solid palevioletred;">
            <input type="checkbox" style="margin: 0;">
            <div style="margin-left: 10px;">Upgrading scripts used in template</div>
          </div>
          <div class="item-flex item-recent" style="padding: 14px 8px;border-left: 4px solid cornflowerblue;">
            <input type="checkbox" style="margin: 0;">
            <div style="margin-left: 10px;"> Adding new skill</div>
          </div>
          <div class="item-flex item-recent" style="padding: 14px 8px;border-left: 4px solid gold;">
            <input type="checkbox" style="margin: 0;">
            <div style="margin-left: 10px;"> Updating server software up</div>
          </div>


        </div>
      </div>
      <div class="col-md-6">
        <div class="conversation">
          <div class="item-flex"
            style="background-color: #cccc;font-size: 17px;padding: 13px 10px 12px; color: #478fca!important;">
            <i class="ace-icon fa fa-comment " style=" padding: 0px;margin: 0px;"></i>
            <div style="margin-left: 15px;">Conversation</div>
          </div>
          <div class="scroll">
            <div style="padding: 15px;">
              <div class="item-flex">
                <img class="item-image" src="../image/jon-snow.jpg">
                <div style="font-size: 13px;margin-left: 14px;padding: 8px;border:1px solid #cccccc">
                  <div class="item-flex" style="margin-bottom: 10px;">
                    <div class="conversation-name">Jon Snow</div>
                    <i class="ace-icon fa fa-clock-o" style="margin-left: 262px;"></i>
                    <div class="conversation-sec">4 sec</div>
                  </div>
                  <div> Do you love me ?</div>
                </div>
              </div>

              <div class="item-flex" style="margin-top: 20px;">
                <img class="item-image" src="../image/daenerys-targaryen.jpg">
                <div style="font-size: 13px;margin-left: 14px;padding: 8px;border:1px solid #cccccc">
                  <div class="item-flex" style="margin-bottom: 10px;">
                    <div class="conversation-name">Khalisse</div>
                    <i class="ace-icon fa fa-clock-o" style="margin-left: 262px;"></i>
                    <div class="conversation-sec">18 sec</div>
                  </div>
                  <div>Yes. I do</div>
                </div>
              </div>

              <div class="item-flex" style="margin-top: 20px;">
                <img class="item-image" src="../image/sansa.jpg">
                <div style="font-size: 13px;margin-left: 14px;padding: 8px;border:1px solid #cccccc">
                  <div class="item-flex" style="margin-bottom: 10px;">
                    <div class="conversation-name">Sansa</div>
                    <i class="ace-icon fa fa-clock-o" style="margin-left: 262px;"></i>
                    <div class="conversation-sec">32 sec</div>
                  </div>
                  <div>Why don't you come too ?</div>
                </div>
              </div>

              <div class="item-flex" style="margin-top: 20px;">
                <img class="item-image" src="../image/jon-snow.jpg">
                <div style="font-size: 13px;margin-left: 14px;padding: 8px;border:1px solid #cccccc">
                  <div class="item-flex" style="margin-bottom: 10px;">
                    <div class="conversation-name">Jon Snow</div>
                    <i class="ace-icon fa fa-clock-o" style="margin-left: 262px;"></i>
                    <div class="conversation-sec">59 sec</div>
                  </div>
                  <div>I wish I had met you earlier</div>
                </div>
              </div>

              <div class="item-flex" style="margin-top: 20px;">
                <img class="item-image" src="../image/xabi-alonso.jpg">
                <div style="font-size: 13px;margin-left: 14px;padding: 8px;border:1px solid #cccccc">
                  <div class="item-flex" style="margin-bottom: 10px;">
                    <div class="conversation-name">Alonso</div>
                    <i class="ace-icon fa fa-clock-o" style="margin-left: 262px;"></i>
                    <div class="conversation-sec">1 m</div>
                  </div>
                  <div>I'm sure I can do it</div>
                </div>
              </div>

            </div>
          </div>
          <div>
            <div style="padding: 10px; background-color: #cccccc;">
              <input type="text" placeholder="Type your message here"
                style="outline: none;    height: 33px; width: 397px;">

              <button style="background-color: #6fb3e0;color: white;outline: none;border: none;height: 33px;
                   width: 80px;"><i class="ace-icon fa fa-share"></i> Send</button>
            </div>
          </div>
        </div>
      </div>
      </div>    

  