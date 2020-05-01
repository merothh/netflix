.class public Lcom/netflix/mediaclient/service/player/drm/CacheEntry;
.super Ljava/lang/Object;
.source "CacheEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/netflix/mediaclient/service/player/drm/CacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private age:J

.field private id:Ljava/lang/Long;

.field private inUse:Z

.field private priority:I


# direct methods
.method public constructor <init>(Ljava/lang/Long;IJZ)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->id:Ljava/lang/Long;

    .line 14
    iput p2, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->priority:I

    .line 15
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->age:J

    .line 16
    iput-boolean p5, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->inUse:Z

    .line 17
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/netflix/mediaclient/service/player/drm/CacheEntry;)I
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 33
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->inUse:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->inUse:Z

    if-nez v2, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->inUse:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->inUse:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getPriority()I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getPriority()I

    move-result v3

    if-le v2, v3, :cond_3

    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getPriority()I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getPriority()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getAge()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getAge()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    move v0, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getAge()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getAge()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 46
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 7
    check-cast p1, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->compareTo(Lcom/netflix/mediaclient/service/player/drm/CacheEntry;)I

    move-result v0

    return v0
.end method

.method public getAge()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->age:J

    return-wide v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->priority:I

    return v0
.end method
