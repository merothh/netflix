.class public final Lo/DayOfMonthCursor$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DayOfMonthCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Lcom/netflix/android/moneyball/fields/StringField;

.field private final b:Lcom/netflix/android/moneyball/fields/StringField;

.field private final c:Lcom/netflix/android/moneyball/fields/NumberField;

.field private final d:Lcom/netflix/android/moneyball/fields/StringField;

.field private final e:Lcom/netflix/android/moneyball/fields/NumberField;

.field private final j:Lcom/netflix/android/moneyball/fields/StringField;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/NumberField;Lcom/netflix/android/moneyball/fields/NumberField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/DayOfMonthCursor$ActionBar;->b:Lcom/netflix/android/moneyball/fields/StringField;

    iput-object p2, p0, Lo/DayOfMonthCursor$ActionBar;->e:Lcom/netflix/android/moneyball/fields/NumberField;

    iput-object p3, p0, Lo/DayOfMonthCursor$ActionBar;->c:Lcom/netflix/android/moneyball/fields/NumberField;

    iput-object p4, p0, Lo/DayOfMonthCursor$ActionBar;->a:Lcom/netflix/android/moneyball/fields/StringField;

    iput-object p5, p0, Lo/DayOfMonthCursor$ActionBar;->d:Lcom/netflix/android/moneyball/fields/StringField;

    iput-object p6, p0, Lo/DayOfMonthCursor$ActionBar;->j:Lcom/netflix/android/moneyball/fields/StringField;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/android/moneyball/fields/NumberField;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/DayOfMonthCursor$ActionBar;->e:Lcom/netflix/android/moneyball/fields/NumberField;

    return-object v0
.end method

.method public final b()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/DayOfMonthCursor$ActionBar;->d:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public final c()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/DayOfMonthCursor$ActionBar;->b:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public final d()Lcom/netflix/android/moneyball/fields/NumberField;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/DayOfMonthCursor$ActionBar;->c:Lcom/netflix/android/moneyball/fields/NumberField;

    return-object v0
.end method

.method public final e()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/DayOfMonthCursor$ActionBar;->a:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/DayOfMonthCursor$ActionBar;

    if-eqz v0, :cond_0

    check-cast p1, Lo/DayOfMonthCursor$ActionBar;

    iget-object v0, p0, Lo/DayOfMonthCursor$ActionBar;->b:Lcom/netflix/android/moneyball/fields/StringField;

    iget-object v1, p1, Lo/DayOfMonthCursor$ActionBar;->b:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DayOfMonthCursor$ActionBar;->e:Lcom/netflix/android/moneyball/fields/NumberField;

    iget-object v1, p1, Lo/DayOfMonthCursor$ActionBar;->e:Lcom/netflix/android/moneyball/fields/NumberField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DayOfMonthCursor$ActionBar;->c:Lcom/netflix/android/moneyball/fields/NumberField;

    iget-object v1, p1, Lo/DayOfMonthCursor$ActionBar;->c:Lcom/netflix/android/moneyball/fields/NumberField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DayOfMonthCursor$ActionBar;->a:Lcom/netflix/android/moneyball/fields/StringField;

    iget-object v1, p1, Lo/DayOfMonthCursor$ActionBar;->a:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DayOfMonthCursor$ActionBar;->d:Lcom/netflix/android/moneyball/fields/StringField;

    iget-object v1, p1, Lo/DayOfMonthCursor$ActionBar;->d:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DayOfMonthCursor$ActionBar;->j:Lcom/netflix/android/moneyball/fields/StringField;

    iget-object p1, p1, Lo/DayOfMonthCursor$ActionBar;->j:Lcom/netflix/android/moneyball/fields/StringField;

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

    iget-object v0, p0, Lo/DayOfMonthCursor$ActionBar;->b:Lcom/netflix/android/moneyball/fields/StringField;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/DayOfMonthCursor$ActionBar;->e:Lcom/netflix/android/moneyball/fields/NumberField;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/DayOfMonthCursor$ActionBar;->c:Lcom/netflix/android/moneyball/fields/NumberField;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/DayOfMonthCursor$ActionBar;->a:Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/DayOfMonthCursor$ActionBar;->d:Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/DayOfMonthCursor$ActionBar;->j:Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final j()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/DayOfMonthCursor$ActionBar;->j:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DebitOptionPayParsedData(debitCardNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DayOfMonthCursor$ActionBar;->b:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", debitCardExpirationMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DayOfMonthCursor$ActionBar;->e:Lcom/netflix/android/moneyball/fields/NumberField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", debitCardExpirationYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DayOfMonthCursor$ActionBar;->c:Lcom/netflix/android/moneyball/fields/NumberField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", debitCardSecurityCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DayOfMonthCursor$ActionBar;->a:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", debitCardData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DayOfMonthCursor$ActionBar;->d:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", debitZipcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DayOfMonthCursor$ActionBar;->j:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
