.class Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$2;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "OfflineLicenseManagerImpl.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$2;->this$0:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncDone(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;->onSyncDone(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 299
    return-void
.end method
