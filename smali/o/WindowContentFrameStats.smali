.class public final Lo/WindowContentFrameStats;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZZLjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/WindowContentFrameStats;->a:Z

    iput-object p2, p0, Lo/WindowContentFrameStats;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lo/WindowContentFrameStats;->d:Z

    iput-boolean p4, p0, Lo/WindowContentFrameStats;->b:Z

    iput-boolean p5, p0, Lo/WindowContentFrameStats;->e:Z

    iput-object p6, p0, Lo/WindowContentFrameStats;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lo/WindowContentFrameStats;->d:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lo/WindowContentFrameStats;->a:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lo/WindowContentFrameStats;->b:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lo/WindowContentFrameStats;->e:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/WindowContentFrameStats;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/WindowContentFrameStats;

    if-eqz v0, :cond_0

    check-cast p1, Lo/WindowContentFrameStats;

    iget-boolean v0, p0, Lo/WindowContentFrameStats;->a:Z

    iget-boolean v1, p1, Lo/WindowContentFrameStats;->a:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/WindowContentFrameStats;->c:Ljava/lang/String;

    iget-object v1, p1, Lo/WindowContentFrameStats;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/WindowContentFrameStats;->d:Z

    iget-boolean v1, p1, Lo/WindowContentFrameStats;->d:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/WindowContentFrameStats;->b:Z

    iget-boolean v1, p1, Lo/WindowContentFrameStats;->b:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/WindowContentFrameStats;->e:Z

    iget-boolean v1, p1, Lo/WindowContentFrameStats;->e:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/WindowContentFrameStats;->h:Ljava/lang/String;

    iget-object p1, p1, Lo/WindowContentFrameStats;->h:Ljava/lang/String;

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
    .locals 4

    iget-boolean v0, p0, Lo/WindowContentFrameStats;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/WindowContentFrameStats;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/WindowContentFrameStats;->d:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/WindowContentFrameStats;->b:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/WindowContentFrameStats;->e:Z

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/WindowContentFrameStats;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/WindowContentFrameStats;->h:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReturningMemberContextParsedData(isRecognizedFormerMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/WindowContentFrameStats;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", freeTrialEndDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WindowContentFrameStats;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasFreeTrial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/WindowContentFrameStats;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasMopOnFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/WindowContentFrameStats;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasValidMop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/WindowContentFrameStats;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contextMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WindowContentFrameStats;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
