.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


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
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/GY;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/GY;)V
    .locals 3

    .line 285
    instance-of v0, p1, Lo/GY$ActionBar$ActionBar;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lo/GY$ActionBar$ActionBar;

    invoke-virtual {v1}, Lo/GY$ActionBar$ActionBar;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/GK;->c(I)Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v1

    invoke-virtual {v1}, Lo/GK;->l()Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    move-result-object v1

    .line 289
    new-instance v2, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8$1;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8$1;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;Lo/GY;)V

    check-cast v2, Lo/alN;

    .line 286
    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lo/GY;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;->d(Lo/GY;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
