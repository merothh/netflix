.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$6;
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
.field final synthetic a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

.field final synthetic d:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$6;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$6;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/GY;)V
    .locals 1

    .line 268
    instance-of v0, p1, Lo/GY$ActionBar$Application;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$6;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->getAdapter()Lo/OfLong;

    move-result-object v0

    check-cast p1, Lo/GY$ActionBar$Application;

    invoke-virtual {p1}, Lo/GY$ActionBar$Application;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/OfLong;->c(I)Lo/BiConsumer;

    move-result-object p1

    const-string v0, "epoxyController.adapter.\u2026ition(event.itemPosition)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    instance-of v0, p1, Lo/GX;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$6;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    check-cast p1, Lo/GX;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->a(Lo/GX;)V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lo/GY;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$6;->a(Lo/GY;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
