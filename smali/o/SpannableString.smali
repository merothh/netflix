.class public final Lo/SpannableString;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;


# instance fields
.field private final a:Lcom/netflix/cl/model/AppView;

.field private final b:I

.field private final c:Lcom/netflix/android/moneyball/fields/StringField;

.field private final d:I

.field private final e:Lcom/netflix/cl/model/InputKind;

.field private final h:Lo/TextToSpeech;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/InputKind;Lo/TextToSpeech;)V
    .locals 1

    const-string v0, "stringField"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputKind"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SpannableString;->c:Lcom/netflix/android/moneyball/fields/StringField;

    iput-object p2, p0, Lo/SpannableString;->a:Lcom/netflix/cl/model/AppView;

    iput-object p3, p0, Lo/SpannableString;->e:Lcom/netflix/cl/model/InputKind;

    iput-object p4, p0, Lo/SpannableString;->h:Lo/TextToSpeech;

    .line 15
    iget-object p1, p0, Lo/SpannableString;->c:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/StringField;->getMinLength()I

    move-result p1

    iput p1, p0, Lo/SpannableString;->b:I

    .line 17
    iget-object p1, p0, Lo/SpannableString;->c:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/StringField;->getMaxLength()I

    move-result p1

    iput p1, p0, Lo/SpannableString;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 26
    :goto_0
    iget-object v0, p0, Lo/SpannableString;->c:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lo/SpannableString;->h:Lo/TextToSpeech;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/SpannableString;->c:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/StringField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lo/TextToSpeech;->c(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lo/SpannableString;->c:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->isValid()Z

    move-result v0

    return v0
.end method

.method public b()Lcom/netflix/cl/model/InputKind;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/SpannableString;->e:Lcom/netflix/cl/model/InputKind;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 15
    iget v0, p0, Lo/SpannableString;->b:I

    return v0
.end method

.method public d()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/SpannableString;->a:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 17
    iget v0, p0, Lo/SpannableString;->d:I

    return v0
.end method

.method public g()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;
    .locals 3

    .line 31
    invoke-virtual {p0}, Lo/SpannableString;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 33
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_2

    .line 34
    :cond_1
    invoke-virtual {p0}, Lo/SpannableString;->c()I

    move-result v1

    invoke-virtual {p0}, Lo/SpannableString;->e()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v1, v0, :cond_4

    if-ge v2, v0, :cond_2

    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {p0}, Lo/SpannableString;->a()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 34
    :cond_4
    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->e:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    goto :goto_3

    .line 33
    :cond_5
    :goto_2
    sget-object v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->c:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    :goto_3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 23
    iget-object v0, p0, Lo/SpannableString;->c:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
