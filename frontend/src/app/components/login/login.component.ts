import { Component } from '@angular/core';
import { UserService } from '../../services/user.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
  cedula: string = '';
  password: string = '';

  constructor(private userService: UserService) { }

  login() {
    this.userService.login(this.cedula, this.password).subscribe(response => {
      alert('Inicio de sesión exitoso');
    }, error => {
      alert('Error en las credenciales');
    });
  }
}
