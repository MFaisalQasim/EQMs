<div class="form-group {{ $errors->has('incident_reporter') ? 'has-error' : '' }}">
    {!! Form::label('incident_reporter', 'Incident Reporter', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {{-- {!! Form::text('incident_reporter', null, ('required' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!} --}}
        <input type="string" class="form-control" value={{ auth()->user()->name }} required disabled>
        {!! $errors->first('incident_reporter', '<p class="help-block">:message</p>') !!}
    </div>
</div>
<div class="form-group {{ $errors->has('incident_reported_to') ? 'has-error' : '' }}">
    {!! Form::label('incident_reported_to', 'Incident Reported To', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {{-- {{$users->profiles}} --}}
        <select class="form-control" name="incident_reported_to">
            <option value="User B">User B</option>
            <option value="UserC2">UserC2</option>
            {{-- @foreach ($users as $item)
            @if ()
                
            <option value="$item->name">{{$item->name}}</option>
            @endif
            @endforeach --}}
        </select>
        {!! $errors->first('incident_reported_to', '<p class="help-block">:message</p>') !!}
    </div>
</div>

{{-- {!! Form::text(
            'incident_reported_to',
            null,
            'required' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control'],
        ) !!} --}}

{{-- <div class="form-group {{ $errors->has('date') ? 'has-error' : '' }}">
    {!! Form::label('date', 'Date', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::input(
            'datetime-local',
            'date',
            null,
            'required' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('date', '<p class="help-block">:message</p>') !!}
    </div>
</div> 
 <div class="form-group {{ $errors->has('incident_description') ? 'has-error' : '' }}">
    {!! Form::label('incident_description', 'Incident Description', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::textarea(
            'incident_description',
            null,
            'required' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('incident_description', '<p class="help-block">:message</p>') !!}
    </div>
</div>
<div class="form-group {{ $errors->has('investigation') ? 'has-error' : '' }}">
    {!! Form::label('investigation', 'Investigation', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::textarea(
            'investigation',
            null,
            'required' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('investigation', '<p class="help-block">:message</p>') !!}
    </div>
</div>


<div class="form-group {{ $errors->has('responce') ? 'has-error' : '' }}">
    {!! Form::label('responce', 'Responce', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        <select class="form-control" name="responce">
            <option value="Internal_Audit">Internal Audit</option>
            <option value="SubContracter_Problem">SubContracter Problem</option>
            <option value="Supplier_Problem">Supplier Problem</option>
            <option value="Accident/Dangerous_Incident">Accident/Dangerous Incident</option>
            <option value="Customer_Complain">Customer Complain</option>
            <option value="Other">Other</option>
        </select>
        {!! $errors->first('responce', '<p class="help-block">:message</p>') !!}
    </div>
</div> --}}
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
{{-- <div class="form-group {{ $errors->has('check_status') ? 'has-error' : '' }}">
    {!! Form::label('check_status', 'Check Status', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        <div class="checkbox">
            <label>{!! Form::radio('check_status', '1') !!} Yes</label>
        </div>
        <div class="checkbox">
            <label>{!! Form::radio('check_status', '0', true) !!} No</label>
        </div>
        {!! $errors->first('check_status', '<p class="help-block">:message</p>') !!}
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
@if (Auth::user()->hasRole('UserC2'))
{{-- <div class="form-group {{ $errors->has('check_status') ? 'has-error' : '' }}">
    {!! Form::label('check_status', 'Incident Status', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        <select class="form-control" name="check_status">
            <option value="pending">pending</option>
            <option value="closed">closed</option>
        </select>
        {!! $errors->first('check_status', '<p class="help-block">:message</p>') !!}
    </div>
</div> --}}

<div class="form-group {{ $errors->has('check_status') ? 'has-error' : '' }}">
    {!! Form::label('check_status', 'Incident Status', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        <select class="form-control" name="check_status">
            <option value="pending">pending</option>
            <option value="closed">closed</option>
        </select>
        {!! $errors->first('check_status', '<p class="help-block">:message</p>') !!}
    </div>
</div>
    
@endif

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        {!! Form::submit(isset($submitButtonText) ? $submitButtonText : 'Create', ['class' => 'btn btn-primary']) !!}
    </div>
</div>
