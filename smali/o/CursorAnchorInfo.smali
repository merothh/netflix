.class public final Lo/CursorAnchorInfo;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/TextClassifierImpl;

.field private final b:Lo/SuggestionService;

.field private final c:Lo/InputBinding;

.field private final d:Lcom/netflix/android/moneyball/FlowMode;

.field private final e:Lo/Deprecated$ActionBar;

.field private final f:Lo/ParcelableMap;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;Lo/ParcelableMap;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelProviderFactory"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ourStoryCardsViewModelInitializer"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/CursorAnchorInfo;->d:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/CursorAnchorInfo;->a:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/CursorAnchorInfo;->c:Lo/InputBinding;

    iput-object p5, p0, Lo/CursorAnchorInfo;->e:Lo/Deprecated$ActionBar;

    iput-object p6, p0, Lo/CursorAnchorInfo;->b:Lo/SuggestionService;

    iput-object p7, p0, Lo/CursorAnchorInfo;->f:Lo/ParcelableMap;

    return-void
.end method


# virtual methods
.method public final e()Lo/SuggestionsInfo;
    .locals 27

    move-object/from16 v0, p0

    .line 32
    iget-object v1, v0, Lo/CursorAnchorInfo;->d:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "startAction"

    invoke-virtual {v1, v3}, Lcom/netflix/android/moneyball/FlowMode;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    move-object v11, v1

    check-cast v11, Lcom/netflix/android/moneyball/fields/ActionField;

    .line 37
    iget-object v1, v0, Lo/CursorAnchorInfo;->d:Lcom/netflix/android/moneyball/FlowMode;

    const-string v3, "SignupNativeDataManipulationError"

    const-string v4, "SignupNativeFieldError"

    if-eqz v1, :cond_5

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v6, "recognizedFormerMember"

    .line 34
    move-object v7, v2

    check-cast v7, Lorg/json/JSONObject;

    .line 79
    invoke-interface {v1, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_3

    .line 83
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v4, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_2
    move-object v1, v2

    goto :goto_3

    .line 86
    :cond_3
    instance-of v8, v1, Ljava/lang/Boolean;

    if-nez v8, :cond_4

    .line 87
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v3, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 91
    :cond_4
    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 38
    iget-object v6, v0, Lo/CursorAnchorInfo;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v6, :cond_9

    check-cast v6, Lcom/netflix/android/moneyball/GetField;

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    .line 92
    move-object v7, v2

    check-cast v7, Lorg/json/JSONObject;

    const-string v7, "hasFreeTrial"

    .line 93
    invoke-interface {v6, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v6

    goto :goto_5

    :cond_6
    move-object v6, v2

    :goto_5
    if-nez v6, :cond_7

    :goto_6
    move-object v6, v2

    goto :goto_7

    .line 100
    :cond_7
    instance-of v7, v6, Ljava/lang/Boolean;

    if-nez v7, :cond_8

    goto :goto_6

    .line 105
    :cond_8
    :goto_7
    check-cast v6, Ljava/lang/Boolean;

    goto :goto_8

    :cond_9
    move-object v6, v2

    :goto_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 39
    iget-object v7, v0, Lo/CursorAnchorInfo;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v7, :cond_d

    check-cast v7, Lcom/netflix/android/moneyball/GetField;

    move-object v8, v0

    check-cast v8, Lo/TextClassificationSessionId;

    .line 106
    move-object v8, v2

    check-cast v8, Lorg/json/JSONObject;

    const-string v8, "hasEligibleOffer"

    .line 107
    invoke-interface {v7, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_9

    :cond_a
    move-object v7, v2

    :goto_9
    if-nez v7, :cond_b

    :goto_a
    move-object v7, v2

    goto :goto_b

    .line 114
    :cond_b
    instance-of v8, v7, Ljava/lang/Boolean;

    if-nez v8, :cond_c

    goto :goto_a

    .line 119
    :cond_c
    :goto_b
    check-cast v7, Ljava/lang/Boolean;

    goto :goto_c

    :cond_d
    move-object v7, v2

    :goto_c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v7, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 40
    iget-object v5, v0, Lo/CursorAnchorInfo;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_11

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v8, v0

    check-cast v8, Lo/TextClassificationSessionId;

    .line 120
    move-object v8, v2

    check-cast v8, Lorg/json/JSONObject;

    const-string v8, "offerType"

    .line 121
    invoke-interface {v5, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_d

    :cond_e
    move-object v5, v2

    :goto_d
    if-nez v5, :cond_f

    :goto_e
    move-object v5, v2

    goto :goto_f

    .line 128
    :cond_f
    instance-of v8, v5, Ljava/lang/String;

    if-nez v8, :cond_10

    goto :goto_e

    .line 133
    :cond_10
    :goto_f
    check-cast v5, Ljava/lang/String;

    move-object v8, v5

    goto :goto_10

    :cond_11
    move-object v8, v2

    .line 41
    :goto_10
    iget-object v5, v0, Lo/CursorAnchorInfo;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_15

    invoke-virtual {v0, v5}, Lo/CursorAnchorInfo;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v5

    if-eqz v5, :cond_15

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v9, v0

    check-cast v9, Lo/TextClassificationSessionId;

    .line 134
    move-object v9, v2

    check-cast v9, Lorg/json/JSONObject;

    const-string v9, "offerPrice"

    .line 135
    invoke-interface {v5, v9}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_11

    :cond_12
    move-object v5, v2

    :goto_11
    if-nez v5, :cond_13

    :goto_12
    move-object v5, v2

    goto :goto_13

    .line 142
    :cond_13
    instance-of v9, v5, Ljava/lang/String;

    if-nez v9, :cond_14

    goto :goto_12

    .line 147
    :cond_14
    :goto_13
    check-cast v5, Ljava/lang/String;

    move-object v9, v5

    goto :goto_14

    :cond_15
    move-object v9, v2

    .line 42
    :goto_14
    iget-object v5, v0, Lo/CursorAnchorInfo;->d:Lcom/netflix/android/moneyball/FlowMode;

    const-string v10, ","

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_18

    move-object v12, v0

    check-cast v12, Lo/TextClassificationSessionId;

    const-string v13, "adaptiveFields"

    const-string v14, "concord"

    const-string v15, "image"

    const-string v16, "imageSet"

    const-string v17, "0"

    const-string v18, "cdnUrl"

    .line 49
    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v13

    .line 43
    invoke-static {v13}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 148
    invoke-static {v5, v13}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    .line 149
    move-object v14, v13

    check-cast v14, Ljava/lang/Iterable;

    move-object v15, v10

    check-cast v15, Ljava/lang/CharSequence;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3e

    const/16 v22, 0x0

    invoke-static/range {v14 .. v22}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object v14, v2

    check-cast v14, Lorg/json/JSONObject;

    if-nez v5, :cond_16

    .line 152
    invoke-static {v12}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v4, v13, v14}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_15
    move-object v5, v2

    goto :goto_16

    .line 155
    :cond_16
    instance-of v15, v5, Ljava/lang/String;

    if-nez v15, :cond_17

    .line 156
    invoke-static {v12}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v3, v13, v14}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_15

    .line 160
    :cond_17
    :goto_16
    check-cast v5, Ljava/lang/String;

    move-object v12, v5

    goto :goto_17

    :cond_18
    move-object v12, v2

    .line 52
    :goto_17
    iget-object v5, v0, Lo/CursorAnchorInfo;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1b

    move-object v13, v0

    check-cast v13, Lo/TextClassificationSessionId;

    const-string v14, "adaptiveFields"

    const-string v15, "concord"

    const-string v2, "messages"

    move-object/from16 v17, v12

    const-string v12, "ctaButton"

    .line 57
    filled-new-array {v14, v15, v2, v12}, [Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 161
    invoke-static {v5, v2}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    .line 162
    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/Iterable;

    move-object/from16 v19, v10

    check-cast v19, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3e

    const/16 v26, 0x0

    invoke-static/range {v18 .. v26}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    move-object v12, v10

    check-cast v12, Lorg/json/JSONObject;

    if-nez v5, :cond_19

    .line 165
    invoke-static {v13}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v4, v2, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_18
    move-object v5, v10

    goto :goto_19

    .line 168
    :cond_19
    instance-of v4, v5, Ljava/lang/String;

    if-nez v4, :cond_1a

    .line 169
    invoke-static {v13}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_18

    .line 173
    :cond_1a
    :goto_19
    move-object v2, v5

    check-cast v2, Ljava/lang/String;

    goto :goto_1a

    :cond_1b
    move-object v10, v2

    move-object/from16 v17, v12

    move-object v2, v10

    :goto_1a
    if-eqz v11, :cond_1c

    const-string v3, "netflixClientPlatform"

    .line 61
    invoke-virtual {v11, v3}, Lcom/netflix/android/moneyball/fields/ActionField;->getAttr(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1b

    :cond_1c
    move-object v3, v10

    :goto_1b
    const-string v4, "androidWebView"

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 62
    iget-object v3, v0, Lo/CursorAnchorInfo;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_1d

    invoke-virtual {v0, v3}, Lo/CursorAnchorInfo;->a(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_1c

    :cond_1d
    move-object v13, v10

    .line 33
    :goto_1c
    new-instance v14, Lo/SuggestionsInfo;

    move-object v3, v14

    move v4, v1

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v9, v17

    move-object v10, v2

    invoke-direct/range {v3 .. v13}, Lo/SuggestionsInfo;-><init>(ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ActionField;ZLjava/lang/String;)V

    return-object v14
.end method

.method public final e(Landroidx/fragment/app/Fragment;)Lo/TextInfo;
    .locals 8

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lo/CursorAnchorInfo;->e:Lo/Deprecated$ActionBar;

    invoke-static {p1, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    const-class v0, Lo/SpellCheckerSession;

    invoke-virtual {p1, v0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Lo/SpellCheckerSession;

    .line 68
    new-instance p1, Lo/TextInfo;

    .line 69
    iget-object v2, p0, Lo/CursorAnchorInfo;->c:Lo/InputBinding;

    .line 70
    iget-object v0, p0, Lo/CursorAnchorInfo;->f:Lo/ParcelableMap;

    invoke-virtual {v0}, Lo/ParcelableMap;->d()Lo/AutofillManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutofillManagerInternal;->d()Ljava/util/List;

    move-result-object v3

    .line 71
    invoke-virtual {p0}, Lo/CursorAnchorInfo;->e()Lo/SuggestionsInfo;

    move-result-object v4

    .line 73
    iget-object v6, p0, Lo/CursorAnchorInfo;->a:Lo/TextClassifierImpl;

    .line 74
    iget-object v0, p0, Lo/CursorAnchorInfo;->b:Lo/SuggestionService;

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-static {v0, v1, v7, v1}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v7

    move-object v1, p1

    .line 68
    invoke-direct/range {v1 .. v7}, Lo/TextInfo;-><init>(Lo/InputBinding;Ljava/util/List;Lo/SuggestionsInfo;Lo/SpellCheckerSession;Lo/TextClassifierImpl;Lo/TextClassifierService;)V

    return-object p1
.end method
