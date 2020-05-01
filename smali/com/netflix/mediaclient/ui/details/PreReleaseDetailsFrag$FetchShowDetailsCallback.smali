.class Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$FetchShowDetailsCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "PreReleaseDetailsFrag.java"


# instance fields
.field private final requestId:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;J)V
    .locals 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    .line 111
    const-string/jumbo v0, "PreReleaseDetailsFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 112
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$FetchShowDetailsCallback;->requestId:J

    .line 113
    return-void
.end method


# virtual methods
.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v0, "PreReleaseDetailsFrag"

    const-string/jumbo v1, "Activity state is invalid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$FetchShowDetailsCallback;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    iget-wide v2, v2, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->requestId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    :cond_1
    const-string/jumbo v0, "PreReleaseDetailsFrag"

    const-string/jumbo v1, "Ignoring stale callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->isLoading:Z

    .line 130
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    const-string/jumbo v0, "PreReleaseDetailsFrag"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->showErrorView()V

    goto :goto_0

    .line 136
    :cond_3
    if-nez p1, :cond_4

    .line 137
    const-string/jumbo v0, "PreReleaseDetailsFrag"

    const-string/jumbo v1, "No details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->showErrorView()V

    goto :goto_0

    .line 142
    :cond_4
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    goto :goto_0
.end method
