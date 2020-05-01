.class public final Lo/MutableBoolean;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Z

.field private final e:Lcom/netflix/android/moneyball/fields/ChoiceField;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/netflix/android/moneyball/fields/OptionField;

.field private final h:Z

.field private final i:Z

.field private final j:I

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final o:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZLcom/netflix/android/moneyball/fields/ChoiceField;Lcom/netflix/android/moneyball/fields/OptionField;ZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lo/MutableBoolean;->b:Ljava/lang/String;

    move v1, p2

    iput-boolean v1, v0, Lo/MutableBoolean;->a:Z

    move v1, p3

    iput-boolean v1, v0, Lo/MutableBoolean;->c:Z

    move v1, p4

    iput-boolean v1, v0, Lo/MutableBoolean;->d:Z

    move-object v1, p5

    iput-object v1, v0, Lo/MutableBoolean;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-object v1, p6

    iput-object v1, v0, Lo/MutableBoolean;->g:Lcom/netflix/android/moneyball/fields/OptionField;

    move v1, p7

    iput-boolean v1, v0, Lo/MutableBoolean;->h:Z

    move v1, p8

    iput-boolean v1, v0, Lo/MutableBoolean;->i:Z

    move-object v1, p9

    iput-object v1, v0, Lo/MutableBoolean;->f:Ljava/lang/String;

    move v1, p10

    iput v1, v0, Lo/MutableBoolean;->j:I

    move-object v1, p11

    iput-object v1, v0, Lo/MutableBoolean;->m:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lo/MutableBoolean;->k:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lo/MutableBoolean;->l:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lo/MutableBoolean;->n:Lcom/netflix/android/moneyball/fields/ActionField;

    move-object/from16 v1, p15

    iput-object v1, v0, Lo/MutableBoolean;->o:Lcom/netflix/android/moneyball/fields/ActionField;

    move-object/from16 v1, p16

    iput-object v1, v0, Lo/MutableBoolean;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lo/MutableBoolean;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lo/MutableBoolean;->a:Z

    return v0
.end method

.method public final c()Lcom/netflix/android/moneyball/fields/ChoiceField;
    .locals 1

    .line 132
    iget-object v0, p0, Lo/MutableBoolean;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lo/MutableBoolean;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lo/MutableBoolean;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/MutableBoolean;

    if-eqz v0, :cond_0

    check-cast p1, Lo/MutableBoolean;

    iget-object v0, p0, Lo/MutableBoolean;->b:Ljava/lang/String;

    iget-object v1, p1, Lo/MutableBoolean;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/MutableBoolean;->a:Z

    iget-boolean v1, p1, Lo/MutableBoolean;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/MutableBoolean;->c:Z

    iget-boolean v1, p1, Lo/MutableBoolean;->c:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/MutableBoolean;->d:Z

    iget-boolean v1, p1, Lo/MutableBoolean;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/MutableBoolean;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    iget-object v1, p1, Lo/MutableBoolean;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MutableBoolean;->g:Lcom/netflix/android/moneyball/fields/OptionField;

    iget-object v1, p1, Lo/MutableBoolean;->g:Lcom/netflix/android/moneyball/fields/OptionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/MutableBoolean;->h:Z

    iget-boolean v1, p1, Lo/MutableBoolean;->h:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/MutableBoolean;->i:Z

    iget-boolean v1, p1, Lo/MutableBoolean;->i:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/MutableBoolean;->f:Ljava/lang/String;

    iget-object v1, p1, Lo/MutableBoolean;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/MutableBoolean;->j:I

    iget v1, p1, Lo/MutableBoolean;->j:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/MutableBoolean;->m:Ljava/lang/String;

    iget-object v1, p1, Lo/MutableBoolean;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MutableBoolean;->k:Ljava/lang/String;

    iget-object v1, p1, Lo/MutableBoolean;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MutableBoolean;->l:Ljava/lang/String;

    iget-object v1, p1, Lo/MutableBoolean;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MutableBoolean;->n:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/MutableBoolean;->n:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MutableBoolean;->o:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/MutableBoolean;->o:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MutableBoolean;->s:Ljava/lang/String;

    iget-object p1, p1, Lo/MutableBoolean;->s:Ljava/lang/String;

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

.method public final f()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lo/MutableBoolean;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/netflix/android/moneyball/fields/OptionField;
    .locals 1

    .line 133
    iget-object v0, p0, Lo/MutableBoolean;->g:Lcom/netflix/android/moneyball/fields/OptionField;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lo/MutableBoolean;->h:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lo/MutableBoolean;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/MutableBoolean;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/MutableBoolean;->c:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/MutableBoolean;->d:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MutableBoolean;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MutableBoolean;->g:Lcom/netflix/android/moneyball/fields/OptionField;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/MutableBoolean;->h:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/MutableBoolean;->i:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :cond_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MutableBoolean;->f:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/MutableBoolean;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MutableBoolean;->m:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MutableBoolean;->k:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MutableBoolean;->l:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MutableBoolean;->n:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MutableBoolean;->o:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MutableBoolean;->s:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_e
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()I
    .locals 1

    .line 137
    iget v0, p0, Lo/MutableBoolean;->j:I

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lo/MutableBoolean;->i:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lo/MutableBoolean;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 141
    iget-object v0, p0, Lo/MutableBoolean;->n:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final m()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 142
    iget-object v0, p0, Lo/MutableBoolean;->o:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lo/MutableBoolean;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lo/MutableBoolean;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lo/MutableBoolean;->s:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DirectDebitParsedData(userMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MutableBoolean;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRecognizedFormerMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MutableBoolean;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasFreeTrial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MutableBoolean;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasValidMop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MutableBoolean;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", paymentChoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MutableBoolean;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", debitChoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MutableBoolean;->g:Lcom/netflix/android/moneyball/fields/OptionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEditDebitMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MutableBoolean;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEditPayment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MutableBoolean;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", paymentChoiceMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MutableBoolean;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", noOfPaymentOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MutableBoolean;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", touText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MutableBoolean;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", termsOfUseMinAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MutableBoolean;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", planPriceString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MutableBoolean;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startMembershipAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MutableBoolean;->n:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changePaymentAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MutableBoolean;->o:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", billingFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MutableBoolean;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
