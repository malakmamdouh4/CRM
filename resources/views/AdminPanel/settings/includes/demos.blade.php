<!-- form -->

<div class="row">

    <div class="divider">
        <div class="divider-text">{{trans('common.demo')}} #1</div>
    </div>

    <div class="col-12 col-md-6">
        <label class="form-label" for="facebook"> {{trans('common.demolink')}}   1 </label>
        {{Form::text('demoLink1',getSettingValue('demoLink1'),['id'=>'key','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="twitter"> {{trans('common.demouser')}} 1 </label>
        {{Form::text('demoUserName1',getSettingValue('demoUserName1'),['id'=>'key','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="instagram">{{trans('common.demopassword')}} 1 </label>
        {{Form::text('demoPassword1',getSettingValue('demoPassword1'),['id'=>'key','class'=>'form-control'])}}
    </div> 
    <div> <br> <br> </div> 

    <div class="divider">
        <div class="divider-text">{{trans('common.demo')}} #2 </div>
    </div>


    <div class="col-12 col-md-6">
        <label class="form-label" for="facebook"> {{trans('common.demolink')}}   2</label>
        {{Form::text('demoLink2',getSettingValue('demoLink2'),['id'=>'key','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="twitter"> {{trans('common.demouser')}} 2 </label>
        {{Form::text('demoUserName2',getSettingValue('demoUserName2'),['id'=>'key','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="instagram">{{trans('common.demopassword')}} 2 </label>
        {{Form::text('demoPassword2',getSettingValue('demoPassword2'),['id'=>'key','class'=>'form-control'])}}
    </div>

    <div> <br> <br> </div> 
    <div class="divider">
        <div class="divider-text">{{trans('common.demo')}} #3</div>
    </div>


    <div class="col-12 col-md-6">
        <label class="form-label" for="facebook">{{trans('common.demolink')}}   3</label>
        {{Form::text('demoLink3',getSettingValue('demoLink3'),['id'=>'key','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="twitter">{{trans('common.demouser')}} 3 </label>
        {{Form::text('demoUserName3',getSettingValue('demoUserName3'),['id'=>'key','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="instagram"> {{trans('common.demopassword')}} 3 </label>
        {{Form::text('demoPassword3',getSettingValue('demoPassword3'),['id'=>'key','class'=>'form-control'])}}
    </div>
    <div style="clear:both"></div>

</div>

<!-- end form  -->

