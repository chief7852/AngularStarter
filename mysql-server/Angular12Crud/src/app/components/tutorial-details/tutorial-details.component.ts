import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Tutorial } from 'src/app/models/tutorial.model';
import { TutorialService } from 'src/app/services/tutorial.service';

@Component({
  selector: 'app-tutorial-details',
  templateUrl: './tutorial-details.component.html',
  styleUrls: ['./tutorial-details.component.css']
})
export class TutorialDetailsComponent implements OnInit {
  currentTutorial: Tutorial = {
    title: '',
    description: '',
    published: false,
  };

  message = '';

  constructor(
    private tutorialService: TutorialService,
    private route: ActivatedRoute,
    private router: Router
  ) { }

  ngOnInit(): void {
    this.message = '';
    this.getTutorial(this.route.snapshot.params.id);
  }

  getTutorial(id: string): void{
    this.tutorialService.getAll(id)
      .subscribe(
        data => {
          this.currentTutorial = data;
          console.log(data);
        },
        error => {
          console.log(error);
        }
      )
  }


  updatePublished(status: boolean): void{
    const data = {
      title: this.currentTutorial.title,
      description: this.currentTutorial.description,
      published: status
    };

    this.message = '';
  }

}
