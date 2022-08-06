<div class="form-group {{ $errors->has('employee_to') ? 'has-error' : '' }}">
    {!! Form::label('employee_to', 'employee to', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {{-- {{$users->profiles}} --}}
        <select class="form-control" name="employee_to">
            <option value="UserC2">UserC2</option>
            {{-- @foreach ($users as $item)
            @if ()
            <option value="$item->name">{{$item->name}}</option>
            @endif
            @endforeach --}}
        </select>
        {!! $errors->first('employee_to', '<p class="help-block">:message</p>') !!}
    </div>
</div>
<div class="form-group {{ $errors->has('schedule') ? 'has-error' : ''}}">
    {!! Form::label('schedule', 'Schedule', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::input('datetime-local', 'schedule', null, ('' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('schedule', '<p class="help-block">:message</p>') !!}
    </div>
</div>

@if (Auth::user()->hasRole('UserC2'))
<div class="form-group {{ $errors->has('invitation_status') ? 'has-error' : '' }}">
    {!! Form::label('invitation_status', 'Invitation Status', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        <div class="">
            <label>{!! Form::radio('invitation_status', '1') !!} Incident Closed</label>
        </div>
        <div class="">
            <label>{!! Form::radio('invitation_status', '0', true) !!} Pending</label>
        </div>
        {!! $errors->first('invitation_status', '<p class="help-block">:message</p>') !!}
    </div>
</div>
    
@endif
{{-- <div class="form-group {{ $errors->has('review') ? 'has-error' : ''}}">
    {!! Form::label('review', 'Review', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::number('review', null, ('' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('review', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('upload') ? 'has-error' : ''}}">
    {!! Form::label('upload', 'Upload', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text('upload', null, ('' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('upload', '<p class="help-block">:message</p>') !!}
    </div>
</div> --}}
@if (Auth::user()->hasRole('UserC1'))
<div class="form-group {{ $errors->has('corrective_actions') ? 'has-error' : '' }}">
    {!! Form::label('corrective_actions', 'Corrective Actions', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text(
            'corrective_actions',
            null,
            'required' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('corrective_actions', '<p class="help-block">:message</p>') !!}
    </div>
</div>
@endif
<div class="form-group {{ $errors->has('review_date') ? 'has-error' : '' }}">
    {!! Form::label('review_date', 'Review Date', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::date(
            'review_date',
            null,
            'required' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('review_date', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        {!! Form::submit(isset($submitButtonText) ? $submitButtonText : 'Create', ['class' => 'btn btn-primary']) !!}
    </div>
</div>
