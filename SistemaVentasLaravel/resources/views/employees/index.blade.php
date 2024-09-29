@extends('dashboard.body.main')

@section('container')
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            @if (session()->has('success'))
                <div class="alert text-white bg-success" role="alert">
                    <div class="iq-alert-text">{{ session('success') }}</div>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="ri-close-line"></i>
                    </button>
                </div>
            @endif
            <div class="d-flex flex-wrap align-items-center justify-content-between mb-4">
                <div>
                    <h4 class="mb-3">Lista de Empleados</h4>
                    <p class="mb-3 mr-3">Un panel de empleados te permite recopilar y visualizar fácilmente los datos de empleados para optimizar la experiencia  <br> de los empleados, asegurando la retención de los empleados. </p>
                </div>
                <div>
                <a href="{{ route('employees.create') }}" class="btn btn-primary add-list"><i class="fa-solid fa-plus mr-3"></i>Agregar Empleado</a>
                </div>
            </div>
        </div>

        <div class="col-lg-12">
            <form action="{{ route('employees.index') }}" method="get">
                <div class="d-flex flex-wrap align-items-center justify-content-between">
                    <div class="form-group row">
                        <label for="row" class="col-sm-3 align-self-center">Filas:</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="row" onchange="this.form.submit()">
                                <option value="10" @if(request('row') == '10')selected="selected"@endif>10</option>
                                <option value="25" @if(request('row') == '25')selected="selected"@endif>25</option>
                                <option value="50" @if(request('row') == '50')selected="selected"@endif>50</option>
                                <option value="100" @if(request('row') == '100')selected="selected"@endif>100</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label col-sm-2 align-self-center " for="search">Buscar:</label>
                        <div class="input-group col-sm-10">
                            <input type="text" id="search" class="form-control" name="search" placeholder="Nombre" value="{{ request('search') }}">
                            <div class="input-group-append">
                                <button type="submit" class="input-group-text bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Buscar"><i class="fa-solid fa-magnifying-glass font-size-20"></i></button>
                                <a href="{{ route('employees.index') }}" class="input-group-text bg-danger"
                                data-toggle="tooltip" data-placement="top" title="" data-original-title="Borrar"><i class="fa-solid fa-trash"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <div class="col-lg-12">
            <div class="table-responsive rounded mb-3">
                <table class="table mb-0">
                    <thead class="bg-white text-uppercase">
                        <tr class="ligth ligth-data">
                            <th>#</th>
                            <th>Foto</th>
                            <th>@sortablelink('name', 'Nombre')</th>
                            <th>@sortablelink('email', 'Correo')</th>
                            <th>@sortablelink('experience', 'Experiencia')</th>
                            <th>@sortablelink('phone', 'Télefono')</th>
                            <th>@sortablelink('salary', 'Salario')</th>
                            <th>@sortablelink('city', 'Ciudad')</th>
                            <th>Acción</th>
                        </tr>
                    </thead>
                    <tbody class="ligth-body">
                        @forelse ($employees as $employee)
                        <tr>
                            <td>{{ (($employees->currentPage() * 10) - 10) + $loop->iteration  }}</td>
                            <td>
                                <img class="avatar-60 rounded" src="{{ $employee->photo ? asset('storage/employees/'.$employee->photo) : asset('assets/images/user/1.png') }}">
                            </td>
                            <td>{{ $employee->name }}</td>
                            <td>{{ $employee->email }}</td>
                            @php
                                // Extraer el número de años de experiencia (solo el primer dígito de la cadena)
                                $experienceNumber = intval(preg_replace('/[^0-9]/', '', $employee->experience));
                            @endphp
                            <td>
                                @if ($experienceNumber < 3)
                                    <span class="badge bg-info">{{ $employee->experience }}</span>
                                @elseif ($experienceNumber >= 3 && $experienceNumber < 5)
                                    <span class="badge bg-success">{{ $employee->experience }}</span>
                                @elseif ($experienceNumber >= 5 && $experienceNumber < 7)
                                    <span class="badge bg-danger">{{ $employee->experience }}</span>
                                @elseif ($experienceNumber >= 7 && $experienceNumber < 9)
                                    <span class="badge bg-warning">{{ $employee->experience }}</span>
                                @elseif ($experienceNumber >= 9 && $experienceNumber < 11)
                                    <span class="badge bg-indigo">{{ $employee->experience }}</span>
                                @else
                                    <span class="badge bg-black">{{ $employee->experience }}</span>
                                @endif
                            </td>
                            <td>{{ $employee->phone }}</td>
                            <td>${{ $employee->salary }}</td>
                            <td>{{ $employee->city }}</td>
                            <td>
                                <div class="d-flex align-items-center list-action">
                                    <a class="badge badge-info mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Ver"
                                        href="{{ route('employees.show', $employee->id) }}"><i class="ri-eye-line mr-0"></i>
                                    </a>
                                    <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Editar"
                                        href="{{ route('employees.edit', $employee->id) }}"><i class="ri-pencil-line mr-0"></i>
                                    </a>
                                    <form action="{{ route('employees.destroy', $employee->id) }}" method="POST" style="margin-bottom: 5px">
                                        @method('delete')
                                        @csrf
                                        <button type="submit" class="badge bg-warning mr-2 border-none" onclick="return confirm('Are you sure you want to delete this record?')" data-toggle="tooltip" data-placement="top" title="" data-original-title="Eliminar"><i class="ri-delete-bin-line mr-0"></i></button>
                                    </form>
                                </div>
                            </td>
                        </tr>

                        @empty
                        <div class="alert text-white bg-danger" role="alert">
                            <div class="iq-alert-text">Datos no encontrados.</div>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <i class="ri-close-line"></i>
                            </button>
                        </div>
                        @endforelse
                    </tbody>
                </table>
            </div>
            {{ $employees->links() }}
        </div>
    </div>
    <!-- Page end  -->
</div>

@endsection
