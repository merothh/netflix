.class Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$1;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "OfflineLicenseManagerImpl.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$DownloadCompleteAndActivateCallback;

.field final synthetic val$playableId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$DownloadCompleteAndActivateCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$1;->this$0:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$1;->val$callback:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$DownloadCompleteAndActivateCallback;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$1;->val$playableId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$1;->val$callback:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$DownloadCompleteAndActivateCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$1;->val$playableId:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p1}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$DownloadCompleteAndActivateCallback;->onDownloadCompleteAndActivateDone(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
