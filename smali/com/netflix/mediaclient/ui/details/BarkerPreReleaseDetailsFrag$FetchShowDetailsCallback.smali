.class Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$FetchShowDetailsCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "BarkerPreReleaseDetailsFrag.java"


# instance fields
.field private final requestId:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;J)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    const-string/jumbo v0, "PreReleaseDetailsFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$FetchShowDetailsCallback;->requestId:J

    return-void
.end method


# virtual methods
.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PreReleaseDetailsFrag"

    const-string/jumbo v1, "Activity state is invalid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$FetchShowDetailsCallback;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    iget-wide v2, v2, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->requestId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "PreReleaseDetailsFrag"

    const-string/jumbo v1, "Ignoring stale callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->isLoading:Z

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "PreReleaseDetailsFrag"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->showErrorView()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    const-string/jumbo v0, "PreReleaseDetailsFrag"

    const-string/jumbo v1, "No details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->showErrorView()V

    goto :goto_0

    :cond_4
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->access$100(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    goto :goto_0
.end method
