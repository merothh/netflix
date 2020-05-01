.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;
.super Ljava/lang/Object;
.source "NfManifestCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

.field final synthetic val$manifestJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->val$manifestJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->val$manifestJson:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$900(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$200(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$movieId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$movieId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    invoke-static {v1, v2, v0, v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$300(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$100(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V

    return-void
.end method
