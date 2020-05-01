.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "RoleDetailsFrag.java"


# instance fields
.field private final requestId:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;J)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    const-string/jumbo v0, "RoleDetailsFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->requestId:J

    return-void
.end method


# virtual methods
.method public onPersonDetailFetched(Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onPersonDetailFetched(Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->requestId:J

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$300(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$400(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "RoleDetailsFrag"

    const-string/jumbo v1, "Ignoring stale callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$502(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Z)Z

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "RoleDetailsFrag"

    const-string/jumbo v2, "Invalid status code"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$600(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$702(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Lcom/netflix/model/branches/FalkorActorStill;)Lcom/netflix/model/branches/FalkorActorStill;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    move-result-object v2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, p1, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->updateDetails(Lcom/netflix/model/branches/FalkorPerson;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$200(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onPersonRelatedFetched(Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/branches/FalkorPerson;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onPersonRelatedFetched(Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$600(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->requestId:J

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$800(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$900(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "RoleDetailsFrag"

    const-string/jumbo v1, "Ignoring stale callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$502(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Z)Z

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "RoleDetailsFrag"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->videoId:Ljava/lang/String;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    move-result-object v0

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->onNetFlixLabel:Landroid/view/View;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1000(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItems(Ljava/util/Collection;)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_2
.end method
