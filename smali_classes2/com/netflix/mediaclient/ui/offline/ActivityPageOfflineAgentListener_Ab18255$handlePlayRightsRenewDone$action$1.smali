.class public final Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$handlePlayRightsRenewDone$action$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PV;->e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
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
.field final synthetic a:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$handlePlayRightsRenewDone$action$1;->a:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$handlePlayRightsRenewDone$action$1;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V
    .locals 3

    const-string v0, "button"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$handlePlayRightsRenewDone$action$1;->a:Lcom/netflix/mediaclient/android/app/Status;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 298
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_0

    .line 300
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 302
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$handlePlayRightsRenewDone$action$1;->b:Ljava/lang/String;

    .line 296
    invoke-virtual {p1, v0, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$handlePlayRightsRenewDone$action$1;->a(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
