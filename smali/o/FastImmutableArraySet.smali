.class public final Lo/FastImmutableArraySet;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final i:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final j:Z

.field private final l:Lcom/netflix/android/moneyball/fields/Field;

.field private final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;ZZLjava/lang/String;ZZLcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/android/moneyball/fields/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/netflix/android/moneyball/fields/ActionField;",
            "Lcom/netflix/android/moneyball/fields/ActionField;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ")V"
        }
    .end annotation

    const-string v0, "paymentLogoUrls"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/FastImmutableArraySet;->b:Ljava/util/List;

    iput-boolean p2, p0, Lo/FastImmutableArraySet;->c:Z

    iput-boolean p3, p0, Lo/FastImmutableArraySet;->e:Z

    iput-object p4, p0, Lo/FastImmutableArraySet;->a:Ljava/lang/String;

    iput-boolean p5, p0, Lo/FastImmutableArraySet;->d:Z

    iput-boolean p6, p0, Lo/FastImmutableArraySet;->j:Z

    iput-object p7, p0, Lo/FastImmutableArraySet;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-object p8, p0, Lo/FastImmutableArraySet;->h:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-object p9, p0, Lo/FastImmutableArraySet;->f:Ljava/lang/String;

    iput-boolean p10, p0, Lo/FastImmutableArraySet;->g:Z

    iput-object p11, p0, Lo/FastImmutableArraySet;->o:Ljava/lang/String;

    iput-object p12, p0, Lo/FastImmutableArraySet;->l:Lcom/netflix/android/moneyball/fields/Field;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lo/FastImmutableArraySet;->d:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lo/FastImmutableArraySet;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lo/FastImmutableArraySet;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lo/FastImmutableArraySet;->e:Z

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lo/FastImmutableArraySet;->b:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/FastImmutableArraySet;

    if-eqz v0, :cond_0

    check-cast p1, Lo/FastImmutableArraySet;

    iget-object v0, p0, Lo/FastImmutableArraySet;->b:Ljava/util/List;

    iget-object v1, p1, Lo/FastImmutableArraySet;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/FastImmutableArraySet;->c:Z

    iget-boolean v1, p1, Lo/FastImmutableArraySet;->c:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/FastImmutableArraySet;->e:Z

    iget-boolean v1, p1, Lo/FastImmutableArraySet;->e:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/FastImmutableArraySet;->a:Ljava/lang/String;

    iget-object v1, p1, Lo/FastImmutableArraySet;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/FastImmutableArraySet;->d:Z

    iget-boolean v1, p1, Lo/FastImmutableArraySet;->d:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/FastImmutableArraySet;->j:Z

    iget-boolean v1, p1, Lo/FastImmutableArraySet;->j:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/FastImmutableArraySet;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/FastImmutableArraySet;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FastImmutableArraySet;->h:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/FastImmutableArraySet;->h:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FastImmutableArraySet;->f:Ljava/lang/String;

    iget-object v1, p1, Lo/FastImmutableArraySet;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/FastImmutableArraySet;->g:Z

    iget-boolean v1, p1, Lo/FastImmutableArraySet;->g:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/FastImmutableArraySet;->o:Ljava/lang/String;

    iget-object v1, p1, Lo/FastImmutableArraySet;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FastImmutableArraySet;->l:Lcom/netflix/android/moneyball/fields/Field;

    iget-object p1, p1, Lo/FastImmutableArraySet;->l:Lcom/netflix/android/moneyball/fields/Field;

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

.method public final f()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lo/FastImmutableArraySet;->j:Z

    return v0
.end method

.method public final g()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 132
    iget-object v0, p0, Lo/FastImmutableArraySet;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lo/FastImmutableArraySet;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lo/FastImmutableArraySet;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/FastImmutableArraySet;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/FastImmutableArraySet;->e:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/FastImmutableArraySet;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/FastImmutableArraySet;->d:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/FastImmutableArraySet;->j:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/FastImmutableArraySet;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/FastImmutableArraySet;->h:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/FastImmutableArraySet;->f:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/FastImmutableArraySet;->g:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :cond_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/FastImmutableArraySet;->o:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/FastImmutableArraySet;->l:Lcom/netflix/android/moneyball/fields/Field;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_b
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lo/FastImmutableArraySet;->g:Z

    return v0
.end method

.method public final j()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 133
    iget-object v0, p0, Lo/FastImmutableArraySet;->h:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lo/FastImmutableArraySet;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Lcom/netflix/android/moneyball/fields/Field;
    .locals 1

    .line 137
    iget-object v0, p0, Lo/FastImmutableArraySet;->l:Lcom/netflix/android/moneyball/fields/Field;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DCBPaymentParsedData(paymentLogoUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FastImmutableArraySet;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isGlobeOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/FastImmutableArraySet;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRecognizedFormerMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/FastImmutableArraySet;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", partnerDisplayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FastImmutableArraySet;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEditMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/FastImmutableArraySet;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canChangePayment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/FastImmutableArraySet;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nextAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FastImmutableArraySet;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changePaymentAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FastImmutableArraySet;->h:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentChoiceMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FastImmutableArraySet;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasFreeTrial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/FastImmutableArraySet;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentPlanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FastImmutableArraySet;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidAppHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FastImmutableArraySet;->l:Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
