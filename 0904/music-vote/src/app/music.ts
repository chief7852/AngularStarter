
export class Music {
  title: string;
  artist: string;
  votes: number;

  constructor(title: string, artist: string, votes?: number) {
    this.title = title;
    this.artist = artist;
    this.votes = votes || 0;
  }

}
