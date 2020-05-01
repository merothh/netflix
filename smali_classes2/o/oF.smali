.class public Lo/oF;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:I

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/om;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lo/oF;->d:I

    const-wide/16 v0, -0x1

    .line 23
    iput-wide v0, p0, Lo/oF;->a:J

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/oF;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lo/oF;->c:J

    return-wide v0
.end method

.method public b()V
    .locals 1

    const/16 v0, 0x64

    .line 71
    iput v0, p0, Lo/oF;->d:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 97
    iget v0, p0, Lo/oF;->d:I

    return v0
.end method

.method public c(Ljava/io/File;)J
    .locals 5

    .line 79
    iget-wide v0, p0, Lo/oF;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 80
    invoke-static {p1}, Lo/adE;->e(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/oF;->a:J

    .line 82
    :cond_0
    iget-wide v0, p0, Lo/oF;->a:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lo/oF;->b:J

    return-wide v0
.end method

.method public e()V
    .locals 9

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lo/oF;->c:J

    .line 29
    iput-wide v0, p0, Lo/oF;->b:J

    .line 31
    iget-object v2, p0, Lo/oF;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/om;

    .line 34
    iget-wide v5, v4, Lo/om;->c:J

    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    .line 35
    iget-wide v5, p0, Lo/oF;->c:J

    iget-wide v7, v4, Lo/om;->b:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lo/oF;->c:J

    .line 36
    iget-wide v5, p0, Lo/oF;->b:J

    iget-wide v3, v4, Lo/om;->c:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lo/oF;->b:J

    goto :goto_0

    .line 38
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTotalBytesToDownload "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lo/om;->c:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " is not positive for "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nf_playableProgress"

    .line 38
    invoke-static {v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    :cond_1
    iget-wide v2, p0, Lo/oF;->b:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    .line 43
    iget-wide v0, p0, Lo/oF;->c:J

    const-wide/16 v4, 0x64

    mul-long v0, v0, v4

    div-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lo/oF;->d:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lo/oF;->d:I

    :goto_1
    return-void
.end method

.method public e(I)Z
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_playableProgress"

    const-string v4, "hasEnoughDataToWatch percentage=%d"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 53
    iget-object v1, p0, Lo/oF;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/om;

    .line 55
    iget-wide v5, v4, Lo/om;->c:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 56
    iget-wide v5, v4, Lo/om;->b:J

    const-wide/16 v7, 0x64

    mul-long v5, v5, v7

    iget-wide v7, v4, Lo/om;->c:J

    div-long/2addr v5, v7

    long-to-int v6, v5

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 57
    iget-wide v7, v4, Lo/om;->b:J

    .line 58
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    iget-wide v7, v4, Lo/om;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v5, v7

    const-string v4, "hasEnoughDataToWatch onDisk=%d total=%d downloadedPercentage=%d"

    .line 57
    invoke-static {v2, v4, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    add-int/2addr v7, p1

    if-ge v6, v7, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "progressive play %b"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p1
.end method
