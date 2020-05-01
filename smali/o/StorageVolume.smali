.class public final Lo/StorageVolume;
.super Lo/DiskWriteViolation;
.source ""


# instance fields
.field private final e:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lo/DiskWriteViolation;-><init>(Lo/amc;)V

    iput p1, p0, Lo/StorageVolume;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 56
    iget v0, p0, Lo/StorageVolume;->e:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 57
    iget v0, p0, Lo/StorageVolume;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/StorageVolume;

    if-eqz v0, :cond_0

    check-cast p1, Lo/StorageVolume;

    iget v0, p0, Lo/StorageVolume;->e:I

    iget p1, p1, Lo/StorageVolume;->e:I

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

    iget v0, p0, Lo/StorageVolume;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lo/StorageVolume;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
