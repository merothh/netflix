.class public final Lo/Nj$PendingIntent;
.super Lo/Nj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Nj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingIntent"
.end annotation


# instance fields
.field private final a:I

.field private final e:I


# virtual methods
.method public final b()I
    .locals 1

    .line 64
    iget v0, p0, Lo/Nj$PendingIntent;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 63
    iget v0, p0, Lo/Nj$PendingIntent;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/Nj$PendingIntent;

    if-eqz v0, :cond_0

    check-cast p1, Lo/Nj$PendingIntent;

    invoke-virtual {p0}, Lo/Nj$PendingIntent;->d()I

    move-result v0

    invoke-virtual {p1}, Lo/Nj$PendingIntent;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/Nj$PendingIntent;->e:I

    iget p1, p1, Lo/Nj$PendingIntent;->e:I

    if-ne v0, p1, :cond_0

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
    .locals 2

    invoke-virtual {p0}, Lo/Nj$PendingIntent;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/Nj$PendingIntent;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowFocusChanged(itemPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/Nj$PendingIntent;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playPauseRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Nj$PendingIntent;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method