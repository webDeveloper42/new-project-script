import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import {HeaderComponent} from './components/header/header.component';
import {FooterComponent} from './components/footer/footer.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, HeaderComponent,FooterComponent],

  template: `
    <app-header/>
    <router-outlet/>
    <app-footer/>

  `,
  styleUrl: './app.component.scss'
})
export class AppComponent {
  title = 'dev-starter-kit-website';
}
