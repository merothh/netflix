.class public final Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableDeleted$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PV;->d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Z)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic c:Lo/PV;

.field final synthetic d:Z


# direct methods
.method public constructor <init>(Lo/PV;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableDeleted$$inlined$let$lambda$1;->c:Lo/PV;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableDeleted$$inlined$let$lambda$1;->d:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableDeleted$$inlined$let$lambda$1;->a:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V
    .locals 2

    const-string v0, "button"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableDeleted$$inlined$let$lambda$1;->d:Z

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_0

    .line 217
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->e:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableDeleted$$inlined$let$lambda$1;->a:Ljava/lang/String;

    .line 213
    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableDeleted$$inlined$let$lambda$1;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableDeleted$$inlined$let$lambda$1;->b(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
