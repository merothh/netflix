.class public final Lo/Nj$LoaderManager;
.super Lo/Nj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Nj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoaderManager"
.end annotation


# instance fields
.field private final a:Z

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lo/Nj;-><init>(Lo/amc;)V

    iput p1, p0, Lo/Nj$LoaderManager;->d:I

    iput-boolean p2, p0, Lo/Nj$LoaderManager;->a:Z

    iput-boolean p3, p0, Lo/Nj$LoaderManager;->e:Z

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 46
    iget v0, p0, Lo/Nj$LoaderManager;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/Nj$LoaderManager;

    if-eqz v0, :cond_0

    check-cast p1, Lo/Nj$LoaderManager;

    invoke-virtual {p0}, Lo/Nj$LoaderManager;->d()I

    move-result v0

    invoke-virtual {p1}, Lo/Nj$LoaderManager;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/Nj$LoaderManager;->a:Z

    iget-boolean v1, p1, Lo/Nj$LoaderManager;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/Nj$LoaderManager;->e:Z

    iget-boolean p1, p1, Lo/Nj$LoaderManager;->e:Z

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
    .locals 3

    invoke-virtual {p0}, Lo/Nj$LoaderManager;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo/Nj$LoaderManager;->a:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo/Nj$LoaderManager;->e:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToggleOrientationManager(itemPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/Nj$LoaderManager;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enableSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Nj$LoaderManager;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lockOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Nj$LoaderManager;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
