.class public final Lo/WindowManagerImpl;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final b:Lcom/netflix/android/moneyball/FlowMode;

.field private final c:Lo/DrawableMarginSpan;

.field private final d:Lo/InputBinding;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/DrawableMarginSpan;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModelInitializer"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/WindowManagerImpl;->b:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/WindowManagerImpl;->d:Lo/InputBinding;

    iput-object p4, p0, Lo/WindowManagerImpl;->c:Lo/DrawableMarginSpan;

    return-void
.end method


# virtual methods
.method public final a()Lo/WindowContentFrameStats;
    .locals 13

    .line 21
    iget-object v0, p0, Lo/WindowManagerImpl;->b:Lcom/netflix/android/moneyball/FlowMode;

    const-string v1, "SignupNativeDataManipulationError"

    const-string v2, "SignupNativeFieldError"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "hasFreeTrial"

    move-object v6, v3

    check-cast v6, Lorg/json/JSONObject;

    .line 45
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

    .line 49
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v0, v3

    goto :goto_2

    .line 52
    :cond_1
    instance-of v7, v0, Ljava/lang/Boolean;

    if-nez v7, :cond_2

    .line 53
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v1, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 57
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

    move-result v9

    .line 27
    iget-object v0, p0, Lo/WindowManagerImpl;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_7

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v6, "recognizedFormerMember"

    .line 24
    move-object v7, v3

    check-cast v7, Lorg/json/JSONObject;

    .line 58
    invoke-interface {v0, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v3

    :goto_4
    if-nez v0, :cond_5

    .line 62
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v2, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_5
    move-object v0, v3

    goto :goto_6

    .line 65
    :cond_5
    instance-of v2, v0, Ljava/lang/Boolean;

    if-nez v2, :cond_6

    .line 66
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v1, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 70
    :cond_6
    :goto_6
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object v0, v3

    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 28
    iget-object v0, p0, Lo/WindowManagerImpl;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0, v9}, Lo/WindowManagerImpl;->a(Lcom/netflix/android/moneyball/FlowMode;Z)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_8

    :cond_8
    move-object v8, v3

    .line 30
    :goto_8
    iget-object v0, p0, Lo/WindowManagerImpl;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_c

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, p0

    check-cast v1, Lo/TextClassificationSessionId;

    .line 71
    move-object v1, v3

    check-cast v1, Lorg/json/JSONObject;

    const-string v1, "hasMopOnFile"

    .line 72
    invoke-interface {v0, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :cond_9
    move-object v0, v3

    :goto_9
    if-nez v0, :cond_a

    :goto_a
    move-object v0, v3

    goto :goto_b

    .line 79
    :cond_a
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_b

    goto :goto_a

    .line 84
    :cond_b
    :goto_b
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object v0, v3

    :goto_c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 31
    iget-object v0, p0, Lo/WindowManagerImpl;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_10

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, p0

    check-cast v1, Lo/TextClassificationSessionId;

    .line 85
    move-object v1, v3

    check-cast v1, Lorg/json/JSONObject;

    const-string v1, "hasValidMop"

    .line 86
    invoke-interface {v0, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :cond_d
    move-object v0, v3

    :goto_d
    if-nez v0, :cond_e

    :goto_e
    move-object v0, v3

    goto :goto_f

    .line 93
    :cond_e
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_f

    goto :goto_e

    .line 98
    :cond_f
    :goto_f
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_10

    :cond_10
    move-object v0, v3

    :goto_10
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 32
    iget-object v0, p0, Lo/WindowManagerImpl;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v3

    :cond_11
    move-object v12, v3

    .line 23
    new-instance v0, Lo/WindowContentFrameStats;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lo/WindowContentFrameStats;-><init>(ZLjava/lang/String;ZZZLjava/lang/String;)V

    return-object v0
.end method

.method public final e()Lo/WindowManagerPolicyConstants;
    .locals 6

    .line 37
    new-instance v0, Lo/WindowManagerPolicyConstants;

    .line 38
    iget-object v1, p0, Lo/WindowManagerImpl;->d:Lo/InputBinding;

    .line 39
    iget-object v2, p0, Lo/WindowManagerImpl;->c:Lo/DrawableMarginSpan;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lo/DrawableMarginSpan;->c(Lo/DrawableMarginSpan;ZILjava/lang/Object;)Lo/DynamicDrawableSpan;

    move-result-object v2

    .line 40
    invoke-virtual {p0}, Lo/WindowManagerImpl;->a()Lo/WindowContentFrameStats;

    move-result-object v3

    .line 37
    invoke-direct {v0, v1, v2, v3}, Lo/WindowManagerPolicyConstants;-><init>(Lo/InputBinding;Lo/DynamicDrawableSpan;Lo/WindowContentFrameStats;)V

    return-object v0
.end method
