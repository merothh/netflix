.class public final Lo/nH;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;)V
    .locals 1

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/nH;->c:Ljava/lang/String;

    iput-object p2, p0, Lo/nH;->a:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/nH;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/nH;->a:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/nH;

    if-eqz v0, :cond_0

    check-cast p1, Lo/nH;

    iget-object v0, p0, Lo/nH;->c:Ljava/lang/String;

    iget-object v1, p1, Lo/nH;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/nH;->a:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    iget-object p1, p1, Lo/nH;->a:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lo/nH;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/nH;->a:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteRequest(playableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/nH;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cachedVideoRemovalFeature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/nH;->a:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
