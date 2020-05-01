.class Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/model/leafs/PostPlayAsset;


# instance fields
.field private assetType:Ljava/lang/String;

.field private height:I

.field private isBadged:Z

.field private tone:Ljava/lang/String;

.field private type:Lcom/netflix/model/leafs/PostPlayAsset$Type;

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method private constructor <init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->width:I

    .line 20
    iput v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->height:I

    .line 21
    iput-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->isBadged:Z

    .line 33
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->type:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/netflix/model/leafs/PostPlayAsset$Type;->DISPLAY_ART:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    invoke-direct {p0, v0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;-><init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method private setUrl(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAssetType()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->assetType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->height:I

    return v0
.end method

.method public getTone()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->tone:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/netflix/model/leafs/PostPlayAsset$Type;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->type:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->width:I

    return v0
.end method

.method public isBadged()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->isBadged:Z

    return v0
.end method

.method public setAssetType(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->assetType:Ljava/lang/String;

    return-void
.end method

.method public setBadged(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->isBadged:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->height:I

    return-void
.end method

.method public setTone(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->tone:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/netflix/model/leafs/PostPlayAsset$Type;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->type:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayAsset;->width:I

    return-void
.end method
