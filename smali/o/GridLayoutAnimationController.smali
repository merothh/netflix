.class public final Lo/GridLayoutAnimationController;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/TextClassificationManager;

.field private final b:Lo/TextClassifierImpl;

.field private final c:Lo/Deprecated$ActionBar;

.field private final d:Lo/InputBinding;

.field private final e:Lcom/netflix/android/moneyball/FlowMode;

.field private final g:Ljava/lang/String;

.field private final i:Lo/SuggestionService;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;Ljava/lang/String;)V
    .locals 1
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "webViewBaseUrl"
        .end annotation
    .end param
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

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewBaseUrl"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/GridLayoutAnimationController;->e:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/GridLayoutAnimationController;->b:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/GridLayoutAnimationController;->a:Lo/TextClassificationManager;

    iput-object p5, p0, Lo/GridLayoutAnimationController;->d:Lo/InputBinding;

    iput-object p6, p0, Lo/GridLayoutAnimationController;->c:Lo/Deprecated$ActionBar;

    iput-object p7, p0, Lo/GridLayoutAnimationController;->i:Lo/SuggestionService;

    iput-object p8, p0, Lo/GridLayoutAnimationController;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lo/CycleInterpolator;
    .locals 19

    move-object/from16 v0, p0

    .line 35
    iget-object v1, v0, Lo/GridLayoutAnimationController;->e:Lcom/netflix/android/moneyball/FlowMode;

    const-string v2, "emvco3dsAuthenticationRequestUrl"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v0

    check-cast v4, Lo/TextClassificationSessionId;

    .line 83
    move-object v4, v3

    check-cast v4, Lorg/json/JSONObject;

    .line 84
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    move-object v1, v3

    goto :goto_2

    .line 91
    :cond_1
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_1

    .line 96
    :cond_2
    :goto_2
    check-cast v1, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    const/4 v4, 0x1

    if-eqz v1, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    const/16 v17, 0x0

    .line 41
    :goto_4
    iget-object v1, v0, Lo/GridLayoutAnimationController;->e:Lcom/netflix/android/moneyball/FlowMode;

    const-string v5, "SignupNativeDataManipulationError"

    const-string v6, "SignupNativeFieldError"

    if-eqz v1, :cond_8

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    const-string v8, "recognizedFormerMember"

    .line 38
    move-object v9, v3

    check-cast v9, Lorg/json/JSONObject;

    .line 97
    invoke-interface {v1, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v3

    :goto_5
    if-nez v1, :cond_6

    .line 101
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v6, v8, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_6
    move-object v1, v3

    goto :goto_7

    .line 104
    :cond_6
    instance-of v10, v1, Ljava/lang/Boolean;

    if-nez v10, :cond_7

    .line 105
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v5, v8, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_6

    .line 109
    :cond_7
    :goto_7
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object v1, v3

    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v1, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 42
    iget-object v7, v0, Lo/GridLayoutAnimationController;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v7, :cond_c

    check-cast v7, Lcom/netflix/android/moneyball/GetField;

    move-object v8, v0

    check-cast v8, Lo/TextClassificationSessionId;

    const-string v9, "md"

    move-object v10, v3

    check-cast v10, Lorg/json/JSONObject;

    .line 110
    invoke-interface {v7, v9}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_9

    :cond_9
    move-object v7, v3

    :goto_9
    if-nez v7, :cond_a

    .line 114
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v6, v9, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_a
    move-object v7, v3

    goto :goto_b

    .line 117
    :cond_a
    instance-of v11, v7, Ljava/lang/String;

    if-nez v11, :cond_b

    .line 118
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v5, v9, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_a

    .line 122
    :cond_b
    :goto_b
    check-cast v7, Ljava/lang/String;

    move-object v9, v7

    goto :goto_c

    :cond_c
    move-object v9, v3

    .line 43
    :goto_c
    iget-object v7, v0, Lo/GridLayoutAnimationController;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v7, :cond_f

    check-cast v7, Lcom/netflix/android/moneyball/GetField;

    move-object v8, v0

    check-cast v8, Lo/TextClassificationSessionId;

    const-string v10, "paRes"

    .line 123
    invoke-interface {v7, v10}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v7

    .line 124
    move-object v11, v3

    check-cast v11, Lorg/json/JSONObject;

    if-nez v7, :cond_d

    .line 127
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v6, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_d
    move-object v7, v3

    goto :goto_e

    .line 130
    :cond_d
    instance-of v12, v7, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v12, :cond_e

    .line 131
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v5, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_d

    .line 135
    :cond_e
    :goto_e
    check-cast v7, Lcom/netflix/android/moneyball/fields/StringField;

    move-object v10, v7

    goto :goto_f

    :cond_f
    move-object v10, v3

    .line 44
    :goto_f
    iget-object v7, v0, Lo/GridLayoutAnimationController;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v7, :cond_14

    check-cast v7, Lcom/netflix/android/moneyball/GetField;

    move-object v8, v0

    check-cast v8, Lo/TextClassificationSessionId;

    const-string v11, "acsURL"

    xor-int/lit8 v12, v17, 0x1

    move-object v13, v3

    check-cast v13, Lorg/json/JSONObject;

    .line 136
    invoke-interface {v7, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_10

    :cond_10
    move-object v7, v3

    :goto_10
    if-nez v7, :cond_12

    if-eqz v12, :cond_11

    .line 140
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v6, v11, v13}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_11
    :goto_11
    move-object v7, v3

    goto :goto_12

    .line 143
    :cond_12
    instance-of v14, v7, Ljava/lang/String;

    if-nez v14, :cond_13

    if-eqz v12, :cond_11

    .line 144
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v5, v11, v13}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_11

    .line 148
    :cond_13
    :goto_12
    check-cast v7, Ljava/lang/String;

    move-object v13, v7

    goto :goto_13

    :cond_14
    move-object v13, v3

    .line 45
    :goto_13
    iget-object v7, v0, Lo/GridLayoutAnimationController;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v7, :cond_19

    check-cast v7, Lcom/netflix/android/moneyball/GetField;

    move-object v8, v0

    check-cast v8, Lo/TextClassificationSessionId;

    const-string v11, "paReq"

    xor-int/lit8 v12, v17, 0x1

    move-object v14, v3

    check-cast v14, Lorg/json/JSONObject;

    .line 149
    invoke-interface {v7, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v7

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_14

    :cond_15
    move-object v7, v3

    :goto_14
    if-nez v7, :cond_17

    if-eqz v12, :cond_16

    .line 153
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v6, v11, v14}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_16
    :goto_15
    move-object v7, v3

    goto :goto_16

    .line 156
    :cond_17
    instance-of v15, v7, Ljava/lang/String;

    if-nez v15, :cond_18

    if-eqz v12, :cond_16

    .line 157
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v5, v11, v14}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_15

    .line 161
    :cond_18
    :goto_16
    check-cast v7, Ljava/lang/String;

    move-object v14, v7

    goto :goto_17

    :cond_19
    move-object v14, v3

    .line 46
    :goto_17
    iget-object v7, v0, Lo/GridLayoutAnimationController;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v7, :cond_1c

    check-cast v7, Lcom/netflix/android/moneyball/GetField;

    move-object v8, v0

    check-cast v8, Lo/TextClassificationSessionId;

    const-string v11, "nextAction"

    .line 162
    invoke-interface {v7, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v7

    .line 163
    move-object v12, v3

    check-cast v12, Lorg/json/JSONObject;

    if-nez v7, :cond_1a

    .line 166
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v6, v11, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_18
    move-object v7, v3

    goto :goto_19

    .line 169
    :cond_1a
    instance-of v15, v7, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v15, :cond_1b

    .line 170
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v5, v11, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_18

    .line 174
    :cond_1b
    :goto_19
    check-cast v7, Lcom/netflix/android/moneyball/fields/ActionField;

    goto :goto_1a

    :cond_1c
    move-object v7, v3

    .line 47
    :goto_1a
    iget-object v8, v0, Lo/GridLayoutAnimationController;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v8, :cond_1f

    check-cast v8, Lcom/netflix/android/moneyball/GetField;

    move-object v11, v0

    check-cast v11, Lo/TextClassificationSessionId;

    const-string v12, "prevAction"

    .line 175
    invoke-interface {v8, v12}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v8

    .line 176
    move-object v15, v3

    check-cast v15, Lorg/json/JSONObject;

    if-nez v8, :cond_1d

    .line 179
    invoke-static {v11}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v8

    invoke-virtual {v8, v6, v12, v15}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1b
    move-object v8, v3

    goto :goto_1c

    .line 182
    :cond_1d
    instance-of v4, v8, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v4, :cond_1e

    .line 183
    invoke-static {v11}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v5, v12, v15}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1b

    .line 187
    :cond_1e
    :goto_1c
    move-object v4, v8

    check-cast v4, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v8, v4

    goto :goto_1d

    :cond_1f
    move-object v8, v3

    .line 48
    :goto_1d
    iget-object v4, v0, Lo/GridLayoutAnimationController;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v4, :cond_24

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v11, v0

    check-cast v11, Lo/TextClassificationSessionId;

    move-object v12, v3

    check-cast v12, Lorg/json/JSONObject;

    .line 188
    invoke-interface {v4, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1e

    :cond_20
    move-object v4, v3

    :goto_1e
    if-nez v4, :cond_22

    if-eqz v17, :cond_21

    .line 192
    invoke-static {v11}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v6, v2, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_21
    :goto_1f
    move-object v4, v3

    goto :goto_20

    .line 195
    :cond_22
    instance-of v15, v4, Ljava/lang/String;

    if-nez v15, :cond_23

    if-eqz v17, :cond_21

    .line 196
    invoke-static {v11}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v5, v2, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1f

    .line 200
    :cond_23
    :goto_20
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    move-object v15, v2

    goto :goto_21

    :cond_24
    move-object v15, v3

    .line 52
    :goto_21
    iget-object v2, v0, Lo/GridLayoutAnimationController;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_2a

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v11, "emvco3dsAuthenticationRequestToken"

    move-object v12, v3

    check-cast v12, Lorg/json/JSONObject;

    .line 201
    invoke-interface {v2, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_22

    :cond_25
    move-object v2, v3

    :goto_22
    if-nez v2, :cond_27

    if-eqz v17, :cond_26

    .line 205
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v6, v11, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_26
    move-object v2, v3

    goto :goto_23

    .line 208
    :cond_27
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_29

    if-eqz v17, :cond_28

    .line 209
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v5, v11, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_28
    const/4 v2, 0x0

    .line 213
    :cond_29
    :goto_23
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    goto :goto_24

    :cond_2a
    const/4 v3, 0x0

    .line 57
    :goto_24
    iget-object v2, v0, Lo/GridLayoutAnimationController;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_2e

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v11, "is3DSCharge"

    move-object/from16 v18, v3

    const/4 v12, 0x0

    move-object v3, v12

    check-cast v3, Lorg/json/JSONObject;

    .line 214
    invoke-interface {v2, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_25

    :cond_2b
    move-object v2, v12

    :goto_25
    if-nez v2, :cond_2c

    .line 218
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v6, v11, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_26
    move-object v2, v12

    goto :goto_27

    .line 221
    :cond_2c
    instance-of v6, v2, Ljava/lang/Boolean;

    if-nez v6, :cond_2d

    .line 222
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v5, v11, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_26

    .line 226
    :cond_2d
    :goto_27
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v11, v4

    goto :goto_28

    :cond_2e
    move-object/from16 v18, v3

    const/4 v12, 0x0

    :cond_2f
    const/4 v11, 0x1

    .line 59
    :goto_28
    iget-object v2, v0, Lo/GridLayoutAnimationController;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    :cond_30
    move-object v3, v12

    :goto_29
    const-string v2, "verifyCardEditPaymentContext"

    invoke-static {v3, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 37
    new-instance v2, Lo/CycleInterpolator;

    move-object v5, v2

    move v6, v1

    move-object/from16 v16, v18

    invoke-direct/range {v5 .. v17}, Lo/CycleInterpolator;-><init>(ZLcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method

.method public final c(Landroidx/fragment/app/Fragment;)Lo/ClipRectAnimation;
    .locals 12

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lo/ClipRectAnimation;

    .line 65
    iget-object v2, p0, Lo/GridLayoutAnimationController;->b:Lo/TextClassifierImpl;

    .line 66
    iget-object v1, p0, Lo/GridLayoutAnimationController;->i:Lo/SuggestionService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v3}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v3

    .line 69
    iget-object v1, p0, Lo/GridLayoutAnimationController;->c:Lo/Deprecated$ActionBar;

    .line 67
    invoke-static {p1, v1}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    .line 70
    const-class v1, Lo/Interpolator;

    invoke-virtual {p1, v1}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v1, "ViewModelProviders.of(\n \u2026ifecycleData::class.java)"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lo/Interpolator;

    .line 71
    new-instance p1, Lo/GenerateLinksLogger;

    .line 72
    iget-object v1, p0, Lo/GridLayoutAnimationController;->a:Lo/TextClassificationManager;

    .line 73
    sget-object v5, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModelInitializer$createVerifyCardViewModel$1;->b:Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModelInitializer$createVerifyCardViewModel$1;

    check-cast v5, Lo/alB;

    .line 74
    sget-object v6, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModelInitializer$createVerifyCardViewModel$2;->d:Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModelInitializer$createVerifyCardViewModel$2;

    check-cast v6, Lo/alB;

    .line 71
    invoke-direct {p1, v1, v5, v6}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    move-object v5, p1

    check-cast v5, Lo/TextClassificationSessionFactory;

    .line 75
    new-instance p1, Lo/GenerateLinksLogger;

    iget-object v7, p0, Lo/GridLayoutAnimationController;->a:Lo/TextClassificationManager;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModelInitializer$createVerifyCardViewModel$3;->a:Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModelInitializer$createVerifyCardViewModel$3;

    move-object v9, v1

    check-cast v9, Lo/alB;

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    move-object v6, p1

    check-cast v6, Lo/TextClassificationSessionFactory;

    .line 76
    iget-object v7, p0, Lo/GridLayoutAnimationController;->d:Lo/InputBinding;

    .line 77
    iget-object v8, p0, Lo/GridLayoutAnimationController;->g:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lo/GridLayoutAnimationController;->a()Lo/CycleInterpolator;

    move-result-object v9

    move-object v1, v0

    .line 64
    invoke-direct/range {v1 .. v9}, Lo/ClipRectAnimation;-><init>(Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/Interpolator;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/InputBinding;Ljava/lang/String;Lo/CycleInterpolator;)V

    return-object v0
.end method
