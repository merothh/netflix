.class public final Lo/VolumeRecord;
.super Lo/DiskWriteViolation;
.source ""


# instance fields
.field private final d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lo/DiskWriteViolation;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/VolumeRecord;->d:Z

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 51
    iget-boolean v0, p0, Lo/VolumeRecord;->d:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lo/VolumeRecord;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/VolumeRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lo/VolumeRecord;

    iget-boolean v0, p0, Lo/VolumeRecord;->d:Z

    iget-boolean p1, p1, Lo/VolumeRecord;->d:Z

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
    .locals 1

    iget-boolean v0, p0, Lo/VolumeRecord;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lo/VolumeRecord;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
