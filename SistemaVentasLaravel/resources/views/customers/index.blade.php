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
                    <h4 class="mb-3">Lista de Clientes</h4>
                    <p class="mb-3 mr-3">Un panel de clientes te permite recopilar y visualizar fácilmente los datos de los <br> clientes para optimizar la experiencia del cliente, asegurando la retención de los clientes. </p>
                </div>
                <div>
                    <a href="{{ route('customers.create') }}" class="btn btn-primary add-list"><i class="fa-solid fa-plus mr-3"></i>Agregar Cliente</a>
                </div>
            </div>
        </div>

        <div class="col-lg-12">
            <form action="{{ route('customers.index') }}" method="get">
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
                            <input type="text" id="search" class="form-control" name="search" placeholder="Cliente" value="{{ request('search') }}">
                            <div class="input-group-append">
                                <button type="submit" class="input-group-text bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Buscar"><i class="fa-solid fa-magnifying-glass font-size-20"></i></button>
                                <a href="{{ route('customers.index') }}" class="input-group-text bg-danger"
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
                            <th>@sortablelink('name', 'Cliente')</th>
                            <th>@sortablelink('email', 'Correo')</th>
                            <th>@sortablelink('phone', 'Télefono')</th>
                            <th>@sortablelink('city', 'Ciudad')</th>
                            <th>Acción</th>
                        </tr>
                    </thead>
                    <tbody class="ligth-body">
                        @foreach ($customers as $customer)
                        <tr>
                            <td>{{ (($customers->currentPage() * 10) - 10) + $loop->iteration  }}</td>
                            <td>
                                <img class="avatar-60 rounded" src="{{ $customer->photo ? asset('storage/customers/'.$customer->photo) : asset('assets/images/user/1.png') }}">
                            </td>
                            <td>{{ $customer->name }}</td>
                            <td>{{ $customer->email }}</td>
                            <td>{{ $customer->phone }}</td>
                            <td>{{ $customer->city }}</td>
                            <td>
                                <div class="d-flex align-items-center list-action">
                                    <a class="badge badge-info mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Ver"
                                        href="{{ route('customers.show', $customer->id) }}"><i class="ri-eye-line mr-0"></i>
                                    </a>
                                    <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Editar"
                                        href="{{ route('customers.edit', $customer->id) }}"><i class="ri-pencil-line mr-0"></i>
                                    </a>
                                    <form action="{{ route('customers.destroy', $customer->id) }}" method="POST" style="margin-bottom: 5px">
                                        @method('delete')
                                        @csrf
                                        <button type="submit" class="badge bg-warning mr-2 border-none" onclick="return confirm('Are you sure you want to delete this record?')" data-toggle="tooltip" data-placement="top" title="" data-original-title="Eliminar"><i class="ri-delete-bin-line mr-0"></i></button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            {{ $customers->links() }}
        </div>
    </div>
    <!-- Page end  -->
</div>

@endsection
