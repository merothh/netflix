.class public final Lo/CycleInterpolator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Z

.field private final b:Lcom/netflix/android/moneyball/fields/StringField;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final e:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Z

.field private final j:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final o:Z


# direct methods
.method public constructor <init>(ZLcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/CycleInterpolator;->a:Z

    iput-object p2, p0, Lo/CycleInterpolator;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-object p3, p0, Lo/CycleInterpolator;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-object p4, p0, Lo/CycleInterpolator;->c:Ljava/lang/String;

    iput-object p5, p0, Lo/CycleInterpolator;->b:Lcom/netflix/android/moneyball/fields/StringField;

    iput-boolean p6, p0, Lo/CycleInterpolator;->h:Z

    iput-boolean p7, p0, Lo/CycleInterpolator;->i:Z

    iput-object p8, p0, Lo/CycleInterpolator;->f:Ljava/lang/String;

    iput-object p9, p0, Lo/CycleInterpolator;->g:Ljava/lang/String;

    iput-object p10, p0, Lo/CycleInterpolator;->j:Ljava/lang/String;

    iput-object p11, p0, Lo/CycleInterpolator;->l:Ljava/lang/String;

    iput-boolean p12, p0, Lo/CycleInterpolator;->o:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/CycleInterpolator;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/CycleInterpolator;->b:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public final c()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 83
    iget-object v0, p0, Lo/CycleInterpolator;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lo/CycleInterpolator;->a:Z

    return v0
.end method

.method public final e()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/CycleInterpolator;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/CycleInterpolator;

    if-eqz v0, :cond_0

    check-cast p1, Lo/CycleInterpolator;

    iget-boolean v0, p0, Lo/CycleInterpolator;->a:Z

    iget-boolean v1, p1, Lo/CycleInterpolator;->a:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/CycleInterpolator;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/CycleInterpolator;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CycleInterpolator;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/CycleInterpolator;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CycleInterpolator;->c:Ljava/lang/String;

    iget-object v1, p1, Lo/CycleInterpolator;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CycleInterpolator;->b:Lcom/netflix/android/moneyball/fields/StringField;

    iget-object v1, p1, Lo/CycleInterpolator;->b:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/CycleInterpolator;->h:Z

    iget-boolean v1, p1, Lo/CycleInterpolator;->h:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/CycleInterpolator;->i:Z

    iget-boolean v1, p1, Lo/CycleInterpolator;->i:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/CycleInterpolator;->f:Ljava/lang/String;

    iget-object v1, p1, Lo/CycleInterpolator;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CycleInterpolator;->g:Ljava/lang/String;

    iget-object v1, p1, Lo/CycleInterpolator;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CycleInterpolator;->j:Ljava/lang/String;

    iget-object v1, p1, Lo/CycleInterpolator;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CycleInterpolator;->l:Ljava/lang/String;

    iget-object v1, p1, Lo/CycleInterpolator;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/CycleInterpolator;->o:Z

    iget-boolean p1, p1, Lo/CycleInterpolator;->o:Z

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

.method public final f()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/CycleInterpolator;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lo/CycleInterpolator;->h:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/CycleInterpolator;->j:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lo/CycleInterpolator;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/CycleInterpolator;->e:Lcom/netflix/android/moneyball/fields/ActionField;

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

    iget-object v2, p0, Lo/CycleInterpolator;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/CycleInterpolator;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/CycleInterpolator;->b:Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/CycleInterpolator;->h:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/CycleInterpolator;->i:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/CycleInterpolator;->f:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/CycleInterpolator;->g:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/CycleInterpolator;->j:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/CycleInterpolator;->l:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/CycleInterpolator;->o:Z

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/CycleInterpolator;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lo/CycleInterpolator;->i:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/CycleInterpolator;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lo/CycleInterpolator;->o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifyCardParsedData(isRecognizedFormerMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/CycleInterpolator;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nextAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CycleInterpolator;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prevAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CycleInterpolator;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", md="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CycleInterpolator;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CycleInterpolator;->b:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", is3DSCharge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/CycleInterpolator;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEditMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/CycleInterpolator;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", acsUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CycleInterpolator;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paReq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CycleInterpolator;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emvco3dsAuthenticationRequestUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CycleInterpolator;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emvco3dsAuthenticationRequestToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CycleInterpolator;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is3DSEmvco="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/CycleInterpolator;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
