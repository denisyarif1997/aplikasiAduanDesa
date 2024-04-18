<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\RedirectResponse;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RevokePermissionFromRoleController extends Controller
{
    // Define the method that will handle revoking a permission from a role
    public function __invoke(Role $role, Permission $permission): RedirectResponse
    {
        // Revoke the specified permission from the given role
        $role->revokePermissionTo($permission);

        // Redirect the user back to the previous page
        return back();
    }
}
