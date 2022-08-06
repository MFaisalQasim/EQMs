<div class="form-group {{ $errors->has('Job_title') ? 'has-error' : ''}}">
    {!! Form::label('Job_title', 'Job Title', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text('Job_title', null, ('required' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('Job_title', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('Purpose') ? 'has-error' : ''}}">
    {!! Form::label('Purpose', 'Purpose', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::textarea('Purpose', null, ('required' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('Purpose', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('Answerable_to') ? 'has-error' : ''}}">
    {!! Form::label('Answerable_to', 'Answerable To', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text('Answerable_to', null, ('required' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('Answerable_to', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('Responsible_for') ? 'has-error' : ''}}">
    {!! Form::label('Responsible_for', 'Responsible For', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text('Responsible_for', null, ('required' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('Responsible_for', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('Skills') ? 'has-error' : ''}}">
    {!! Form::label('Skills', 'Skills', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::textarea('Skills', null, ('required' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('Skills', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        {!! Form::submit(isset($submitButtonText) ? $submitButtonText : 'Create', ['class' => 'btn btn-primary']) !!}
    </div>
</div>
