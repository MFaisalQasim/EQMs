<div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
    {!! Form::label('name', 'Name', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text('name', null, 'required' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('name', '<p class="help-block">:message</p>') !!}
    </div>
</div>
{{-- <div class="form-group {{ $errors->has('version') ? 'has-error' : '' }}">
    {!! Form::label('version', 'Version', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text('version', null, 'required' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('version', '<p class="help-block">:message</p>') !!}
    </div>
</div> --}}
<div class="form-group {{ $errors->has('file') ? 'has-error' : '' }}">
    {!! Form::label('file', 'File', ['class' => 'col-md-4 control-label', 'enctype' => 'multipart/form-data']) !!}
    <div class="col-md-6">
        {{-- {!! Form::text('file', null, ('' == 'required') ? ['class' => 'form-control',  "type"=>"file", 'required' => 'required'] : ['class' => 'form-control']) !!} --}}
        <input type="file" id="file" name="file[]" multiple accept=".xlsx, .pdf, .docx">
        {!! $errors->first('file', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        {!! Form::submit(isset($submitButtonText) ? $submitButtonText : 'Create', ['class' => 'btn btn-primary']) !!}
    </div>
</div>
