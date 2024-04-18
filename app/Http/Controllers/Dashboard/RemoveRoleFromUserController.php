<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\User;
use Iluminate\Http\RedirectResponse;
use Spatie\Permission\Models\Role;

// This controller handles the removal of a role from a user
class RemoveRoleFromUserController extends Controller
{
    // This method removes a role from a user and redirects back to the previous page
    public function __invoke(User $user, Role $role): RedirectResponse
    {
        // Remove the role from the user
        $user->removeRole($role);

        // Redirect back to the previous page
        return back();
    }
}