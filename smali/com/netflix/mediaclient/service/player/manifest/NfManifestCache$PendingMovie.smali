.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;
.super Ljava/lang/Object;
.source "NfManifestCache.java"


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;ILcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->updatePriority(I)V

    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->addCallback(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addCallback(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mCallbacks:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method getmCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method getmPriority()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mPriority:I

    return v0
.end method

.method updatePriority(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mPriority:I

    return-void
.end method
