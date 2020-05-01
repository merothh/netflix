.class public final Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableProgress$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PV;->a(Lo/Bi;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/mediaclient/ui/offline/DownloadButton;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/PV;

.field final synthetic b:Lo/Bi;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Lo/PV;Lo/Bi;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableProgress$$inlined$let$lambda$1;->a:Lo/PV;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableProgress$$inlined$let$lambda$1;->b:Lo/Bi;

    iput p3, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableProgress$$inlined$let$lambda$1;->c:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableProgress$$inlined$let$lambda$1;->b:Lo/Bi;

    invoke-interface {v0}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    .line 97
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 98
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableProgress$$inlined$let$lambda$1;->b:Lo/Bi;

    invoke-interface {v1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 103
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableProgress$$inlined$let$lambda$1;->b:Lo/Bi;

    invoke-interface {v1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableProgress$$inlined$let$lambda$1;->c:I

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableProgress$$inlined$let$lambda$1;->a(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
