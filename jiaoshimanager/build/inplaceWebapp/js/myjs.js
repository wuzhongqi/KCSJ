$(document).ready(function() {
	$(function(){
 
                var ok1=false;
                var ok2=false;
                var ok3=false;
                var ok4=false;
                var ok5=false;
                 // 验证手机
                $('input[name="phone"]').focus(function(){
                    $(this).next().next().text('请输入手机号').removeClass('state1').addClass('state2');
                }).blur(function(){
                    if($(this).val().length = 11 && $(this).val()!=''){
                        $(this).next().next().text('输入成功').removeClass('state1').addClass('state4');
                        ok1=true;
                    }else{
                        $(this).next().next().text('请输入正确的手机号').removeClass('state1').addClass('state3');
                    }
                     
                });
                // 验证用户名
                $('input[name="student_id"]').focus(function(){
                    $(this).next().next().text('请输入学号').removeClass('state1').addClass('state2');
                }).blur(function(){
                    if($(this).val().length = 8 && $(this).val()!=''){
                        $(this).next().next().text('输入成功').removeClass('state1').addClass('state4');
                        ok5=true;
                    }else{
                        $(this).next().next().text('请输入正确的学号').removeClass('state1').addClass('state3');
                    }
                     
                });	
                //验证密码
                $('input[name="password"]').focus(function(){
                    $(this).next().next().text('密码应该为6-20位之间').removeClass('state1').addClass('state2');
                }).blur(function(){
                    if($(this).val().length >= 6 && $(this).val().length <=20 && $(this).val()!=''){
                        $(this).next().next().text('输入成功').removeClass('state1').addClass('state4');
                        ok2=true;
                    }else{
                        $(this).next().next().text('密码应该为6-20位之间').removeClass('state1').addClass('state3');
                    }
                     
                });
 
                //验证确认密码
                    $('input[name="confirm_password"]').focus(function(){
                    $(this).next().next().text('输入的确认密码要和上面的密码一致').removeClass('state1').addClass('state2');
                }).blur(function(){
                    if($(this).val().length >= 6 && $(this).val().length <=20 && $(this).val()!='' && $(this).val() == $('input[name="password"]').val()){
                        $(this).next().next().text('输入成功').removeClass('state1').addClass('state4');
                        ok3=true;
                    }else{
                        $(this).next().next().text('输入的确认密码要和上面的密码一致').removeClass('state1').addClass('state3');
                    }
                     
                });
 
                //验证邮箱
                $('input[name="email"]').focus(function(){
                    $(this).next().next().text('请输入正确的email格式').removeClass('state1').addClass('state2');
                }).blur(function(){
                    if($(this).val().search(/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/)==-1){
                        $(this).next().next().text('请输入正确的email格式').removeClass('state1').addClass('state3');
                    }else{                  
                        $(this).next().next().text('输入成功').removeClass('state1').addClass('state4');
                        ok4=true;
                    }
                     
                });
 
                //提交按钮,所有验证通过方可提交
 
                $('.submit').click(function(){
                    if(ok1 && ok2 && ok3 && ok4 && ok5){
                        $('form').submit();
                    }else{
                        return false;
                    }
                });
                 
            });
	
});