.class public final Lo/IconMarginSpan;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/netflix/android/moneyball/fields/BooleanField;

.field private final e:Z

.field private final f:Lcom/netflix/android/moneyball/fields/BooleanField;

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/fields/BooleanField;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/netflix/android/moneyball/fields/BooleanField;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/IconMarginSpan;->d:Lcom/netflix/android/moneyball/fields/BooleanField;

    iput-object p2, p0, Lo/IconMarginSpan;->a:Ljava/lang/String;

    iput-object p3, p0, Lo/IconMarginSpan;->c:Ljava/lang/String;

    iput-object p4, p0, Lo/IconMarginSpan;->b:Ljava/lang/String;

    iput-boolean p5, p0, Lo/IconMarginSpan;->e:Z

    iput-boolean p6, p0, Lo/IconMarginSpan;->h:Z

    iput-boolean p7, p0, Lo/IconMarginSpan;->i:Z

    iput-boolean p8, p0, Lo/IconMarginSpan;->j:Z

    iput-object p9, p0, Lo/IconMarginSpan;->f:Lcom/netflix/android/moneyball/fields/BooleanField;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/android/moneyball/fields/BooleanField;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/IconMarginSpan;->d:Lcom/netflix/android/moneyball/fields/BooleanField;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lo/IconMarginSpan;->h:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lo/IconMarginSpan;->e:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/IconMarginSpan;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/IconMarginSpan;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/IconMarginSpan;

    if-eqz v0, :cond_0

    check-cast p1, Lo/IconMarginSpan;

    iget-object v0, p0, Lo/IconMarginSpan;->d:Lcom/netflix/android/moneyball/fields/BooleanField;

    iget-object v1, p1, Lo/IconMarginSpan;->d:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IconMarginSpan;->a:Ljava/lang/String;

    iget-object v1, p1, Lo/IconMarginSpan;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IconMarginSpan;->c:Ljava/lang/String;

    iget-object v1, p1, Lo/IconMarginSpan;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IconMarginSpan;->b:Ljava/lang/String;

    iget-object v1, p1, Lo/IconMarginSpan;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/IconMarginSpan;->e:Z

    iget-boolean v1, p1, Lo/IconMarginSpan;->e:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/IconMarginSpan;->h:Z

    iget-boolean v1, p1, Lo/IconMarginSpan;->h:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/IconMarginSpan;->i:Z

    iget-boolean v1, p1, Lo/IconMarginSpan;->i:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/IconMarginSpan;->j:Z

    iget-boolean v1, p1, Lo/IconMarginSpan;->j:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/IconMarginSpan;->f:Lcom/netflix/android/moneyball/fields/BooleanField;

    iget-object p1, p1, Lo/IconMarginSpan;->f:Lcom/netflix/android/moneyball/fields/BooleanField;

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

.method public final h()Lcom/netflix/android/moneyball/fields/BooleanField;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/IconMarginSpan;->f:Lcom/netflix/android/moneyball/fields/BooleanField;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lo/IconMarginSpan;->d:Lcom/netflix/android/moneyball/fields/BooleanField;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/IconMarginSpan;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/IconMarginSpan;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/IconMarginSpan;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/IconMarginSpan;->e:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/IconMarginSpan;->h:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/IconMarginSpan;->i:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/IconMarginSpan;->j:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :cond_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/IconMarginSpan;->f:Lcom/netflix/android/moneyball/fields/BooleanField;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lo/IconMarginSpan;->j:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lo/IconMarginSpan;->i:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouParsedData(hasAcceptedTermsOfUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/IconMarginSpan;->d:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/IconMarginSpan;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", minAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/IconMarginSpan;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/IconMarginSpan;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showInternationalTransactionMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/IconMarginSpan;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showSchufaText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/IconMarginSpan;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showCardChainingDisclosureText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/IconMarginSpan;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasFreeTrial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/IconMarginSpan;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rightOfWithdrawal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/IconMarginSpan;->f:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
