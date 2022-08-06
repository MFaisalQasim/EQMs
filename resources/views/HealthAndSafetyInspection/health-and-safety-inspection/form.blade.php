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
<div class="form-group {{ $errors->has('employee_to') ? 'has-error' : '' }}">
    {!! Form::label('employee_to', 'employee to', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {{-- {{$users->profiles}} --}}
        <select class="form-control" name="employee_to">
            @if (Auth::user()->hasRole('UserC2'))
            <option value="UserC1">UserC1</option>
            @endif
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
</div> --}}<div class="form-group {{ $errors->has('areas_inspected') ? 'has-error' : '' }} " enctype="multipart/form-data">
    <label for="areas_inspected" class="col-md-4 control-label">{{ 'Areas Inspected' }}</label>

    <div class="">
        <label><strong>Select Safety and Environment Inspection List :</strong></label><br />
        <select class="selectpicker" multiple data-live-search="true" name="areas_inspected[]" autofocus>
            @foreach ($health_and_safety_inspection_lists as $item)
                <option value="{{ $item->areas_inspected }}">{{ $item->areas_inspected }}</option>
            @endforeach
            {{-- <option value="Offices ">Offices</option>
            <option value=" ConstructionSite ">Construction Site</option>
            <option value=" Warehouse ">Warehouse</option>
            <option value=" Cars ">Cars</option>
            <option value=" Other ">Other</option> --}}
        </select>
    </div>
    <script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
</script>
    <style type="text/css">
        .dropdown-toggle {
            height: 40px;
            width: 400px !important;
        }
    
    </style>
</div>

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        {!! Form::submit(isset($submitButtonText) ? $submitButtonText : 'Create', ['class' => 'btn btn-primary']) !!}
    </div>
</div>
