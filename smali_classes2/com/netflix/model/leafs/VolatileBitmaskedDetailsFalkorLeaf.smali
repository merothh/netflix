.class public final Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lo/Bd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf$Companion;

.field private static final IS_AGE_PROTECTED_MASK:J = 0x800000000000000L

.field private static final IS_AVAILABLE_FOR_DOWNLOAD_MASK:J = 0x4000000000000000L

.field private static final IS_PIN_PROTECTED_MASK:J = 0x2000000000000000L

.field private static final IS_PREVIEW_PROTECTED_MASK:J = 0x1000000000000000L

.field private static final PLAYABLE_ID_MASK:J = 0x7fffffffL


# instance fields
.field private bookmarkPositionSeconds:Ljava/lang/Integer;

.field private isAgeProtected:Z

.field private isAvailableForDownload:Z

.field private isPinProtected:Z

.field private isPreviewProtected:Z

.field private playableId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->Companion:Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookmarkPositionSeconds()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->bookmarkPositionSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->playableId:Ljava/lang/String;

    return-object v0
.end method

.method public isAgeProtected()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->isAgeProtected:Z

    return v0
.end method

.method public isAvailableForDownload()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->isAvailableForDownload:Z

    return v0
.end method

.method public isPinProtected()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->isPinProtected:Z

    return v0
.end method

.method public isPreviewProtected()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->isPreviewProtected:Z

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 9

    const-string v0, "jsonElem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

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

    .line 34
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xc61

    if-eq v2, v3, :cond_3

    const v3, 0x7787a536

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "bookmark"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->bookmarkPositionSeconds:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    const-string v2, "cd"

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "value"

    .line 39
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value.asString"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/anv;->e(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    and-long v4, v0, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v4, v2

    if-nez v8, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 40
    :goto_1
    iput-boolean v2, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->isAvailableForDownload:Z

    const-wide/high16 v2, 0x2000000000000000L

    and-long v4, v0, v2

    cmp-long v8, v4, v2

    if-nez v8, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 42
    :goto_2
    iput-boolean v2, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->isPinProtected:Z

    const-wide/high16 v2, 0x1000000000000000L

    and-long v4, v0, v2

    cmp-long v8, v4, v2

    if-nez v8, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 43
    :goto_3
    iput-boolean v2, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->isPreviewProtected:Z

    const-wide/high16 v2, 0x800000000000000L

    and-long v4, v0, v2

    cmp-long v8, v4, v2

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    .line 44
    :goto_4
    iput-boolean v6, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->isAgeProtected:Z

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    .line 45
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->playableId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->Companion:Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf$Companion;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf$Companion;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "playableId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->playableId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isAvailableForDownload = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-boolean v2, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->isAvailableForDownload:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bookmarkPositionSeconds = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v2, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->bookmarkPositionSeconds:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isPinProtected = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-boolean v2, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->isPinProtected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isPreviewProtected = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-boolean v2, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->isPreviewProtected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isAgeProtected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-boolean v1, p0, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;->isAgeProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
