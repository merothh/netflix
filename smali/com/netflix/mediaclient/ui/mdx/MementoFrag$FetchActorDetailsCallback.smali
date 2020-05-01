.class Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "MementoFrag.java"


# instance fields
.field private final requestId:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;J)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    const-string/jumbo v0, "MementoFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;->requestId:J

    return-void
.end method


# virtual methods
.method public onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorPerson;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/MementoVideoSwatch;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorActorStill;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;->requestId:J

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v0, "MementoFrag"

    const-string/jumbo v1, "Ignoring stale callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$702(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Z)Z

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "MementoFrag"

    const-string/jumbo v2, "Invalid status code"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(Z)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v1, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$302(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Ljava/util/List;)Ljava/util/List;

    move v1, v0

    :cond_4
    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v1, p2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$402(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Ljava/util/List;)Ljava/util/List;

    move v1, v0

    :cond_5
    if-eqz p4, :cond_6

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v1, p4}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$902(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Ljava/util/List;)Ljava/util/List;

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$FetchActorDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method
