.class Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "MovieDetailsFrag.java"


# instance fields
.field private final requestId:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;J)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    const-string/jumbo v0, "MovieDetailsFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->requestId:J

    return-void
.end method


# virtual methods
.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Activity state is invalid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-wide v2, v2, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->requestId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->access$100(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Ignoring stale callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->isLoading:Z

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->showErrorView()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "No details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->showErrorView()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "MovieDetailsFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "evidence glyph: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getEvidenceGlyph()Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", evidence text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getEvidenceText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->reportDPMetadataFetchedEvent(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0
.end method
