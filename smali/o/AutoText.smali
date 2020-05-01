.class public final Lo/AutoText;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BidiFormatter;


# instance fields
.field private final a:Lcom/netflix/android/moneyball/fields/NumberField;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lo/TextToSpeech;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/fields/NumberField;Lo/TextToSpeech;)V
    .locals 1

    const-string v0, "numberField"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueChangeListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoText;->a:Lcom/netflix/android/moneyball/fields/NumberField;

    iput-object p2, p0, Lo/AutoText;->d:Lo/TextToSpeech;

    .line 11
    iget-object p1, p0, Lo/AutoText;->a:Lcom/netflix/android/moneyball/fields/NumberField;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/NumberField;->getMinValue()J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lo/AutoText;->c:I

    .line 13
    iget-object p1, p0, Lo/AutoText;->a:Lcom/netflix/android/moneyball/fields/NumberField;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/NumberField;->getMaxValue()J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lo/AutoText;->e:I

    .line 15
    iget-object p1, p0, Lo/AutoText;->a:Lcom/netflix/android/moneyball/fields/NumberField;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/NumberField;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/AutoText;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lo/AutoText;->i()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 13
    iget v0, p0, Lo/AutoText;->e:I

    return v0
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 32
    :goto_0
    iget-object v0, p0, Lo/AutoText;->a:Lcom/netflix/android/moneyball/fields/NumberField;

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/NumberField;->setValue(Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lo/AutoText;->d:Lo/TextToSpeech;

    invoke-virtual {p0}, Lo/AutoText;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lo/TextToSpeech;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lo/AutoText;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 11
    iget v0, p0, Lo/AutoText;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lo/AutoText;->a:Lcom/netflix/android/moneyball/fields/NumberField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/NumberField;->isValid()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/AutoText;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/Integer;
    .locals 2

    .line 22
    iget-object v0, p0, Lo/AutoText;->a:Lcom/netflix/android/moneyball/fields/NumberField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/NumberField;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 24
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 26
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
