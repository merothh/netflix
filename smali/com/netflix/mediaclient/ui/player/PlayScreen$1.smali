.class Lcom/netflix/mediaclient/ui/player/PlayScreen$1;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "PlayScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayScreen;

.field final synthetic val$asset:Lcom/netflix/mediaclient/servicemgr/Asset;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1;->val$asset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvisoriesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1;->val$asset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAdvisoryDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->access$002(Lcom/netflix/mediaclient/ui/player/PlayScreen;Z)Z

    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/advisory/Advisory;

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->make(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/advisory/Advisory;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/advisory/Advisory;->getType()Lcom/netflix/model/leafs/advisory/Advisory$Type;

    move-result-object v0

    sget-object v4, Lcom/netflix/model/leafs/advisory/Advisory$Type;->EXPIRY_NOTICE:Lcom/netflix/model/leafs/advisory/Advisory$Type;

    if-ne v0, v4, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/netflix/mediaclient/android/widget/advisor/ExpiringContentAdvisor;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/player/PlayScreen;->mController:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/advisor/ExpiringContentAdvisor;->setController(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_4

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$1$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayScreen$1$1;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreen$1;)V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    :cond_4
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->queue()V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method
