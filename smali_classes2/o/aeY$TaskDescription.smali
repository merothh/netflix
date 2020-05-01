.class final Lo/aeY$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aeY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field private final b:Ljava/lang/Throwable;

.field private final d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "imageListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aeY$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    iput-object p2, p0, Lo/aeY$TaskDescription;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;
    .locals 1

    .line 695
    iget-object v0, p0, Lo/aeY$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    return-object v0
.end method

.method public final e()Ljava/lang/Throwable;
    .locals 1

    .line 696
    iget-object v0, p0, Lo/aeY$TaskDescription;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/aeY$TaskDescription;

    if-eqz v0, :cond_0

    check-cast p1, Lo/aeY$TaskDescription;

    iget-object v0, p0, Lo/aeY$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    iget-object v1, p1, Lo/aeY$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aeY$TaskDescription;->b:Ljava/lang/Throwable;

    iget-object p1, p1, Lo/aeY$TaskDescription;->b:Ljava/lang/Throwable;

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

    iget-object v0, p0, Lo/aeY$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/aeY$TaskDescription;->b:Ljava/lang/Throwable;

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

    const-string v1, "BatchedErrorResult(imageListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aeY$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aeY$TaskDescription;->b:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
