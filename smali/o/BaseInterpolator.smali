.class public final Lo/BaseInterpolator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final e:Lcom/netflix/android/moneyball/fields/ActionField;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "age"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinRequiredRating"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/BaseInterpolator;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-object p2, p0, Lo/BaseInterpolator;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    iput-object p3, p0, Lo/BaseInterpolator;->a:Ljava/lang/String;

    iput-object p4, p0, Lo/BaseInterpolator;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/BaseInterpolator;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/BaseInterpolator;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/BaseInterpolator;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/BaseInterpolator;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/BaseInterpolator;

    if-eqz v0, :cond_0

    check-cast p1, Lo/BaseInterpolator;

    iget-object v0, p0, Lo/BaseInterpolator;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/BaseInterpolator;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BaseInterpolator;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    iget-object v1, p1, Lo/BaseInterpolator;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BaseInterpolator;->a:Ljava/lang/String;

    iget-object v1, p1, Lo/BaseInterpolator;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BaseInterpolator;->b:Ljava/lang/String;

    iget-object p1, p1, Lo/BaseInterpolator;->b:Ljava/lang/String;

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
    .locals 3

    iget-object v0, p0, Lo/BaseInterpolator;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/BaseInterpolator;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/BaseInterpolator;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/BaseInterpolator;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifyAgeParsedData(verifyAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/BaseInterpolator;->e:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", skipAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/BaseInterpolator;->d:Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/BaseInterpolator;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pinRequiredRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/BaseInterpolator;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
