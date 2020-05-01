.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "NfManifestCache.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

.field final synthetic val$finalist:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;->val$finalist:Ljava/util/List;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onManifestsFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;->val$finalist:Ljava/util/List;

    .line 262
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$1000(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method
