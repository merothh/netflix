.class public final Lo/SpannedString;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/InputMethodManager;

.field private final b:Lcom/netflix/android/moneyball/FlowMode;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/InputMethodManager;Lo/SystemTextClassifier;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "formCacheSynchronizerFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupErrorReporter"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p3}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/SpannedString;->b:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p2, p0, Lo/SpannedString;->a:Lo/InputMethodManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/InputKind;ZZ)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;
    .locals 5

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldName"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputKind"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lo/SpannedString;->b:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    .line 43
    invoke-interface {v0, p2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 44
    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    if-eqz p6, :cond_0

    .line 47
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object p6

    const-string v0, "SignupNativeFieldError"

    invoke-virtual {p6, v0, p2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 50
    :cond_1
    instance-of v4, v0, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v4, :cond_2

    if-eqz p6, :cond_0

    .line 51
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object p6

    const-string v0, "SignupNativeDataManipulationError"

    invoke-virtual {p6, v0, p2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 55
    :cond_2
    :goto_1
    check-cast v0, Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v0, :cond_5

    if-eqz p5, :cond_3

    .line 28
    iget-object p2, p0, Lo/SpannedString;->a:Lo/InputMethodManager;

    invoke-virtual {p2, p1}, Lo/InputMethodManager;->a(Ljava/lang/String;)Lo/InputMethodInfo;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    .line 32
    move-object p1, v0

    check-cast p1, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v1, p1}, Lo/InputMethodInfo;->d(Lcom/netflix/android/moneyball/fields/Field;)V

    .line 33
    :cond_4
    new-instance p1, Lo/SpannableString;

    .line 37
    check-cast v1, Lo/TextToSpeech;

    .line 33
    invoke-direct {p1, v0, p3, p4, v1}, Lo/SpannableString;-><init>(Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/InputKind;Lo/TextToSpeech;)V

    goto :goto_2

    :cond_5
    move-object p1, v1

    .line 26
    :goto_2
    check-cast p1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    return-object p1
.end method
