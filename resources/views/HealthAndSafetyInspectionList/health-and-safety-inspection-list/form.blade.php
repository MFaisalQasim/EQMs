{{-- <div class="form-group {{ $errors->has('health_and_safety_inspections_id') ? 'has-error' : '' }}">
    {!! Form::label('health_and_safety_inspections_id', 'Health And Safety Inspections Id', [
        'class' => 'col-md-4 control-label',
    ]) !!}
    <div class="col-md-6">
        {!! Form::number(
            'health_and_safety_inspections_id',
            null,
            'required' == 'required' ? ['class' => 'form-control'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('health_and_safety_inspections_id', '<p class="help-block">:message</p>') !!}
    </div>
</div> --}}
<div class="form-group {{ $errors->has('areas_inspected') ? 'has-error' : '' }}">
    {!! Form::label('areas_inspected', 'Areas Inspected List', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text(
            'areas_inspected',
            null,
            'required' == 'required' ? ['class' => 'form-control'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('areas_inspected', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        {!! Form::submit(isset($submitButtonText) ? $submitButtonText : 'Create', ['class' => 'btn btn-primary']) !!}
    </div>
</div>
