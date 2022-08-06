<div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
    {!! Form::label('name', 'Name', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {{-- {!! Form::text('name', null, 'required' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!} --}}
        <input class="form-control " type="text" value={{ auth()->user()->name }} required disabled>
        {!! $errors->first('name', '<p class="help-block">:message</p>') !!}
    </div>
</div>
{{-- <div class="form-group {{ $errors->has('approval') ? 'has-error' : '' }}">
    {!! Form::label('approval', 'Approval', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text('approval', null, 'required' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('approval', '<p class="help-block">:message</p>') !!}
    </div>
</div> --}}
<div class="form-group {{ $errors->has('start_date') ? 'has-error' : '' }}">
    {!! Form::label('start_date', 'Start Date', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::input('datetime-local', 'start_date', null, '' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('start_date', '<p class="help-block">:message</p>') !!}
    </div>
</div>
<div class="form-group {{ $errors->has('end_date') ? 'has-error' : '' }}">
    {!! Form::label('end_date', 'End Date', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::input('datetime-local', 'end_date', null, '' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('end_date', '<p class="help-block">:message</p>') !!}
    </div>
</div>
{{-- <div class="form-group {{ $errors->has('emp_id') ? 'has-error' : '' }}">
    {!! Form::label('emp_id', 'Emp Id', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
       // {!! Form::number('emp_id', null, 'value' == {{auth()->user()->id}} 'required' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 
        //'form-control']) !!}
        <input class="form-control " type="number" value={{ auth()->user()->id }} required disabled>
        {!! $errors->first('emp_id', '<p class="help-block">:message</p>') !!}
    </div>
</div> --}}

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        {!! Form::submit(isset($submitButtonText) ? $submitButtonText : 'Create', ['class' => 'btn btn-primary']) !!}
    </div>
</div>
