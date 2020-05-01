.class public final Lo/ScrollingMovementMethod;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final c:Lo/TextToSpeechService;

.field private final d:Lo/InputMethod;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextToSpeechService;Lo/InputMethod;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputFieldFactory"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formChangeListenerFactory"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/ScrollingMovementMethod;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/ScrollingMovementMethod;->c:Lo/TextToSpeechService;

    iput-object p4, p0, Lo/ScrollingMovementMethod;->d:Lo/InputMethod;

    return-void
.end method

.method private final b(Lo/AutoGrowArray;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Lo/AutoGrowArray;->b()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/BooleanField;->getData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "sortOrder"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public final d(Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;Lo/InputMethodSession;)Lo/NumberKeyListener;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "pageKey"

    invoke-static {v2, v4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "termsOfUse"

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 26
    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    .line 99
    invoke-interface {v1, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v6

    .line 100
    move-object v7, v5

    check-cast v7, Lorg/json/JSONObject;

    if-nez v6, :cond_0

    :goto_0
    move-object v6, v5

    goto :goto_1

    .line 106
    :cond_0
    instance-of v7, v6, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez v7, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    :goto_1
    check-cast v6, Lcom/netflix/android/moneyball/fields/BooleanField;

    goto :goto_2

    :cond_2
    move-object v6, v5

    :goto_2
    const-string v7, "personalInfoThirdParties"

    if-eqz v1, :cond_5

    .line 28
    move-object v8, v0

    check-cast v8, Lo/TextClassificationSessionId;

    .line 113
    invoke-interface {v1, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v8

    .line 114
    move-object v9, v5

    check-cast v9, Lorg/json/JSONObject;

    if-nez v8, :cond_3

    :goto_3
    move-object v8, v5

    goto :goto_4

    .line 120
    :cond_3
    instance-of v9, v8, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez v9, :cond_4

    goto :goto_3

    .line 125
    :cond_4
    :goto_4
    check-cast v8, Lcom/netflix/android/moneyball/fields/BooleanField;

    goto :goto_5

    :cond_5
    move-object v8, v5

    :goto_5
    const-string v9, "personalInfoAbroad"

    if-eqz v1, :cond_8

    .line 30
    move-object v10, v0

    check-cast v10, Lo/TextClassificationSessionId;

    .line 127
    invoke-interface {v1, v9}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v10

    .line 128
    move-object v11, v5

    check-cast v11, Lorg/json/JSONObject;

    if-nez v10, :cond_6

    :goto_6
    move-object v10, v5

    goto :goto_7

    .line 134
    :cond_6
    instance-of v11, v10, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez v11, :cond_7

    goto :goto_6

    .line 139
    :cond_7
    :goto_7
    check-cast v10, Lcom/netflix/android/moneyball/fields/BooleanField;

    goto :goto_8

    :cond_8
    move-object v10, v5

    :goto_8
    const-string v11, "personalInfoGateway"

    if-eqz v1, :cond_b

    .line 31
    move-object v12, v0

    check-cast v12, Lo/TextClassificationSessionId;

    .line 141
    invoke-interface {v1, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v12

    .line 142
    move-object v13, v5

    check-cast v13, Lorg/json/JSONObject;

    if-nez v12, :cond_9

    :goto_9
    move-object v12, v5

    goto :goto_a

    .line 148
    :cond_9
    instance-of v13, v12, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez v13, :cond_a

    goto :goto_9

    .line 153
    :cond_a
    :goto_a
    check-cast v12, Lcom/netflix/android/moneyball/fields/BooleanField;

    goto :goto_b

    :cond_b
    move-object v12, v5

    :goto_b
    if-eqz v1, :cond_f

    .line 33
    move-object v13, v0

    check-cast v13, Lo/TextClassificationSessionId;

    .line 154
    move-object v13, v5

    check-cast v13, Lorg/json/JSONObject;

    const-string v13, "termsOfUseMinimumVerificationAge"

    .line 155
    invoke-interface {v1, v13}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v13

    goto :goto_c

    :cond_c
    move-object v13, v5

    :goto_c
    if-nez v13, :cond_d

    :goto_d
    move-object v13, v5

    goto :goto_e

    .line 162
    :cond_d
    instance-of v14, v13, Ljava/lang/String;

    if-nez v14, :cond_e

    goto :goto_d

    .line 167
    :cond_e
    :goto_e
    check-cast v13, Ljava/lang/String;

    move-object/from16 v26, v13

    goto :goto_f

    :cond_f
    move-object/from16 v26, v5

    :goto_f
    if-eqz v6, :cond_10

    .line 35
    iget-object v13, v0, Lo/ScrollingMovementMethod;->c:Lo/TextToSpeechService;

    .line 37
    iget-object v14, v0, Lo/ScrollingMovementMethod;->d:Lo/InputMethod;

    invoke-virtual {v14, v2}, Lo/InputMethod;->b(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v14

    check-cast v14, Lo/TextToSpeech;

    .line 35
    invoke-virtual {v13, v6, v14}, Lo/TextToSpeechService;->b(Lcom/netflix/android/moneyball/fields/BooleanField;Lo/TextToSpeech;)Lo/AutoGrowArray;

    move-result-object v13

    move-object v15, v13

    goto :goto_10

    :cond_10
    move-object v15, v5

    :goto_10
    if-eqz v8, :cond_11

    .line 39
    iget-object v13, v0, Lo/ScrollingMovementMethod;->c:Lo/TextToSpeechService;

    .line 41
    iget-object v14, v0, Lo/ScrollingMovementMethod;->d:Lo/InputMethod;

    invoke-virtual {v14, v2}, Lo/InputMethod;->b(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v14

    check-cast v14, Lo/TextToSpeech;

    .line 39
    invoke-virtual {v13, v8, v14}, Lo/TextToSpeechService;->b(Lcom/netflix/android/moneyball/fields/BooleanField;Lo/TextToSpeech;)Lo/AutoGrowArray;

    move-result-object v13

    goto :goto_11

    :cond_11
    move-object v13, v5

    :goto_11
    if-eqz v10, :cond_12

    .line 44
    iget-object v14, v0, Lo/ScrollingMovementMethod;->c:Lo/TextToSpeechService;

    .line 46
    iget-object v5, v0, Lo/ScrollingMovementMethod;->d:Lo/InputMethod;

    invoke-virtual {v5, v2}, Lo/InputMethod;->b(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v5

    check-cast v5, Lo/TextToSpeech;

    .line 44
    invoke-virtual {v14, v10, v5}, Lo/TextToSpeechService;->b(Lcom/netflix/android/moneyball/fields/BooleanField;Lo/TextToSpeech;)Lo/AutoGrowArray;

    move-result-object v5

    goto :goto_12

    :cond_12
    const/4 v5, 0x0

    :goto_12
    if-eqz v12, :cond_13

    .line 48
    iget-object v14, v0, Lo/ScrollingMovementMethod;->c:Lo/TextToSpeechService;

    .line 50
    iget-object v1, v0, Lo/ScrollingMovementMethod;->d:Lo/InputMethod;

    invoke-virtual {v1, v2}, Lo/InputMethod;->b(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    .line 48
    invoke-virtual {v14, v12, v1}, Lo/TextToSpeechService;->b(Lcom/netflix/android/moneyball/fields/BooleanField;Lo/TextToSpeech;)Lo/AutoGrowArray;

    move-result-object v1

    goto :goto_13

    :cond_13
    const/4 v1, 0x0

    .line 53
    :goto_13
    iget-object v14, v0, Lo/ScrollingMovementMethod;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v14, :cond_14

    invoke-virtual {v0, v14}, Lo/ScrollingMovementMethod;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v14

    goto :goto_14

    :cond_14
    const/4 v14, 0x0

    :goto_14
    if-eqz v14, :cond_18

    move-object/from16 v17, v12

    .line 54
    move-object v12, v14

    check-cast v12, Lcom/netflix/android/moneyball/GetField;

    move-object/from16 v18, v0

    check-cast v18, Lo/TextClassificationSessionId;

    const/16 v16, 0x0

    .line 168
    move-object/from16 v18, v16

    check-cast v18, Lorg/json/JSONObject;

    move-object/from16 v19, v10

    const-string v10, "billingFrequency"

    .line 169
    invoke-interface {v12, v10}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v10

    if-eqz v10, :cond_15

    invoke-virtual {v10}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v10

    goto :goto_15

    :cond_15
    const/4 v10, 0x0

    :goto_15
    if-nez v10, :cond_16

    :goto_16
    const/4 v10, 0x0

    goto :goto_17

    .line 176
    :cond_16
    instance-of v12, v10, Ljava/lang/String;

    if-nez v12, :cond_17

    goto :goto_16

    .line 181
    :cond_17
    :goto_17
    check-cast v10, Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v19, v10

    move-object/from16 v17, v12

    const/4 v10, 0x0

    :goto_18
    if-eqz v14, :cond_1c

    .line 55
    move-object v12, v14

    check-cast v12, Lcom/netflix/android/moneyball/GetField;

    move-object/from16 v18, v0

    check-cast v18, Lo/TextClassificationSessionId;

    const/16 v16, 0x0

    .line 182
    move-object/from16 v18, v16

    check-cast v18, Lorg/json/JSONObject;

    move-object/from16 v20, v14

    const-string v14, "planDuration"

    .line 183
    invoke-interface {v12, v14}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v12

    if-eqz v12, :cond_19

    invoke-virtual {v12}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v12

    goto :goto_19

    :cond_19
    const/4 v12, 0x0

    :goto_19
    if-nez v12, :cond_1a

    :goto_1a
    const/4 v12, 0x0

    goto :goto_1b

    .line 190
    :cond_1a
    instance-of v14, v12, Ljava/lang/String;

    if-nez v14, :cond_1b

    goto :goto_1a

    .line 195
    :cond_1b
    :goto_1b
    check-cast v12, Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v20, v14

    const/4 v12, 0x0

    :goto_1c
    if-eqz v10, :cond_1d

    move-object/from16 v21, v10

    goto :goto_1d

    :cond_1d
    move-object/from16 v21, v12

    .line 58
    :goto_1d
    invoke-direct {v0, v15}, Lo/ScrollingMovementMethod;->b(Lo/AutoGrowArray;)I

    move-result v10

    .line 59
    invoke-direct {v0, v5}, Lo/ScrollingMovementMethod;->b(Lo/AutoGrowArray;)I

    move-result v12

    .line 60
    invoke-direct {v0, v1}, Lo/ScrollingMovementMethod;->b(Lo/AutoGrowArray;)I

    move-result v14

    .line 61
    invoke-direct {v0, v13}, Lo/ScrollingMovementMethod;->b(Lo/AutoGrowArray;)I

    move-result v18

    const/16 v22, 0x1

    if-eqz v3, :cond_22

    move-object/from16 v23, v13

    .line 64
    invoke-interface {v3, v2, v4}, Lo/InputMethodSession;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v24, v1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v13, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 65
    invoke-interface {v3, v2, v7}, Lo/InputMethodSession;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v7, v13}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 66
    invoke-interface {v3, v2, v9}, Lo/InputMethodSession;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v9, v13}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 67
    invoke-interface {v3, v2, v11}, Lo/InputMethodSession;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v6, :cond_1e

    .line 68
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/netflix/android/moneyball/fields/BooleanField;->setValue(Ljava/lang/Object;)V

    :cond_1e
    if-eqz v8, :cond_1f

    .line 69
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/netflix/android/moneyball/fields/BooleanField;->setValue(Ljava/lang/Object;)V

    :cond_1f
    if-eqz v19, :cond_20

    .line 70
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v3, v19

    invoke-virtual {v3, v1}, Lcom/netflix/android/moneyball/fields/BooleanField;->setValue(Ljava/lang/Object;)V

    :cond_20
    if-eqz v17, :cond_21

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v2, v1}, Lcom/netflix/android/moneyball/fields/BooleanField;->setValue(Ljava/lang/Object;)V

    .line 72
    :cond_21
    sget-object v1, Lo/akj;->a:Lo/akj;

    goto :goto_1e

    :cond_22
    move-object/from16 v24, v1

    move-object/from16 v23, v13

    .line 79
    :goto_1e
    iget-object v1, v0, Lo/ScrollingMovementMethod;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_26

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    const/4 v3, 0x0

    .line 196
    move-object v2, v3

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "hasFreeTrial"

    .line 197
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1f

    :cond_23
    const/4 v1, 0x0

    :goto_1f
    if-nez v1, :cond_24

    :goto_20
    const/4 v1, 0x0

    goto :goto_21

    .line 204
    :cond_24
    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_25

    goto :goto_20

    .line 209
    :cond_25
    :goto_21
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_22

    :cond_26
    const/4 v1, 0x0

    :goto_22
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v20, :cond_2a

    .line 80
    move-object/from16 v1, v20

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v3, "planPrice"

    const/4 v6, 0x0

    move-object v7, v6

    check-cast v7, Lorg/json/JSONObject;

    .line 210
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_23

    :cond_27
    const/4 v1, 0x0

    :goto_23
    if-nez v1, :cond_28

    .line 214
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    const-string v2, "SignupNativeFieldError"

    invoke-virtual {v1, v2, v3, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_24
    const/4 v1, 0x0

    goto :goto_25

    .line 217
    :cond_28
    instance-of v6, v1, Ljava/lang/String;

    if-nez v6, :cond_29

    .line 218
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    const-string v2, "SignupNativeDataManipulationError"

    invoke-virtual {v1, v2, v3, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_24

    .line 222
    :cond_29
    :goto_25
    check-cast v1, Ljava/lang/String;

    move-object/from16 v20, v1

    goto :goto_26

    :cond_2a
    const/16 v20, 0x0

    .line 82
    :goto_26
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 83
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 84
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 85
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v3, p1

    if-eqz v3, :cond_2d

    .line 87
    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v6, "hasAcceptedTermsOfUse"

    .line 224
    invoke-interface {v3, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v6

    const/4 v7, 0x0

    .line 225
    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    if-nez v6, :cond_2b

    :goto_27
    const/4 v6, 0x0

    goto :goto_28

    .line 231
    :cond_2b
    instance-of v7, v6, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez v7, :cond_2c

    goto :goto_27

    .line 236
    :cond_2c
    :goto_28
    check-cast v6, Lcom/netflix/android/moneyball/fields/BooleanField;

    move-object/from16 v27, v6

    goto :goto_29

    :cond_2d
    const/16 v27, 0x0

    :goto_29
    if-eqz v3, :cond_30

    .line 88
    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    .line 238
    invoke-interface {v3, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    const/16 v16, 0x0

    .line 239
    move-object/from16 v4, v16

    check-cast v4, Lorg/json/JSONObject;

    if-nez v3, :cond_2e

    goto :goto_2a

    .line 245
    :cond_2e
    instance-of v4, v3, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez v4, :cond_2f

    goto :goto_2a

    :cond_2f
    move-object/from16 v16, v3

    .line 250
    :goto_2a
    move-object/from16 v3, v16

    check-cast v3, Lcom/netflix/android/moneyball/fields/BooleanField;

    move-object/from16 v28, v3

    goto :goto_2b

    :cond_30
    const/16 v16, 0x0

    move-object/from16 v28, v16

    .line 74
    :goto_2b
    new-instance v3, Lo/NumberKeyListener;

    move-object v14, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v24

    move-object/from16 v18, v23

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v28}, Lo/NumberKeyListener;-><init>(Lo/AutoGrowArray;Lo/AutoGrowArray;Lo/AutoGrowArray;Lo/AutoGrowArray;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/BooleanField;Lcom/netflix/android/moneyball/fields/BooleanField;)V

    return-object v3
.end method
