<div class="form-group {{ $errors->has('upload_doc') ? 'has-error' : ''}}">
    {!! Form::label('upload_doc', 'Upload Doc', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text('upload_doc', null, ('' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('upload_doc', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        {!! Form::submit(isset($submitButtonText) ? $submitButtonText : 'Create', ['class' => 'btn btn-primary']) !!}
    </div>
</div>
