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
<div class="form-group {{ $errors->has('schedule') ? 'has-error' : '' }}">
    {!! Form::label('schedule', 'Schedule', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::input(
            'datetime-local',
            'schedule',
            null,
            'required' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('schedule', '<p class="help-block">:message</p>') !!}
    </div>
</div>
{{-- <div class="form-group {{ $errors->has('status') ? 'has-error' : '' }}">
    {!! Form::label('status', 'Status', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text(
            'status',
            null,
            'required' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('status', '<p class="help-block">:message</p>') !!}
    </div>
</div> --}}
<div class="form-group {{ $errors->has('brief_results') ? 'has-error' : '' }}">
    {!! Form::label('brief_results', 'Brief Results', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::textarea(
            'brief_results',
            null,
            '' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('brief_results', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group {{ $errors->has('non_conformities') ? 'has-error' : '' }} " enctype="multipart/form-data">
    <label for="non_conformities" class="col-md-4 control-label">{{ 'Non Conformities' }}</label>

    <div class="">
        <label><strong>Select Non Conformities :</strong></label><br />
        <select class="selectpicker" multiple data-live-search="true" name="non_conformities[]" autofocus>
            {{-- @foreach ($amunityData as $item)
                <option value="{{ $item->id }}">{{ $item->title }}</option>
            @endforeach --}}
            <option value="non_conformities "> Non Conformities </option>
            <option value=" non_conformities "> Non Conformities </option>
            <option value=" non_conformities "> Non Conformities </option>

        </select>
    </div>
  
</div>
<div class="form-group {{ $errors->has('areas_inspected') ? 'has-error' : '' }} " enctype="multipart/form-data">
    <label for="areas_inspected" class="col-md-4 control-label">{{ 'Areas Inspected' }}</label>

    <div class="">
        <label><strong>Select Areas Inspected :</strong></label><br />
        <select class="selectpicker" multiple data-live-search="true" name="areas_inspected[]" autofocus>
            {{-- @foreach ($amunityData as $item)
                <option value="{{ $item->id }}">{{ $item->title }}</option>
            @endforeach --}}
            <option value="areas_inspected "> Areas Inspected </option>
            <option value=" areas_inspected "> Areas Inspected </option>
            <option value=" areas_inspected "> Areas Inspected </option>

        </select>
    </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
    <style type="text/css">
        .dropdown-toggle {
            height: 40px;
            width: 400px !important;
        }
    </style>
</div>
<div class="form-group {{ $errors->has('inspector_name') ? 'has-error' : '' }}">
    {!! Form::label('inspector_name', 'Inspector Name', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text(
            'inspector_name',
            null,
            '' == 'required' ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control'],
        ) !!}
        {!! $errors->first('inspector_name', '<p class="help-block">:message</p>') !!}
    </div>
</div>


    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

    <script type="text/javascript" src="http://keith-wood.name/js/jquery.signature.js"></script>
    <link rel="stylesheet" type="text/css" href="http://keith-wood.name/css/jquery.signature.css"> 
    <style>
        .kbw-signature {
            width: 100%;
            height: 200px;
        }
    </style>
    <div class="col-md-12">
        <label>Signature:</label>
        <br/>
        <div id="sig"></div>
        <br/><br/>
        <button id="clear" class="btn btn-danger btn-sm">Clear</button>
        <textarea id="signature" name="signed" style="display: none"></textarea>
    </div> 
    <script type="text/javascript">
        var sig = $('#sig').signature({syncField: '#signature', syncFormat: 'PNG'});
        $('#clear').click(function (e) {
            e.preventDefault();
            sig.signature('clear');
            $("#signature64").val('');
        });
    </script>
<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        {!! Form::submit(isset($submitButtonText) ? $submitButtonText : 'Create', ['class' => 'btn btn-primary']) !!}
    </div>
</div>
