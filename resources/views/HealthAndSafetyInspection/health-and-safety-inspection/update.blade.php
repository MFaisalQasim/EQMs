<div class="form-group {{ $errors->has('inspection_timing') ? 'has-error' : '' }}">
    {!! Form::label('inspection_timing', 'Inspection Timing', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::date(
            'inspection_timing',
            null,
            '' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('inspection_timing', '<p class="help-block">:message</p>') !!}
    </div>
</div>

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
<div class="form-group {{ $errors->has('invitation_status') ? 'has-error' : '' }}">
    {!! Form::label('invitation_status', 'Invitation Status', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {{-- {{$users->profiles}} --}}
        <select class="form-control" name="invitation_status">
            <option value="accept">Accept</option>
            <option value="reject">Reject</option>
            {{-- @foreach ($users as $item)
            @if ()
            <option value="$item->name">{{$item->name}}</option>
            @endif
            @endforeach --}}
        </select>
        {!! $errors->first('invitation_status', '<p class="help-block">:message</p>') !!}
    </div>
</div>
{{-- <div class="form-group {{ $errors->has('review') ? 'has-error' : '' }}">
    {!! Form::label('review', 'Review', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::number(
            'review',
            null,
            '' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('review', '<p class="help-block">:message</p>') !!}
    </div>
</div> --}}
{{-- <div class="form-group {{ $errors->has('upload_doc') ? 'has-error' : '' }}">
    {!! Form::label('upload_doc', 'Upload Doc', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text(
            'upload_doc',
            null,
            '' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('upload_doc', '<p class="help-block">:message</p>') !!}
    </div>
</div> --}}

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        {!! Form::submit(isset($submitButtonText) ? $submitButtonText : 'Create', ['class' => 'btn btn-primary']) !!}
    </div>
</div>
