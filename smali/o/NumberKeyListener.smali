.class public final Lo/NumberKeyListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/AutoGrowArray;

.field private final b:Z

.field private final c:Lo/AutoGrowArray;

.field private final d:Lo/AutoGrowArray;

.field private final e:Lo/AutoGrowArray;

.field private final f:Ljava/lang/Integer;

.field private final g:Ljava/lang/Integer;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/Integer;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final m:Ljava/lang/Integer;

.field private final n:Lcom/netflix/android/moneyball/fields/BooleanField;

.field private final o:Lcom/netflix/android/moneyball/fields/BooleanField;


# direct methods
.method public constructor <init>(Lo/AutoGrowArray;Lo/AutoGrowArray;Lo/AutoGrowArray;Lo/AutoGrowArray;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/BooleanField;Lcom/netflix/android/moneyball/fields/BooleanField;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/NumberKeyListener;->e:Lo/AutoGrowArray;

    iput-object p2, p0, Lo/NumberKeyListener;->a:Lo/AutoGrowArray;

    iput-object p3, p0, Lo/NumberKeyListener;->c:Lo/AutoGrowArray;

    iput-object p4, p0, Lo/NumberKeyListener;->d:Lo/AutoGrowArray;

    iput-boolean p5, p0, Lo/NumberKeyListener;->b:Z

    iput-object p6, p0, Lo/NumberKeyListener;->h:Ljava/lang/String;

    iput-object p7, p0, Lo/NumberKeyListener;->j:Ljava/lang/String;

    iput-object p8, p0, Lo/NumberKeyListener;->i:Ljava/lang/Integer;

    iput-object p9, p0, Lo/NumberKeyListener;->g:Ljava/lang/Integer;

    iput-object p10, p0, Lo/NumberKeyListener;->f:Ljava/lang/Integer;

    iput-object p11, p0, Lo/NumberKeyListener;->m:Ljava/lang/Integer;

    iput-object p12, p0, Lo/NumberKeyListener;->k:Ljava/lang/String;

    iput-object p13, p0, Lo/NumberKeyListener;->n:Lcom/netflix/android/moneyball/fields/BooleanField;

    iput-object p14, p0, Lo/NumberKeyListener;->o:Lcom/netflix/android/moneyball/fields/BooleanField;

    return-void
.end method


# virtual methods
.method public final a()Lo/AutoGrowArray;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/NumberKeyListener;->c:Lo/AutoGrowArray;

    return-object v0
.end method

.method public final b()Lo/AutoGrowArray;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/NumberKeyListener;->a:Lo/AutoGrowArray;

    return-object v0
.end method

.method public final c()Lo/AutoGrowArray;
    .locals 1

    .line 67
    iget-object v0, p0, Lo/NumberKeyListener;->e:Lo/AutoGrowArray;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lo/NumberKeyListener;->b:Z

    return v0
.end method

.method public final e()Lo/AutoGrowArray;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/NumberKeyListener;->d:Lo/AutoGrowArray;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/NumberKeyListener;

    if-eqz v0, :cond_0

    check-cast p1, Lo/NumberKeyListener;

    iget-object v0, p0, Lo/NumberKeyListener;->e:Lo/AutoGrowArray;

    iget-object v1, p1, Lo/NumberKeyListener;->e:Lo/AutoGrowArray;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NumberKeyListener;->a:Lo/AutoGrowArray;

    iget-object v1, p1, Lo/NumberKeyListener;->a:Lo/AutoGrowArray;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NumberKeyListener;->c:Lo/AutoGrowArray;

    iget-object v1, p1, Lo/NumberKeyListener;->c:Lo/AutoGrowArray;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NumberKeyListener;->d:Lo/AutoGrowArray;

    iget-object v1, p1, Lo/NumberKeyListener;->d:Lo/AutoGrowArray;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/NumberKeyListener;->b:Z

    iget-boolean v1, p1, Lo/NumberKeyListener;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/NumberKeyListener;->h:Ljava/lang/String;

    iget-object v1, p1, Lo/NumberKeyListener;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NumberKeyListener;->j:Ljava/lang/String;

    iget-object v1, p1, Lo/NumberKeyListener;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NumberKeyListener;->i:Ljava/lang/Integer;

    iget-object v1, p1, Lo/NumberKeyListener;->i:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NumberKeyListener;->g:Ljava/lang/Integer;

    iget-object v1, p1, Lo/NumberKeyListener;->g:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NumberKeyListener;->f:Ljava/lang/Integer;

    iget-object v1, p1, Lo/NumberKeyListener;->f:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NumberKeyListener;->m:Ljava/lang/Integer;

    iget-object v1, p1, Lo/NumberKeyListener;->m:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NumberKeyListener;->k:Ljava/lang/String;

    iget-object v1, p1, Lo/NumberKeyListener;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NumberKeyListener;->n:Lcom/netflix/android/moneyball/fields/BooleanField;

    iget-object v1, p1, Lo/NumberKeyListener;->n:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NumberKeyListener;->o:Lcom/netflix/android/moneyball/fields/BooleanField;

    iget-object p1, p1, Lo/NumberKeyListener;->o:Lcom/netflix/android/moneyball/fields/BooleanField;

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

.method public final f()Ljava/lang/Integer;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/NumberKeyListener;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/NumberKeyListener;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/Integer;
    .locals 1

    .line 75
    iget-object v0, p0, Lo/NumberKeyListener;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lo/NumberKeyListener;->e:Lo/AutoGrowArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NumberKeyListener;->a:Lo/AutoGrowArray;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NumberKeyListener;->c:Lo/AutoGrowArray;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NumberKeyListener;->d:Lo/AutoGrowArray;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/NumberKeyListener;->b:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NumberKeyListener;->h:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NumberKeyListener;->j:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NumberKeyListener;->i:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NumberKeyListener;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NumberKeyListener;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NumberKeyListener;->m:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NumberKeyListener;->k:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_b
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NumberKeyListener;->n:Lcom/netflix/android/moneyball/fields/BooleanField;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_c
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NumberKeyListener;->o:Lcom/netflix/android/moneyball/fields/BooleanField;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_d
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/NumberKeyListener;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/Integer;
    .locals 1

    .line 74
    iget-object v0, p0, Lo/NumberKeyListener;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public final k()Lcom/netflix/android/moneyball/fields/BooleanField;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/NumberKeyListener;->n:Lcom/netflix/android/moneyball/fields/BooleanField;

    return-object v0
.end method

.method public final m()Lcom/netflix/android/moneyball/fields/BooleanField;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/NumberKeyListener;->o:Lcom/netflix/android/moneyball/fields/BooleanField;

    return-object v0
.end method

.method public final n()Ljava/lang/Integer;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/NumberKeyListener;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/NumberKeyListener;->k:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KoreaCheckBoxesParsedData(termsChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NumberKeyListener;->e:Lo/AutoGrowArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", abroadChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NumberKeyListener;->a:Lo/AutoGrowArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gatewayChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NumberKeyListener;->c:Lo/AutoGrowArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thirdPartyChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NumberKeyListener;->d:Lo/AutoGrowArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasFreeTrial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/NumberKeyListener;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", planPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NumberKeyListener;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", planBillingFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NumberKeyListener;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", termsCheckedOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NumberKeyListener;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", abroadCheckedOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NumberKeyListener;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gatewayCheckedOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NumberKeyListener;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thirdPartyCheckedOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NumberKeyListener;->m:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", termsOfUseMinimumVerificationAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NumberKeyListener;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasAcceptedTermsOfUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NumberKeyListener;->n:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", termsOfUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NumberKeyListener;->o:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
