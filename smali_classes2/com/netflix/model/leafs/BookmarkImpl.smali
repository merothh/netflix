.class public final Lcom/netflix/model/leafs/BookmarkImpl;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lcom/netflix/model/leafs/Bookmark;


# static fields
.field private static final TAG:Ljava/lang/String; = "Bookmark"


# instance fields
.field private bookmarkPosition:I

.field private interactiveProgress:Ljava/lang/Integer;

.field private lastModified:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    return-void
.end method


# virtual methods
.method public deepCopy(Lcom/netflix/model/leafs/BookmarkImpl;)V
    .locals 2

    .line 89
    iget v0, p1, Lcom/netflix/model/leafs/BookmarkImpl;->bookmarkPosition:I

    iput v0, p0, Lcom/netflix/model/leafs/BookmarkImpl;->bookmarkPosition:I

    .line 90
    iget-wide v0, p1, Lcom/netflix/model/leafs/BookmarkImpl;->lastModified:J

    iput-wide v0, p0, Lcom/netflix/model/leafs/BookmarkImpl;->lastModified:J

    return-void
.end method

.method public getBookmarkPosition()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/netflix/model/leafs/BookmarkImpl;->bookmarkPosition:I

    return v0
.end method

.method public getInteractiveProgress()Ljava/lang/Integer;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netflix/model/leafs/BookmarkImpl;->interactiveProgress:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/netflix/model/leafs/BookmarkImpl;->lastModified:J

    return-wide v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 11

    .line 27
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 32
    iget v0, p0, Lcom/netflix/model/leafs/BookmarkImpl;->bookmarkPosition:I

    .line 33
    iget-wide v1, p0, Lcom/netflix/model/leafs/BookmarkImpl;->lastModified:J

    .line 35
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    .line 37
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x6d10f381

    if-eq v9, v10, :cond_2

    const v4, -0x5e2a0cd1

    if-eq v9, v4, :cond_1

    const v4, 0x74c4037f

    if-eq v9, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "lastModified"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const-string v4, "interactiveProgress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_2
    const-string v9, "bookmarkPosition"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, -0x1

    :goto_2
    if-eqz v4, :cond_6

    if-eq v4, v6, :cond_5

    if-eq v4, v5, :cond_4

    goto :goto_0

    .line 40
    :cond_4
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/model/leafs/BookmarkImpl;->interactiveProgress:Ljava/lang/Integer;

    goto :goto_0

    .line 39
    :cond_5
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/netflix/model/leafs/BookmarkImpl;->lastModified:J

    goto :goto_0

    .line 38
    :cond_6
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    iput v3, p0, Lcom/netflix/model/leafs/BookmarkImpl;->bookmarkPosition:I

    goto :goto_0

    .line 45
    :cond_7
    iget-wide v7, p0, Lcom/netflix/model/leafs/BookmarkImpl;->lastModified:J

    cmp-long p1, v1, v7

    if-lez p1, :cond_8

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 46
    iget v3, p0, Lcom/netflix/model/leafs/BookmarkImpl;->bookmarkPosition:I

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v4

    iget-wide v3, p0, Lcom/netflix/model/leafs/BookmarkImpl;->lastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p1, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v5

    const/4 v3, 0x3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p1, v3

    const-string v3, "Bookmark"

    const-string v4, "restoring bookmark and time (%d - %d) to older values (%d - %d)"

    .line 46
    invoke-static {v3, v4, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 48
    iput v0, p0, Lcom/netflix/model/leafs/BookmarkImpl;->bookmarkPosition:I

    .line 49
    iput-wide v1, p0, Lcom/netflix/model/leafs/BookmarkImpl;->lastModified:J

    :cond_8
    return-void
.end method

.method public setBookmarkPosition(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/netflix/model/leafs/BookmarkImpl;->bookmarkPosition:I

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    .line 70
    iput-wide p1, p0, Lcom/netflix/model/leafs/BookmarkImpl;->lastModified:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bookmark [bookmarkPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/BookmarkImpl;->bookmarkPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/model/leafs/BookmarkImpl;->lastModified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
