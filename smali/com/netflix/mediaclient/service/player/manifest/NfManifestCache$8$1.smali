.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;
.super Ljava/lang/Object;
.source "NfManifestCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;

.field final synthetic val$manifestsJson:Lorg/json/JSONObject;

.field final synthetic val$requestedMovies:Ljava/util/List;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;->val$manifestsJson:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;->val$requestedMovies:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;->val$manifestsJson:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;->val$requestedMovies:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$1100(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;->val$requestedMovies:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;->val$manifestsJson:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$1200(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;Lorg/json/JSONObject;)V

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$100(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V

    goto :goto_0
.end method
