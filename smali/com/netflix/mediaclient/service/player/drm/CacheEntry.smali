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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->id:Ljava/lang/Long;

    iput p2, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->priority:I

    iput-wide p3, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->age:J

    iput-boolean p5, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->inUse:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/netflix/mediaclient/service/player/drm/CacheEntry;)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->inUse:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->inUse:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->inUse:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->inUse:Z

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getPriority()I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getPriority()I

    move-result v3

    if-le v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getPriority()I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getPriority()I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getAge()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getAge()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getAge()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getAge()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->compareTo(Lcom/netflix/mediaclient/service/player/drm/CacheEntry;)I

    move-result v0

    return v0
.end method

.method public getAge()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->age:J

    return-wide v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->priority:I

    return v0
.end method
