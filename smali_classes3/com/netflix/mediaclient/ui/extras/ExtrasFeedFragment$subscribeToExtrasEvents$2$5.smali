.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$5;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->a(Lo/GY;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$5;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Lo/akj;
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "post"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$5;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->U_()Lo/Am;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$5;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->U_()Lo/Am;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    const-string v0, "serviceManager!!"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/Am;->E()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 722
    sget-object p1, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$5;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 723
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$5;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    sget-object p1, Lo/akj;->a:Lo/akj;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .line 725
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$5;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    .line 726
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$5;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 727
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$5;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->C()Z

    move-result v2

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object p2

    invoke-interface {p2}, Lo/agg;->as_()Lo/AR;

    move-result-object p2

    const-string v3, "post.topNodeVideo.summary"

    invoke-static {p2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v3, "post.topNodeVideo.summary.id"

    invoke-static {p2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->e(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 725
    invoke-static {p1, v0, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->e(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object p1

    .line 730
    sget-object p2, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    if-ne p1, p2, :cond_4

    .line 731
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$5;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 733
    :cond_4
    sget-object p1, Lo/akj;->a:Lo/akj;

    :goto_1
    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$5;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Lo/akj;

    move-result-object p1

    return-object p1
.end method
