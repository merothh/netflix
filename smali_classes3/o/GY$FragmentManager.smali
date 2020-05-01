.class public final Lo/GY$FragmentManager;
.super Lo/GY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentManager"
.end annotation


# instance fields
.field private final a:Z

.field private final d:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, v0}, Lo/GY;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/GY$FragmentManager;->a:Z

    iput-boolean p2, p0, Lo/GY$FragmentManager;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lo/GY$FragmentManager;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lo/GY$FragmentManager;->a:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/GY$FragmentManager;

    if-eqz v0, :cond_0

    check-cast p1, Lo/GY$FragmentManager;

    iget-boolean v0, p0, Lo/GY$FragmentManager;->a:Z

    iget-boolean v1, p1, Lo/GY$FragmentManager;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/GY$FragmentManager;->d:Z

    iget-boolean p1, p1, Lo/GY$FragmentManager;->d:Z

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

    iget-boolean v0, p0, Lo/GY$FragmentManager;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/GY$FragmentManager;->d:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToggleOrientationManager(enableSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/GY$FragmentManager;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lockOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/GY$FragmentManager;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
