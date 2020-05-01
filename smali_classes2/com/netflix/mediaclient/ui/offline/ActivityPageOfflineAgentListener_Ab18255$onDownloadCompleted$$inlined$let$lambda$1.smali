.class public final Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onDownloadCompleted$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PV;->e(Lo/Bi;)V
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
.field final synthetic a:Lo/Bi;

.field final synthetic e:Lo/PV;


# direct methods
.method public constructor <init>(Lo/PV;Lo/Bi;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onDownloadCompleted$$inlined$let$lambda$1;->e:Lo/PV;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onDownloadCompleted$$inlined$let$lambda$1;->a:Lo/Bi;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V
    .locals 2

    const-string v0, "button"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 133
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onDownloadCompleted$$inlined$let$lambda$1;->a:Lo/Bi;

    invoke-interface {v1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onDownloadCompleted$$inlined$let$lambda$1;->b(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
