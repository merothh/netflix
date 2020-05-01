.class public final Lo/AnimationSet;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final b:Lo/TextClassificationManager;

.field private final c:Lo/InputBinding;

.field private final d:Lo/Deprecated$ActionBar;

.field private final e:Lo/TextClassifierImpl;

.field private final f:Lo/Touch;

.field private final g:Lo/DrawableMarginSpan;

.field private final i:Lo/SentenceSuggestionsInfo;

.field private final j:Lo/SuggestionService;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/SuggestionService;Lo/Touch;Lo/SentenceSuggestionsInfo;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupLogger"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelProviderFactory"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModelInitializer"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentOptionViewModelInitializer"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mopLogos"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/AnimationSet;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/AnimationSet;->e:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/AnimationSet;->b:Lo/TextClassificationManager;

    iput-object p5, p0, Lo/AnimationSet;->c:Lo/InputBinding;

    iput-object p6, p0, Lo/AnimationSet;->d:Lo/Deprecated$ActionBar;

    iput-object p7, p0, Lo/AnimationSet;->g:Lo/DrawableMarginSpan;

    iput-object p8, p0, Lo/AnimationSet;->j:Lo/SuggestionService;

    iput-object p9, p0, Lo/AnimationSet;->f:Lo/Touch;

    iput-object p10, p0, Lo/AnimationSet;->i:Lo/SentenceSuggestionsInfo;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/fragment/app/Fragment;)Lo/AccessibilityManager;
    .locals 10

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lo/AnimationSet;->d:Lo/Deprecated$ActionBar;

    invoke-static {p1, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    const-class v0, Lo/AccessibilityWindowInfo;

    invoke-virtual {p1, v0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p1

    check-cast v6, Lo/AccessibilityWindowInfo;

    .line 64
    new-instance p1, Lo/GenerateLinksLogger;

    iget-object v1, p0, Lo/AnimationSet;->b:Lo/TextClassificationManager;

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextViewModelInitializer$createSMSPaymentContextViewModel$changePaymentRequestLogger$1;->b:Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextViewModelInitializer$createSMSPaymentContextViewModel$changePaymentRequestLogger$1;

    move-object v3, v0

    check-cast v3, Lo/alB;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 66
    new-instance v0, Lo/AccessibilityManager;

    .line 67
    iget-object v2, p0, Lo/AnimationSet;->e:Lo/TextClassifierImpl;

    .line 68
    iget-object v1, p0, Lo/AnimationSet;->j:Lo/SuggestionService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v3}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v3

    .line 69
    iget-object v4, p0, Lo/AnimationSet;->c:Lo/InputBinding;

    .line 70
    iget-object v1, p0, Lo/AnimationSet;->g:Lo/DrawableMarginSpan;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lo/DrawableMarginSpan;->e(Z)Lo/DynamicDrawableSpan;

    move-result-object v5

    .line 72
    invoke-virtual {p0}, Lo/AnimationSet;->e()Lo/AccessibilityInteractionClient;

    move-result-object v7

    .line 73
    iget-object v1, p0, Lo/AnimationSet;->f:Lo/Touch;

    invoke-virtual {v1}, Lo/Touch;->d()Ljava/util/List;

    move-result-object v8

    .line 74
    move-object v9, p1

    check-cast v9, Lo/TextClassificationSessionFactory;

    move-object v1, v0

    .line 66
    invoke-direct/range {v1 .. v9}, Lo/AccessibilityManager;-><init>(Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/InputBinding;Lo/DynamicDrawableSpan;Lo/AccessibilityWindowInfo;Lo/AccessibilityInteractionClient;Ljava/util/List;Lo/TextClassificationSessionFactory;)V

    return-object v0
.end method

.method public final e()Lo/AccessibilityInteractionClient;
    .locals 12

    .line 37
    iget-object v0, p0, Lo/AnimationSet;->a:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    const/4 v2, 0x0

    const-string v3, "dcbOption"

    invoke-virtual {p0, v0, v3, v2}, Lo/AnimationSet;->c(Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;Z)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "SignupNativeDataManipulationError"

    const-string v3, "SignupNativeFieldError"

    if-eqz v0, :cond_4

    .line 38
    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "paymentLogoUrls"

    move-object v6, v1

    check-cast v6, Lorg/json/JSONObject;

    .line 79
    invoke-interface {v0, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 83
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v3, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_2
    move-object v0, v1

    goto :goto_3

    .line 86
    :cond_2
    instance-of v7, v0, Ljava/util/List;

    if-nez v7, :cond_3

    .line 87
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 91
    :cond_3
    :goto_3
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 38
    invoke-static {v0}, Lo/akz;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    if-nez v0, :cond_5

    move-object v8, v1

    goto :goto_5

    .line 39
    :cond_5
    iget-object v4, p0, Lo/AnimationSet;->i:Lo/SentenceSuggestionsInfo;

    invoke-virtual {p0}, Lo/AnimationSet;->j()Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lo/SentenceSuggestionsInfo;->a(Lo/SystemTextClassifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 40
    :goto_5
    iget-object v0, p0, Lo/AnimationSet;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "hasFreeTrial"

    move-object v6, v1

    check-cast v6, Lorg/json/JSONObject;

    .line 92
    invoke-interface {v0, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object v0, v1

    :goto_6
    if-nez v0, :cond_7

    .line 96
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v3, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_7
    move-object v0, v1

    goto :goto_8

    .line 99
    :cond_7
    instance-of v7, v0, Ljava/lang/Boolean;

    if-nez v7, :cond_8

    .line 100
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_7

    .line 104
    :cond_8
    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object v0, v1

    :goto_9
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 43
    iget-object v0, p0, Lo/AnimationSet;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_d

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 105
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "userMessage"

    .line 106
    invoke-interface {v0, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    :cond_a
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_b

    :goto_b
    move-object v0, v1

    goto :goto_c

    .line 113
    :cond_b
    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_c

    goto :goto_b

    .line 118
    :cond_c
    :goto_c
    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    goto :goto_d

    :cond_d
    move-object v5, v1

    .line 47
    :goto_d
    iget-object v0, p0, Lo/AnimationSet;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_11

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v6, p0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v7, "recognizedFormerMember"

    .line 44
    move-object v9, v1

    check-cast v9, Lorg/json/JSONObject;

    .line 119
    invoke-interface {v0, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_e

    :cond_e
    move-object v0, v1

    :goto_e
    if-nez v0, :cond_f

    .line 123
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v3, v7, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_f
    move-object v0, v1

    goto :goto_10

    .line 126
    :cond_f
    instance-of v10, v0, Ljava/lang/Boolean;

    if-nez v10, :cond_10

    .line 127
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v2, v7, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_f

    .line 131
    :cond_10
    :goto_10
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_11

    :cond_11
    move-object v0, v1

    :goto_11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 48
    iget-object v0, p0, Lo/AnimationSet;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_15

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v7, "partnerDisplayName"

    move-object v9, v1

    check-cast v9, Lorg/json/JSONObject;

    .line 132
    invoke-interface {v0, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_12

    :cond_12
    move-object v0, v1

    :goto_12
    if-nez v0, :cond_13

    .line 136
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v3, v7, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_13
    move-object v0, v1

    goto :goto_14

    .line 139
    :cond_13
    instance-of v10, v0, Ljava/lang/String;

    if-nez v10, :cond_14

    .line 140
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v2, v7, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_13

    .line 144
    :cond_14
    :goto_14
    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    goto :goto_15

    :cond_15
    move-object v7, v1

    .line 53
    :goto_15
    iget-object v0, p0, Lo/AnimationSet;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_18

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v9, "changePaymentAction"

    .line 145
    invoke-interface {v0, v9}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 146
    move-object v10, v1

    check-cast v10, Lorg/json/JSONObject;

    if-nez v0, :cond_16

    .line 149
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v3, v9, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_16
    move-object v0, v1

    goto :goto_17

    .line 152
    :cond_16
    instance-of v3, v0, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v3, :cond_17

    .line 153
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v2, v9, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_16

    .line 157
    :cond_17
    :goto_17
    check-cast v0, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v9, v0

    goto :goto_18

    :cond_18
    move-object v9, v1

    .line 57
    :goto_18
    iget-object v0, p0, Lo/AnimationSet;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_19

    invoke-virtual {p0, v0, v11}, Lo/AnimationSet;->a(Lcom/netflix/android/moneyball/FlowMode;Z)Ljava/lang/String;

    move-result-object v1

    :cond_19
    move-object v10, v1

    .line 42
    new-instance v0, Lo/AccessibilityInteractionClient;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lo/AccessibilityInteractionClient;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;Z)V

    return-object v0
.end method
