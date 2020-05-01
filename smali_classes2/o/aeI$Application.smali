.class final Lo/aeI$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aeI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Application"
.end annotation


# instance fields
.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lo/aeI$Application;-><init>(ZZILo/amc;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/aeI$Application;->e:Z

    iput-boolean p2, p0, Lo/aeI$Application;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZILo/amc;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 30
    :cond_1
    invoke-direct {p0, p1, p2}, Lo/aeI$Application;-><init>(ZZ)V

    return-void
.end method

.method public static synthetic b(Lo/aeI$Application;ZZILjava/lang/Object;)Lo/aeI$Application;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lo/aeI$Application;->e:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lo/aeI$Application;->d:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lo/aeI$Application;->b(ZZ)Lo/aeI$Application;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(ZZ)Lo/aeI$Application;
    .locals 1

    new-instance v0, Lo/aeI$Application;

    invoke-direct {v0, p1, p2}, Lo/aeI$Application;-><init>(ZZ)V

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/aeI$Application;->e:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lo/aeI$Application;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/aeI$Application;

    if-eqz v0, :cond_0

    check-cast p1, Lo/aeI$Application;

    iget-boolean v0, p0, Lo/aeI$Application;->e:Z

    iget-boolean v1, p1, Lo/aeI$Application;->e:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/aeI$Application;->d:Z

    iget-boolean p1, p1, Lo/aeI$Application;->d:Z

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

    iget-boolean v0, p0, Lo/aeI$Application;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/aeI$Application;->d:Z

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

    const-string v1, "VideoMerchAutoPlaySettingOverride(bigRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/aeI$Application;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/aeI$Application;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
