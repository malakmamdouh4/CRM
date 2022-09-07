<!-- form -->
<div class="row">

    <div class="divider">
        <div class="divider-text">{{trans('common.section')}} #1</div>
    </div>
        <div class="row pt-2 pb-4">
            <h3>{{trans('common.photo')}} </h3>
          
            <div class="col-md-12"></div>
            <div class="col-12 col-md-4" style="margin-top:20px">
                {!! getSettingImageValue('section1img') !!}
                <div class="file-loading"> 
                    <input class="files" name="section1img" type="file">
                </div>
            </div>

            <div class="col-12 col-md-8">
                <label class="form-label" for="section1title">{{trans('common.title')}}</label>
                {{Form::text('section1title',getSettingValue('section1title'),['id'=>'section1title','class'=>'form-control'])}}
            </div>

            <div class="col-md-12"></div>
            <div class="col-12 col-md-12">
                <label class="form-label" for="section1des">{{trans('common.des')}}</label>
                {{Form::textarea('section1des',getSettingValue('section1des'),['id'=>'section1des','class'=>'form-control','rows'=>'3'])}}
            </div>
           
        </div>


    <div class="divider">
        <div class="divider-text">{{trans('common.section')}} #2</div>
    </div>
        <div class="row pt-2 pb-4">
            <h3>{{trans('common.photo')}} </h3>
          
            <div class="col-md-12"></div>
            <div class="col-12 col-md-4" style="margin-top:20px">
                {!! getSettingImageValue('section2img') !!}
                <div class="file-loading"> 
                    <input class="files" name="section2img" type="file">
                </div>
            </div>

            <div class="col-12 col-md-8">
                <label class="form-label" for="section2title">{{trans('common.title')}}</label>
                {{Form::text('section2title',getSettingValue('section2title'),['id'=>'section2title','class'=>'form-control'])}}
            </div>

            <div class="col-md-12"></div>
            <div class="col-12 col-md-12">
                <label class="form-label" for="section2des">{{trans('common.des')}}</label>
                {{Form::textarea('section2des',getSettingValue('section2des'),['id'=>'section2des','class'=>'form-control','rows'=>'3'])}}
            </div>
           
        </div>



</div>
<!--/ form -->