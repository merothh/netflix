.class Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$2;
.super Ljava/lang/Object;
.source "OfflineManifestManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$2;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$2;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$2;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$playableId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$2;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$playableDirPath:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$2;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;

    iget-object v6, v6, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$oxid:Ljava/lang/String;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$2;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;

    iget-object v7, v7, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$dxid:Ljava/lang/String;

    move-object v8, v5

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->access$000(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)V

    .line 158
    return-void
.end method
