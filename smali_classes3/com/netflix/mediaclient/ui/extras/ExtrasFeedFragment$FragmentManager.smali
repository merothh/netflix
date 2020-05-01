.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/GY;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Lo/GY;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;->d(Lo/GY;)V

    return-void
.end method

.method public final d(Lo/GY;)V
    .locals 3

    .line 240
    instance-of v0, p1, Lo/GY$ActionBar$Application;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->e(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 242
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Ljava/lang/Long;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lo/GY$ActionBar$Application;

    invoke-virtual {v1}, Lo/GY$ActionBar$Application;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/GK;->c(I)Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v1

    invoke-virtual {v1}, Lo/GK;->l()Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    move-result-object v1

    .line 248
    new-instance v2, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$5$2;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$5$2;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;Lo/GY;)V

    check-cast v2, Lo/alN;

    .line 245
    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
