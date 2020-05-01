.class public final Lo/WindowAnimationFrameStats;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final c:Z

.field private final d:Lcom/netflix/android/moneyball/fields/ActionField;


# direct methods
.method public constructor <init>(ZLcom/netflix/android/moneyball/fields/ActionField;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/WindowAnimationFrameStats;->c:Z

    iput-object p2, p0, Lo/WindowAnimationFrameStats;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/WindowAnimationFrameStats;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lo/WindowAnimationFrameStats;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/WindowAnimationFrameStats;

    if-eqz v0, :cond_0

    check-cast p1, Lo/WindowAnimationFrameStats;

    iget-boolean v0, p0, Lo/WindowAnimationFrameStats;->c:Z

    iget-boolean v1, p1, Lo/WindowAnimationFrameStats;->c:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/WindowAnimationFrameStats;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object p1, p1, Lo/WindowAnimationFrameStats;->d:Lcom/netflix/android/moneyball/fields/ActionField;

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
    .locals 2

    iget-boolean v0, p0, Lo/WindowAnimationFrameStats;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/WindowAnimationFrameStats;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplayRequestParsedData(isRecognizedFormerMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/WindowAnimationFrameStats;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nextAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WindowAnimationFrameStats;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
