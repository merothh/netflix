.class public Lcom/netflix/mediaclient/service/offline/registry/RegistryData;
.super Ljava/lang/Object;
.source "RegistryData.java"


# instance fields
.field public mDeletedPlayableList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deletedPlayableList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;",
            ">;"
        }
    .end annotation
.end field

.field public mMetaRegistryWriteCounter:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "writeCounter"
    .end annotation
.end field

.field public mOfflinePlayablePersistentDataList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offlinePlayableList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;",
            ">;"
        }
    .end annotation
.end field

.field public transient mOfflineRootStorageDirPath:Ljava/lang/String;

.field public final mRegId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "regId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mDeletedPlayableList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    iput p1, p0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflineRootStorageDirPath:Ljava/lang/String;

    return-void
.end method
