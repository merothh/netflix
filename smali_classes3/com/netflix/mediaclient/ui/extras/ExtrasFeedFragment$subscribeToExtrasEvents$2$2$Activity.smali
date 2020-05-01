.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2$Activity;
.super Lo/Of;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->c(Lo/zG;Lo/agg;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/agg;

.field final synthetic d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;Lo/agg;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/agg;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 621
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2$Activity;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2$Activity;->a:Lo/agg;

    invoke-direct {p0, p3}, Lo/Of;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 634
    invoke-super {p0, p1}, Lo/Of;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 635
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2$Activity;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->requestModelBuild()V

    .line 636
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2$Activity;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    .line 637
    new-instance v1, Lo/GY$Activity;

    .line 638
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2$Activity;->a:Lo/agg;

    invoke-interface {v2}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video.id"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 639
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/lit8 p1, p1, 0x1

    .line 637
    invoke-direct {v1, v2, p1}, Lo/GY$Activity;-><init>(Ljava/lang/String;Z)V

    check-cast v1, Lo/VintfObject;

    .line 824
    sget-object p1, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {p1, v0}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    .line 825
    const-class v0, Lo/GY;

    invoke-virtual {p1, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    .line 826
    const-class v0, Lo/GY;

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 623
    invoke-super {p0, p1}, Lo/Of;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 624
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2$Activity;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->requestModelBuild()V

    .line 625
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2$Activity;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    .line 626
    new-instance v1, Lo/GY$Activity;

    .line 627
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2$Activity;->a:Lo/agg;

    invoke-interface {v2}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video.id"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 628
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 626
    :goto_0
    invoke-direct {v1, v2, p1}, Lo/GY$Activity;-><init>(Ljava/lang/String;Z)V

    check-cast v1, Lo/VintfObject;

    .line 820
    sget-object p1, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {p1, v0}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    .line 821
    const-class v0, Lo/GY;

    invoke-virtual {p1, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    .line 822
    const-class v0, Lo/GY;

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method
