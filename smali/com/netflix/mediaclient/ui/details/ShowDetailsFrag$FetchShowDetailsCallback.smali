.class Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$FetchShowDetailsCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "ShowDetailsFrag.java"


# instance fields
.field private final requestId:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;J)V
    .locals 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;

    .line 165
    const-string/jumbo v0, "ShowDetailsFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 166
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$FetchShowDetailsCallback;->requestId:J

    .line 167
    return-void
.end method


# virtual methods
.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v0, "ShowDetailsFrag"

    const-string/jumbo v1, "Activity state is invalid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$FetchShowDetailsCallback;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->access$100(Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    :cond_1
    const-string/jumbo v0, "ShowDetailsFrag"

    const-string/jumbo v1, "Ignoring stale callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->access$202(Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;Z)Z

    .line 189
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    const-string/jumbo v0, "ShowDetailsFrag"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->showErrorView()V

    goto :goto_0

    .line 195
    :cond_3
    if-nez p1, :cond_4

    .line 196
    const-string/jumbo v0, "ShowDetailsFrag"

    const-string/jumbo v1, "No details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->showErrorView()V

    goto :goto_0

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$FetchShowDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    goto :goto_0
.end method
