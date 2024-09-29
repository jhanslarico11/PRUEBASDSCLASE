<!-- begin: Edit Profile -->
<div class="card-header d-flex justify-content-between">
    <div class="iq-header-title">
        <h4 class="card-title">Cambiar Contraseña</h4>
    </div>
</div>
<div class="card-body">
    <form action="{{ route('password.update') }}" method="POST">
    @csrf
    @method('put')
        <!-- begin: Input Data -->
        <div class=" row align-items-center">
            <div class="form-group col-md-12">
                <label for="current_password">Contraseña actual <span class="text-danger">*</span></label>
                <input type="password" class="form-control @error('current_password') is-invalid @enderror" id="current_password" name="current_password" required>
                @error('current_password')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
                @enderror
            </div>
            <div class="form-group col-md-6">
                <label for="password">Nueva contraseña <span class="text-danger">*</span></label>
                <input type="password" class="form-control @error('password') is-invalid @enderror" id="password" name="password" required>
                @error('password')
                <div class="invalid-feedback">
                    {{ str_replace('password', 'contraseña', $message) }}
                </div>
                @enderror
            </div>
            <div class="form-group col-md-6">
                <label for="password_confirmation">Confirmar Contraseña <span class="text-danger">*</span></label>
                <input type="password" class="form-control @error('password_confirmation') is-invalid @enderror" id="password_confirmation" name="password_confirmation" required>
                @error('password_confirmation')
                <div class="invalid-feedback">
                    {{ str_replace('password_confirmation', 'contraseña', $message) }}
                </div>
                @enderror
            </div>
        </div>
        <!-- end: Input Data -->
        <div class="mt-2">
            <button type="submit" class="btn btn-primary mr-2">Cambiar</button>
            <a class="btn bg-danger" href="{{ route('profile') }}">Cancelar</a>
        </div>
    </form>
</div>
<!-- end: Edit Profile -->
