.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;
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
        "Lo/zG;",
        "Lo/agg;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

.field final synthetic b:Lo/GY;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;Lo/GY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;->b:Lo/GY;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/zG;Lo/agg;)V
    .locals 4

    const-string v0, "browseManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;->b:Lo/GY;

    check-cast v0, Lo/GY$PictureInPictureParams;

    invoke-virtual {v0}, Lo/GY$PictureInPictureParams;->a()Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    move-result-object v0

    sget-object v1, Lo/GF;->e:[I

    invoke-virtual {v0}, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 582
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;->b:Lo/GY;

    check-cast v1, Lo/GY$PictureInPictureParams;

    invoke-virtual {v1}, Lo/GY$PictureInPictureParams;->e()Ljava/lang/String;

    move-result-object v1

    .line 584
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;->b:Lo/GY;

    check-cast v3, Lo/GY$PictureInPictureParams;

    invoke-virtual {v3}, Lo/GY$PictureInPictureParams;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v3

    .line 581
    invoke-virtual {v0, v1, v2, v3, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/AppView;)V

    goto :goto_0

    .line 570
    :cond_1
    sget v0, Lo/GS$Fragment;->a:I

    .line 569
    invoke-static {v0, v1}, Lo/adk;->c(II)V

    .line 573
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 574
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;->b:Lo/GY;

    check-cast v1, Lo/GY$PictureInPictureParams;

    invoke-virtual {v1}, Lo/GY$PictureInPictureParams;->e()Ljava/lang/String;

    move-result-object v1

    .line 576
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;->b:Lo/GY;

    check-cast v3, Lo/GY$PictureInPictureParams;

    invoke-virtual {v3}, Lo/GY$PictureInPictureParams;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v3

    .line 573
    invoke-virtual {v0, v1, v2, v3, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/AppView;)V

    .line 590
    :goto_0
    new-instance v0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;

    .line 591
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;->b:Lo/GY;

    check-cast v1, Lo/GY$PictureInPictureParams;

    invoke-virtual {v1}, Lo/GY$PictureInPictureParams;->a()Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    move-result-object v1

    .line 592
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;->b:Lo/GY;

    check-cast v2, Lo/GY$PictureInPictureParams;

    invoke-virtual {v2}, Lo/GY$PictureInPictureParams;->e()Ljava/lang/String;

    move-result-object v2

    .line 593
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;->b:Lo/GY;

    check-cast v3, Lo/GY$PictureInPictureParams;

    invoke-virtual {v3}, Lo/GY$PictureInPictureParams;->b()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v3

    invoke-virtual {v3}, Lo/GK;->z()Lo/Bv;

    move-result-object v3

    invoke-interface {v3}, Lo/Bv;->getTrackId()I

    move-result v3

    .line 590
    :goto_1
    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/falkor/task/MutateRemindMeQueueTask;-><init>(Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;Ljava/lang/String;I)V

    check-cast v0, Lo/ConfirmationCallback;

    .line 595
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1$1;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1$1;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;Lo/agg;)V

    check-cast v1, Lo/zU;

    .line 589
    invoke-interface {p1, v0, v1}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lo/zG;

    check-cast p2, Lo/agg;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$1;->a(Lo/zG;Lo/agg;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
