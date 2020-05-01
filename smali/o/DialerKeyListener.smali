.class public final Lo/DialerKeyListener;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final b:Lcom/netflix/android/moneyball/FlowMode;

.field private final d:Lo/InputBinding;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/DialerKeyListener;->b:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/DialerKeyListener;->d:Lo/InputBinding;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;)Lo/DateTimeKeyListener;
    .locals 6

    const-string v0, "profileNameFieldKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 24
    move-object v1, v0

    check-cast v1, Lo/DateTimeKeyListener;

    .line 26
    iget-object v2, p0, Lo/DialerKeyListener;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_2

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 42
    invoke-interface {v2, p1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    .line 43
    move-object v4, v0

    check-cast v4, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 46
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    const-string v3, "SignupNativeFieldError"

    invoke-virtual {v2, v3, p1, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 49
    :cond_0
    instance-of v5, v2, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v5, :cond_1

    .line 50
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    const-string v3, "SignupNativeDataManipulationError"

    invoke-virtual {v2, v3, p1, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    move-object p1, v2

    check-cast p1, Lcom/netflix/android/moneyball/fields/StringField;

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    if-eqz p2, :cond_5

    .line 27
    iget-object v2, p0, Lo/DialerKeyListener;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_5

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 56
    invoke-interface {v2, p2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p2

    .line 57
    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    if-nez p2, :cond_3

    goto :goto_3

    .line 63
    :cond_3
    instance-of v2, p2, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, p2

    .line 68
    :goto_3
    check-cast v0, Lcom/netflix/android/moneyball/fields/BooleanField;

    :cond_5
    if-eqz p1, :cond_6

    .line 30
    new-instance v1, Lo/DateTimeKeyListener;

    .line 33
    iget-object p2, p0, Lo/DialerKeyListener;->d:Lo/InputBinding;

    .line 30
    invoke-direct {v1, p1, v0, p2}, Lo/DateTimeKeyListener;-><init>(Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/BooleanField;Lo/InputBinding;)V

    :cond_6
    return-object v1
.end method
