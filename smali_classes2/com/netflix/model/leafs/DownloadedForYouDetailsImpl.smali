.class public final Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lo/AA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl$Companion;

.field private static final IS_OFFLINE_AVAILABLE:Ljava/lang/String; = "isOfflineAvailable"

.field private static final PARENT_VIDEO_ID:Ljava/lang/String; = "parentVideoId"

.field private static final VIDEO_ID:Ljava/lang/String; = "videoId"


# instance fields
.field private offlineAvailable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isOfflineAvailable"
    .end annotation
.end field

.field private parentVideo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parentVideoId"
    .end annotation
.end field

.field private video:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoId"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->Companion:Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOfflineAvailable()Ljava/lang/Boolean;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->offlineAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getParentVideo()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->parentVideo:Ljava/lang/String;

    return-object v0
.end method

.method public getParentVideoId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->parentVideo:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideo()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->video:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->video:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->getParentVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_0
    return-object v0
.end method

.method public isOfflineAvailable()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->offlineAvailable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    const-string v0, "jsonElem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    if-nez v1, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4df7b690

    const-string v4, "value"

    if-eq v2, v3, :cond_4

    const v3, 0x1afceaf6

    if-eq v2, v3, :cond_3

    const v3, 0x381946ec

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "parentVideoId"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->parentVideo:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v2, "videoId"

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->video:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v2, "isOfflineAvailable"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->offlineAvailable:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final setOfflineAvailable(Ljava/lang/Boolean;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->offlineAvailable:Ljava/lang/Boolean;

    return-void
.end method

.method public final setParentVideo(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->parentVideo:Ljava/lang/String;

    return-void
.end method

.method public final setVideo(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/netflix/model/leafs/DownloadedForYouDetailsImpl;->video:Ljava/lang/String;

    return-void
.end method
