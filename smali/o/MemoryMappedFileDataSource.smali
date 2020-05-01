.class public final Lo/MemoryMappedFileDataSource;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final g:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final h:Z

.field private final i:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final j:Lcom/netflix/android/moneyball/fields/Field;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;ZLcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;ZLcom/netflix/android/moneyball/fields/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/MemoryMappedFileDataSource;->b:Z

    iput-boolean p2, p0, Lo/MemoryMappedFileDataSource;->c:Z

    iput-object p3, p0, Lo/MemoryMappedFileDataSource;->e:Ljava/lang/String;

    iput-object p4, p0, Lo/MemoryMappedFileDataSource;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lo/MemoryMappedFileDataSource;->a:Z

    iput-object p6, p0, Lo/MemoryMappedFileDataSource;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-object p7, p0, Lo/MemoryMappedFileDataSource;->f:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-object p8, p0, Lo/MemoryMappedFileDataSource;->g:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-boolean p9, p0, Lo/MemoryMappedFileDataSource;->h:Z

    iput-object p10, p0, Lo/MemoryMappedFileDataSource;->j:Lcom/netflix/android/moneyball/fields/Field;

    iput-object p11, p0, Lo/MemoryMappedFileDataSource;->n:Ljava/lang/String;

    iput-object p12, p0, Lo/MemoryMappedFileDataSource;->o:Ljava/lang/String;

    iput-object p13, p0, Lo/MemoryMappedFileDataSource;->k:Ljava/lang/String;

    iput-object p14, p0, Lo/MemoryMappedFileDataSource;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lo/MemoryMappedFileDataSource;->a:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lo/MemoryMappedFileDataSource;->b:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lo/MemoryMappedFileDataSource;->c:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/MemoryMappedFileDataSource;

    if-eqz v0, :cond_0

    check-cast p1, Lo/MemoryMappedFileDataSource;

    iget-boolean v0, p0, Lo/MemoryMappedFileDataSource;->b:Z

    iget-boolean v1, p1, Lo/MemoryMappedFileDataSource;->b:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/MemoryMappedFileDataSource;->c:Z

    iget-boolean v1, p1, Lo/MemoryMappedFileDataSource;->c:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->e:Ljava/lang/String;

    iget-object v1, p1, Lo/MemoryMappedFileDataSource;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->d:Ljava/lang/String;

    iget-object v1, p1, Lo/MemoryMappedFileDataSource;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/MemoryMappedFileDataSource;->a:Z

    iget-boolean v1, p1, Lo/MemoryMappedFileDataSource;->a:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/MemoryMappedFileDataSource;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->f:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/MemoryMappedFileDataSource;->f:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->g:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/MemoryMappedFileDataSource;->g:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/MemoryMappedFileDataSource;->h:Z

    iget-boolean v1, p1, Lo/MemoryMappedFileDataSource;->h:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->j:Lcom/netflix/android/moneyball/fields/Field;

    iget-object v1, p1, Lo/MemoryMappedFileDataSource;->j:Lcom/netflix/android/moneyball/fields/Field;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->n:Ljava/lang/String;

    iget-object v1, p1, Lo/MemoryMappedFileDataSource;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->o:Ljava/lang/String;

    iget-object v1, p1, Lo/MemoryMappedFileDataSource;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->k:Ljava/lang/String;

    iget-object v1, p1, Lo/MemoryMappedFileDataSource;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->l:Ljava/lang/String;

    iget-object p1, p1, Lo/MemoryMappedFileDataSource;->l:Ljava/lang/String;

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

.method public final f()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 120
    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->f:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lo/MemoryMappedFileDataSource;->h:Z

    return v0
.end method

.method public final h()Lcom/netflix/android/moneyball/fields/Field;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->j:Lcom/netflix/android/moneyball/fields/Field;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lo/MemoryMappedFileDataSource;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/MemoryMappedFileDataSource;->c:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MemoryMappedFileDataSource;->e:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MemoryMappedFileDataSource;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/MemoryMappedFileDataSource;->a:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MemoryMappedFileDataSource;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MemoryMappedFileDataSource;->f:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MemoryMappedFileDataSource;->g:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/MemoryMappedFileDataSource;->h:Z

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->j:Lcom/netflix/android/moneyball/fields/Field;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->n:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->o:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->k:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->l:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_d
    add-int/2addr v0, v3

    return v0
.end method

.method public final i()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 121
    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->g:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final j()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 119
    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lo/MemoryMappedFileDataSource;->n:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTPEntryParsedData(isRecognizedFormerMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MemoryMappedFileDataSource;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasFreeTrial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MemoryMappedFileDataSource;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isGlobeOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MemoryMappedFileDataSource;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nextAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prevAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->f:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resendCodeAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->g:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isOTPMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MemoryMappedFileDataSource;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", androidAppHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->j:Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", touText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", termsOfUseMinAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", planPriceString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", billingFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MemoryMappedFileDataSource;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
