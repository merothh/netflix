.class public final Lo/OvershootInterpolator;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final c:Lo/InputBinding;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/OvershootInterpolator;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/OvershootInterpolator;->c:Lo/InputBinding;

    return-void
.end method


# virtual methods
.method public final c()Lo/RotateAnimation;
    .locals 9

    .line 23
    iget-object v0, p0, Lo/OvershootInterpolator;->a:Lcom/netflix/android/moneyball/FlowMode;

    const-string v1, "SignupNativeDataManipulationError"

    const-string v2, "SignupNativeFieldError"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "recognizedFormerMember"

    .line 20
    move-object v6, v3

    check-cast v6, Lorg/json/JSONObject;

    .line 33
    invoke-interface {v0, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    .line 37
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v0, v3

    goto :goto_2

    .line 40
    :cond_1
    instance-of v7, v0, Ljava/lang/Boolean;

    if-nez v7, :cond_2

    .line 41
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v1, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 45
    :cond_2
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object v0, v3

    :goto_3
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 24
    iget-object v5, p0, Lo/OvershootInterpolator;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_7

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v6, p0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v7, "is3DSCharge"

    move-object v8, v3

    check-cast v8, Lorg/json/JSONObject;

    .line 46
    invoke-interface {v5, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, v3

    :goto_4
    if-nez v5, :cond_5

    .line 50
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_5
    move-object v5, v3

    goto :goto_6

    .line 53
    :cond_5
    instance-of v2, v5, Ljava/lang/Boolean;

    if-nez v2, :cond_6

    .line 54
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v1, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 58
    :cond_6
    :goto_6
    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 26
    :cond_7
    iget-object v1, p0, Lo/OvershootInterpolator;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_b

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    .line 59
    move-object v2, v3

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "userMessage"

    .line 60
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v3

    :goto_7
    if-nez v1, :cond_9

    goto :goto_8

    .line 67
    :cond_9
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_a

    goto :goto_8

    :cond_a
    move-object v3, v1

    .line 72
    :goto_8
    check-cast v3, Ljava/lang/String;

    .line 19
    :cond_b
    new-instance v1, Lo/RotateAnimation;

    invoke-direct {v1, v0, v4, v3}, Lo/RotateAnimation;-><init>(ZZLjava/lang/String;)V

    return-object v1
.end method

.method public final e()Lo/LayoutAnimationController;
    .locals 3

    .line 30
    new-instance v0, Lo/LayoutAnimationController;

    iget-object v1, p0, Lo/OvershootInterpolator;->c:Lo/InputBinding;

    invoke-virtual {p0}, Lo/OvershootInterpolator;->c()Lo/RotateAnimation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/LayoutAnimationController;-><init>(Lo/InputBinding;Lo/RotateAnimation;)V

    return-object v0
.end method
