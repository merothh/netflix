.class public final Lo/FrameStats;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Z

.field private final b:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/FrameStats;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-object p2, p0, Lo/FrameStats;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-boolean p3, p0, Lo/FrameStats;->a:Z

    iput-boolean p4, p0, Lo/FrameStats;->d:Z

    iput-object p5, p0, Lo/FrameStats;->c:Ljava/lang/String;

    iput-object p6, p0, Lo/FrameStats;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/FrameStats;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lo/FrameStats;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lo/FrameStats;->d:Z

    return v0
.end method

.method public final d()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/FrameStats;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lo/FrameStats;->a:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/FrameStats;

    if-eqz v0, :cond_0

    check-cast p1, Lo/FrameStats;

    iget-object v0, p0, Lo/FrameStats;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/FrameStats;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FrameStats;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/FrameStats;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/FrameStats;->a:Z

    iget-boolean v1, p1, Lo/FrameStats;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/FrameStats;->d:Z

    iget-boolean v1, p1, Lo/FrameStats;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/FrameStats;->c:Ljava/lang/String;

    iget-object v1, p1, Lo/FrameStats;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FrameStats;->j:Ljava/lang/String;

    iget-object p1, p1, Lo/FrameStats;->j:Ljava/lang/String;

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

.method public final h()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lo/FrameStats;->j:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lo/FrameStats;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/FrameStats;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/FrameStats;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/FrameStats;->d:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/FrameStats;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/FrameStats;->j:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayPalParsedData(paypalInitiateAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FrameStats;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changePaymentAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FrameStats;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canChangePayment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/FrameStats;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRecognizedFormerMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/FrameStats;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", paymentChoiceMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FrameStats;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentPlanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FrameStats;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
