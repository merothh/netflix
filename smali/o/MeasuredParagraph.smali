.class public final Lo/MeasuredParagraph;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final b:Lo/InputBinding;

.field private final c:Lo/InputMethodManager;

.field private final d:Lo/TextToSpeechService;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/TextToSpeechService;Lo/InputMethodManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputFieldFactory"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formCacheSynchronizerFactory"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/MeasuredParagraph;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/MeasuredParagraph;->b:Lo/InputBinding;

    iput-object p4, p0, Lo/MeasuredParagraph;->d:Lo/TextToSpeechService;

    iput-object p5, p0, Lo/MeasuredParagraph;->c:Lo/InputMethodManager;

    return-void
.end method


# virtual methods
.method public final c()Lo/Hyphenator;
    .locals 5

    .line 23
    iget-object v0, p0, Lo/MeasuredParagraph;->a:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "birthYear"

    .line 37
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 38
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 44
    :cond_0
    instance-of v2, v0, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez v2, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    check-cast v0, Lcom/netflix/android/moneyball/fields/NumberField;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 25
    new-instance v1, Lo/Hyphenator;

    .line 26
    iget-object v2, p0, Lo/MeasuredParagraph;->d:Lo/TextToSpeechService;

    .line 28
    iget-object v3, p0, Lo/MeasuredParagraph;->c:Lo/InputMethodManager;

    const-string v4, "verifyAge"

    invoke-virtual {v3, v4}, Lo/InputMethodManager;->a(Ljava/lang/String;)Lo/InputMethodInfo;

    move-result-object v3

    check-cast v3, Lo/TextToSpeech;

    .line 26
    invoke-virtual {v2, v0, v3}, Lo/TextToSpeechService;->b(Lcom/netflix/android/moneyball/fields/NumberField;Lo/TextToSpeech;)Lo/BidiFormatter;

    move-result-object v0

    .line 25
    invoke-direct {v1, v0}, Lo/Hyphenator;-><init>(Lo/BidiFormatter;)V

    :cond_3
    return-object v1
.end method
