<!-- form -->

<div class="row">
    <div class="col-12 col-md-6">
        <label class="form-label" for="facebook">{{trans('common.facebook')}} </label>
        {{Form::text('facebook',getSettingValue('facebook'),['id'=>'facebook','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="twitter"> {{trans('common.twitter')}} </label>
        {{Form::text('twitter',getSettingValue('twitter'),['id'=>'twitter','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="instagram"> {{trans('common.mail')}}</label>
        {{Form::text('mail',getSettingValue('mail'),['id'=>'instagram','class'=>'form-control'])}}
    </div>

</div>

<!-- end form  -->
