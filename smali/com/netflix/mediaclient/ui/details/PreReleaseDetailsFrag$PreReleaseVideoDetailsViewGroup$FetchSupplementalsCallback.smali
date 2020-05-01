.class Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "PreReleaseDetailsFrag.java"


# instance fields
.field private final requestId:J

.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;J)V
    .locals 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;

    .line 197
    const-string/jumbo v0, "PreReleaseVideoDetailsViewGroup"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 198
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->requestId:J

    .line 199
    return-void
.end method


# virtual methods
.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 205
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    iget-wide v2, v2, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->requestId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->access$100(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    :cond_0
    const-string/jumbo v0, "PreReleaseVideoDetailsViewGroup"

    const-string/jumbo v1, "Ignoring stale callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    if-eqz p1, :cond_1

    .line 211
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->setupTrailerPlay(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V

    goto :goto_0
.end method

.method setupTrailerPlay(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->access$200(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->access$200(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->access$200(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback$1;-><init>(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-void
.end method
