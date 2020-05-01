.class public final Lo/CharSequenceCharacterIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DynamicLayout;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Lcom/netflix/android/moneyball/fields/StringField;

.field private final e:Lo/TextToSpeech;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/fields/StringField;Lo/TextToSpeech;)V
    .locals 1

    const-string v0, "stringField"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueChangeListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CharSequenceCharacterIterator;->d:Lcom/netflix/android/moneyball/fields/StringField;

    iput-object p2, p0, Lo/CharSequenceCharacterIterator;->e:Lo/TextToSpeech;

    .line 11
    iget-object p1, p0, Lo/CharSequenceCharacterIterator;->d:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/StringField;->getMinLength()I

    move-result p1

    iput p1, p0, Lo/CharSequenceCharacterIterator;->b:I

    .line 13
    iget-object p1, p0, Lo/CharSequenceCharacterIterator;->d:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/StringField;->getMaxLength()I

    move-result p1

    iput p1, p0, Lo/CharSequenceCharacterIterator;->c:I

    .line 15
    iget-object p1, p0, Lo/CharSequenceCharacterIterator;->d:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/StringField;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/CharSequenceCharacterIterator;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lo/CharSequenceCharacterIterator;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 24
    :goto_0
    iget-object v0, p0, Lo/CharSequenceCharacterIterator;->d:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lo/CharSequenceCharacterIterator;->e:Lo/TextToSpeech;

    invoke-virtual {p0}, Lo/CharSequenceCharacterIterator;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lo/TextToSpeech;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 13
    iget v0, p0, Lo/CharSequenceCharacterIterator;->c:I

    return v0
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/CharSequenceCharacterIterator;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lo/CharSequenceCharacterIterator;->d:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->isValid()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/CharSequenceCharacterIterator;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 11
    iget v0, p0, Lo/CharSequenceCharacterIterator;->b:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 21
    iget-object v0, p0, Lo/CharSequenceCharacterIterator;->d:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
