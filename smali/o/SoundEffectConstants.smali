.class public final Lo/SoundEffectConstants;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lcom/netflix/android/moneyball/fields/BooleanField;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/fields/BooleanField;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SoundEffectConstants;->b:Lcom/netflix/android/moneyball/fields/BooleanField;

    iput-object p2, p0, Lo/SoundEffectConstants;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/SoundEffectConstants;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/netflix/android/moneyball/fields/BooleanField;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/SoundEffectConstants;->b:Lcom/netflix/android/moneyball/fields/BooleanField;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/SoundEffectConstants;

    if-eqz v0, :cond_0

    check-cast p1, Lo/SoundEffectConstants;

    iget-object v0, p0, Lo/SoundEffectConstants;->b:Lcom/netflix/android/moneyball/fields/BooleanField;

    iget-object v1, p1, Lo/SoundEffectConstants;->b:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SoundEffectConstants;->c:Ljava/lang/String;

    iget-object p1, p1, Lo/SoundEffectConstants;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lo/SoundEffectConstants;->b:Lcom/netflix/android/moneyball/fields/BooleanField;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/SoundEffectConstants;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmailPreferenceParsedData(checkedField="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/SoundEffectConstants;->b:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consentLabelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/SoundEffectConstants;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
