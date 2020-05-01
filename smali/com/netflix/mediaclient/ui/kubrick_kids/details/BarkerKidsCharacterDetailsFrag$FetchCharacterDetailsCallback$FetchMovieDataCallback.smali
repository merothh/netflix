.class Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback$FetchMovieDataCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "BarkerKidsCharacterDetailsFrag.java"


# instance fields
.field private final requestId:J

.field final synthetic this$1:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;J)V
    .locals 2

    .prologue
    .line 374
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback$FetchMovieDataCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;

    .line 375
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 376
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback$FetchMovieDataCallback;->requestId:J

    .line 377
    return-void
.end method


# virtual methods
.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 381
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 384
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback$FetchMovieDataCallback;->requestId:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback$FetchMovieDataCallback;->requestId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 385
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    const-string/jumbo v1, "Stale response - ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback$FetchMovieDataCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$2902(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;Z)Z

    .line 391
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    const-string/jumbo v1, "Error status code fetching data - showing errors view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback$FetchMovieDataCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$3000(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)V

    goto :goto_0

    .line 397
    :cond_1
    if-nez p1, :cond_2

    .line 398
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    const-string/jumbo v1, "No details in response!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback$FetchMovieDataCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$3100(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)V

    goto :goto_0

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback$FetchMovieDataCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->renderAsMDP(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback$FetchMovieDataCallback;->this$1:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$3200(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
