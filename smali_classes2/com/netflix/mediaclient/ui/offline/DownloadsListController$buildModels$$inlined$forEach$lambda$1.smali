.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->buildModels(Lo/QF;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/AK;",
        "Lo/Bi;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic c:Lo/Tf;

.field final synthetic d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

.field final synthetic e:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic h:Z

.field final synthetic i:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic j:Lo/QF;

.field final synthetic k:Lo/QD;

.field final synthetic n:Lo/Qx;


# direct methods
.method constructor <init>(Lo/Tf;Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;Lcom/netflix/mediaclient/ui/offline/DownloadsListController;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lo/QF;ZLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/Map;Lo/Qx;Lo/QD;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->c:Lo/Tf;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->e:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->j:Lo/QF;

    iput-boolean p7, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->h:Z

    iput-object p8, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->g:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p9, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p10, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->f:Ljava/util/Map;

    iput-object p11, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->n:Lo/Qx;

    iput-object p12, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->k:Lo/QD;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/AK;Lo/Bi;)V
    .locals 4

    const-string v0, "playable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineViewData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    .line 187
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->e:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->a:Ljava/lang/String;

    const-string v2, "videoData.videoAndProfileData.profileId"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->c:Lo/Tf;

    invoke-virtual {v2}, Lo/Tf;->bb()Lo/AK;

    move-result-object v2

    const-string v3, "video.playable"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video.playable.playableId"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getIdStringForVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->k:Lo/QD;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/QD;->b(Ljava/lang/CharSequence;)Lo/QD;

    move-result-object v1

    invoke-virtual {v1}, Lo/QD;->d()J

    move-result-wide v1

    .line 192
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->f:Ljava/util/Map;

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BiConsumer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 194
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->access$add(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;Lo/BiConsumer;)V

    goto :goto_1

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    .line 198
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->c:Lo/Tf;

    .line 196
    invoke-virtual {v1, v0, v2, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->addVideoModel(Ljava/lang/String;Lo/Tf;Lo/AK;Lo/Bi;)V

    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lo/AK;

    check-cast p2, Lo/Bi;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$buildModels$$inlined$forEach$lambda$1;->b(Lo/AK;Lo/Bi;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
