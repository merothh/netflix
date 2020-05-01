.class public final Lo/ReflectiveProperty;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final b:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final c:Z

.field private final d:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final e:Ljava/lang/String;

.field private final j:Lcom/netflix/android/moneyball/fields/StringField;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;ZLjava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ReflectiveProperty;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-object p2, p0, Lo/ReflectiveProperty;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-object p3, p0, Lo/ReflectiveProperty;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-boolean p4, p0, Lo/ReflectiveProperty;->c:Z

    iput-object p5, p0, Lo/ReflectiveProperty;->e:Ljava/lang/String;

    iput-object p6, p0, Lo/ReflectiveProperty;->j:Lcom/netflix/android/moneyball/fields/StringField;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/ReflectiveProperty;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lo/ReflectiveProperty;->c:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lo/ReflectiveProperty;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/ReflectiveProperty;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final e()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/ReflectiveProperty;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/ReflectiveProperty;

    if-eqz v0, :cond_0

    check-cast p1, Lo/ReflectiveProperty;

    iget-object v0, p0, Lo/ReflectiveProperty;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/ReflectiveProperty;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ReflectiveProperty;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/ReflectiveProperty;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ReflectiveProperty;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/ReflectiveProperty;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/ReflectiveProperty;->c:Z

    iget-boolean v1, p1, Lo/ReflectiveProperty;->c:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/ReflectiveProperty;->e:Ljava/lang/String;

    iget-object v1, p1, Lo/ReflectiveProperty;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ReflectiveProperty;->j:Lcom/netflix/android/moneyball/fields/StringField;

    iget-object p1, p1, Lo/ReflectiveProperty;->j:Lcom/netflix/android/moneyball/fields/StringField;

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

.method public final f()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/ReflectiveProperty;->j:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lo/ReflectiveProperty;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/ReflectiveProperty;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/ReflectiveProperty;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/ReflectiveProperty;->c:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/ReflectiveProperty;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/ReflectiveProperty;->j:Lcom/netflix/android/moneyball/fields/StringField;

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

    const-string v1, "MopWebViewParsedData(paypalSuccessAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ReflectiveProperty;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cancelAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ReflectiveProperty;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prevAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ReflectiveProperty;->a:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRecognizedFormerMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/ReflectiveProperty;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", webViewUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ReflectiveProperty;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ReflectiveProperty;->j:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
