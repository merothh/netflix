.class public final Lo/FallbackEventHandler;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/SuggestionService;

.field private final b:Lo/InputBinding;

.field private final c:Lo/DrawableMarginSpan;

.field private final d:Lcom/netflix/android/moneyball/FlowMode;

.field private final e:Lo/Deprecated$ActionBar;

.field private final h:Lo/Touch;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/SuggestionService;Lo/Touch;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelProviderFactory"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModelInitializer"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentOptionViewModelInitializer"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/FallbackEventHandler;->d:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/FallbackEventHandler;->b:Lo/InputBinding;

    iput-object p4, p0, Lo/FallbackEventHandler;->e:Lo/Deprecated$ActionBar;

    iput-object p5, p0, Lo/FallbackEventHandler;->c:Lo/DrawableMarginSpan;

    iput-object p6, p0, Lo/FallbackEventHandler;->a:Lo/SuggestionService;

    iput-object p7, p0, Lo/FallbackEventHandler;->h:Lo/Touch;

    return-void
.end method


# virtual methods
.method public final b()Lo/Choreographer;
    .locals 18

    move-object/from16 v0, p0

    .line 30
    iget-object v1, v0, Lo/FallbackEventHandler;->d:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    const/4 v3, 0x0

    const-string v4, "giftOption"

    invoke-virtual {v0, v1, v4, v3}, Lo/FallbackEventHandler;->c(Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;Z)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 31
    :goto_0
    iget-object v3, v0, Lo/FallbackEventHandler;->d:Lcom/netflix/android/moneyball/FlowMode;

    const-string v4, "SignupNativeDataManipulationError"

    const-string v5, "SignupNativeFieldError"

    if-eqz v3, :cond_4

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v7, "hasFreeTrial"

    move-object v8, v2

    check-cast v8, Lorg/json/JSONObject;

    .line 63
    invoke-interface {v3, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_2

    .line 67
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v5, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_2
    move-object v3, v2

    goto :goto_3

    .line 70
    :cond_2
    instance-of v9, v3, Ljava/lang/Boolean;

    if-nez v9, :cond_3

    .line 71
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v4, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 75
    :cond_3
    :goto_3
    check-cast v3, Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object v3, v2

    :goto_4
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v3, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 34
    iget-object v3, v0, Lo/FallbackEventHandler;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_5

    invoke-virtual {v0, v3, v10}, Lo/FallbackEventHandler;->a(Lcom/netflix/android/moneyball/FlowMode;Z)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_5

    :cond_5
    move-object v9, v2

    .line 36
    :goto_5
    iget-object v3, v0, Lo/FallbackEventHandler;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_9

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    .line 76
    move-object v7, v2

    check-cast v7, Lorg/json/JSONObject;

    const-string v7, "hasEligibleOffer"

    .line 77
    invoke-interface {v3, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_6

    :cond_6
    move-object v3, v2

    :goto_6
    if-nez v3, :cond_7

    :goto_7
    move-object v3, v2

    goto :goto_8

    .line 84
    :cond_7
    instance-of v7, v3, Ljava/lang/Boolean;

    if-nez v7, :cond_8

    goto :goto_7

    .line 89
    :cond_8
    :goto_8
    check-cast v3, Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object v3, v2

    :goto_9
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v3, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 37
    iget-object v3, v0, Lo/FallbackEventHandler;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_d

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    .line 90
    move-object v7, v2

    check-cast v7, Lorg/json/JSONObject;

    const-string v7, "offerType"

    .line 91
    invoke-interface {v3, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_a

    :cond_a
    move-object v3, v2

    :goto_a
    if-nez v3, :cond_b

    :goto_b
    move-object v3, v2

    goto :goto_c

    .line 98
    :cond_b
    instance-of v7, v3, Ljava/lang/String;

    if-nez v7, :cond_c

    goto :goto_b

    .line 103
    :cond_c
    :goto_c
    check-cast v3, Ljava/lang/String;

    move-object v12, v3

    goto :goto_d

    :cond_d
    move-object v12, v2

    .line 38
    :goto_d
    iget-object v3, v0, Lo/FallbackEventHandler;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_11

    invoke-virtual {v0, v3}, Lo/FallbackEventHandler;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v3

    if-eqz v3, :cond_11

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    .line 104
    move-object v7, v2

    check-cast v7, Lorg/json/JSONObject;

    const-string v7, "offerPrice"

    .line 105
    invoke-interface {v3, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_e

    :cond_e
    move-object v3, v2

    :goto_e
    if-nez v3, :cond_f

    :goto_f
    move-object v3, v2

    goto :goto_10

    .line 112
    :cond_f
    instance-of v7, v3, Ljava/lang/String;

    if-nez v7, :cond_10

    goto :goto_f

    .line 117
    :cond_10
    :goto_10
    check-cast v3, Ljava/lang/String;

    move-object v13, v3

    goto :goto_11

    :cond_11
    move-object v13, v2

    .line 39
    :goto_11
    iget-object v3, v0, Lo/FallbackEventHandler;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_12

    const-string v7, "userMessage"

    invoke-virtual {v3, v7}, Lcom/netflix/android/moneyball/FlowMode;->getFieldNonResursive(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_12

    :cond_12
    move-object v3, v2

    :goto_12
    instance-of v7, v3, Ljava/lang/String;

    if-nez v7, :cond_13

    move-object v3, v2

    :cond_13
    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    .line 43
    iget-object v3, v0, Lo/FallbackEventHandler;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_17

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    const-string v8, "recognizedFormerMember"

    .line 40
    move-object v15, v2

    check-cast v15, Lorg/json/JSONObject;

    .line 118
    invoke-interface {v3, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_13

    :cond_14
    move-object v3, v2

    :goto_13
    if-nez v3, :cond_15

    .line 122
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v5, v8, v15}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_14
    move-object v3, v2

    goto :goto_15

    .line 125
    :cond_15
    instance-of v5, v3, Ljava/lang/Boolean;

    if-nez v5, :cond_16

    .line 126
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v4, v8, v15}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_14

    .line 130
    :cond_16
    :goto_15
    check-cast v3, Ljava/lang/Boolean;

    goto :goto_16

    :cond_17
    move-object v3, v2

    :goto_16
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v1, :cond_1b

    .line 44
    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 131
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "giftAmount"

    .line 132
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_17

    :cond_18
    move-object v1, v2

    :goto_17
    if-nez v1, :cond_19

    :goto_18
    move-object v1, v2

    goto :goto_19

    .line 139
    :cond_19
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1a

    goto :goto_18

    .line 144
    :cond_1a
    :goto_19
    check-cast v1, Ljava/lang/String;

    move-object/from16 v16, v1

    goto :goto_1a

    :cond_1b
    move-object/from16 v16, v2

    .line 45
    :goto_1a
    iget-object v1, v0, Lo/FallbackEventHandler;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1f

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 145
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "giftCodeMopRequired"

    .line 146
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1b

    :cond_1c
    move-object v1, v2

    :goto_1b
    if-nez v1, :cond_1d

    goto :goto_1c

    .line 153
    :cond_1d
    instance-of v3, v1, Ljava/lang/Boolean;

    if-nez v3, :cond_1e

    goto :goto_1c

    :cond_1e
    move-object v2, v1

    .line 158
    :goto_1c
    check-cast v2, Ljava/lang/Boolean;

    :cond_1f
    move-object/from16 v17, v2

    .line 33
    new-instance v1, Lo/Choreographer;

    move-object v8, v1

    invoke-direct/range {v8 .. v17}, Lo/Choreographer;-><init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method public final b(Landroidx/fragment/app/Fragment;)Lo/FocusFinder;
    .locals 8

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lo/FallbackEventHandler;->e:Lo/Deprecated$ActionBar;

    invoke-static {p1, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    const-class v0, Lo/DisplayAdjustments;

    invoke-virtual {p1, v0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lo/DisplayAdjustments;

    .line 52
    new-instance p1, Lo/FocusFinder;

    .line 53
    iget-object v2, p0, Lo/FallbackEventHandler;->b:Lo/InputBinding;

    .line 54
    iget-object v0, p0, Lo/FallbackEventHandler;->c:Lo/DrawableMarginSpan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/DrawableMarginSpan;->e(Z)Lo/DynamicDrawableSpan;

    move-result-object v3

    .line 56
    invoke-virtual {p0}, Lo/FallbackEventHandler;->b()Lo/Choreographer;

    move-result-object v5

    .line 57
    iget-object v0, p0, Lo/FallbackEventHandler;->h:Lo/Touch;

    invoke-virtual {v0}, Lo/Touch;->d()Ljava/util/List;

    move-result-object v6

    .line 58
    iget-object v0, p0, Lo/FallbackEventHandler;->a:Lo/SuggestionService;

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-static {v0, v1, v7, v1}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v7

    move-object v1, p1

    .line 52
    invoke-direct/range {v1 .. v7}, Lo/FocusFinder;-><init>(Lo/InputBinding;Lo/DynamicDrawableSpan;Lo/DisplayAdjustments;Lo/Choreographer;Ljava/util/List;Lo/TextClassifierService;)V

    return-object p1
.end method
