.class public final Lo/InputQueue;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final b:Lo/DrawableMarginSpan;

.field private final e:Lo/InputBinding;


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

    iput-object p1, p0, Lo/InputQueue;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/InputQueue;->e:Lo/InputBinding;

    iput-object p4, p0, Lo/InputQueue;->b:Lo/DrawableMarginSpan;

    return-void
.end method


# virtual methods
.method public final b()Lo/KeyCharacterMap;
    .locals 6

    .line 52
    new-instance v0, Lo/KeyCharacterMap;

    .line 53
    iget-object v1, p0, Lo/InputQueue;->e:Lo/InputBinding;

    .line 54
    iget-object v2, p0, Lo/InputQueue;->b:Lo/DrawableMarginSpan;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lo/DrawableMarginSpan;->c(Lo/DrawableMarginSpan;ZILjava/lang/Object;)Lo/DynamicDrawableSpan;

    move-result-object v2

    .line 55
    invoke-virtual {p0}, Lo/InputQueue;->d()Lo/MagnificationSpec;

    move-result-object v3

    .line 52
    invoke-direct {v0, v1, v2, v3}, Lo/KeyCharacterMap;-><init>(Lo/InputBinding;Lo/DynamicDrawableSpan;Lo/MagnificationSpec;)V

    return-object v0
.end method

.method public final d()Lo/MagnificationSpec;
    .locals 24

    move-object/from16 v0, p0

    .line 20
    iget-object v1, v0, Lo/InputQueue;->a:Lcom/netflix/android/moneyball/FlowMode;

    const-string v2, "SignupNativeDataManipulationError"

    const-string v3, "SignupNativeFieldError"

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v6, "recognizedFormerMember"

    move-object v7, v4

    check-cast v7, Lorg/json/JSONObject;

    .line 60
    invoke-interface {v1, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    if-nez v1, :cond_1

    .line 64
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v3, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v1, v4

    goto :goto_2

    .line 67
    :cond_1
    instance-of v8, v1, Ljava/lang/Boolean;

    if-nez v8, :cond_2

    .line 68
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 72
    :cond_2
    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object v1, v4

    :goto_3
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 26
    iget-object v1, v0, Lo/InputQueue;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_7

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v7, "recognizedNeverMember"

    .line 23
    move-object v9, v4

    check-cast v9, Lorg/json/JSONObject;

    .line 73
    invoke-interface {v1, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v4

    :goto_4
    if-nez v1, :cond_5

    .line 77
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v3, v7, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_5
    move-object v1, v4

    goto :goto_6

    .line 80
    :cond_5
    instance-of v10, v1, Ljava/lang/Boolean;

    if-nez v10, :cond_6

    .line 81
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v7, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 85
    :cond_6
    :goto_6
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object v1, v4

    :goto_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 30
    iget-object v1, v0, Lo/InputQueue;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_b

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v7, "hasFreeTrial"

    .line 27
    move-object v10, v4

    check-cast v10, Lorg/json/JSONObject;

    .line 86
    invoke-interface {v1, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    :cond_8
    move-object v1, v4

    :goto_8
    if-nez v1, :cond_9

    .line 90
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v3, v7, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_9
    move-object v1, v4

    goto :goto_a

    .line 93
    :cond_9
    instance-of v11, v1, Ljava/lang/Boolean;

    if-nez v11, :cond_a

    .line 94
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v7, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_9

    .line 98
    :cond_a
    :goto_a
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object v1, v4

    :goto_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 31
    iget-object v1, v0, Lo/InputQueue;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_f

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    .line 99
    move-object v6, v4

    check-cast v6, Lorg/json/JSONObject;

    const-string v6, "hasEligibleOffer"

    .line 100
    invoke-interface {v1, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    :cond_c
    move-object v1, v4

    :goto_c
    if-nez v1, :cond_d

    :goto_d
    move-object v1, v4

    goto :goto_e

    .line 107
    :cond_d
    instance-of v6, v1, Ljava/lang/Boolean;

    if-nez v6, :cond_e

    goto :goto_d

    .line 112
    :cond_e
    :goto_e
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_f

    :cond_f
    move-object v1, v4

    :goto_f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 32
    iget-object v1, v0, Lo/InputQueue;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_13

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 113
    move-object v5, v4

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "offerType"

    .line 114
    invoke-interface {v1, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    :cond_10
    move-object v1, v4

    :goto_10
    if-nez v1, :cond_11

    :goto_11
    move-object v1, v4

    goto :goto_12

    .line 121
    :cond_11
    instance-of v5, v1, Ljava/lang/String;

    if-nez v5, :cond_12

    goto :goto_11

    .line 126
    :cond_12
    :goto_12
    check-cast v1, Ljava/lang/String;

    move-object v12, v1

    goto :goto_13

    :cond_13
    move-object v12, v4

    .line 33
    :goto_13
    iget-object v1, v0, Lo/InputQueue;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_17

    invoke-virtual {v0, v1}, Lo/InputQueue;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    if-eqz v1, :cond_17

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 127
    move-object v5, v4

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "offerPrice"

    .line 128
    invoke-interface {v1, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_14

    :cond_14
    move-object v1, v4

    :goto_14
    if-nez v1, :cond_15

    :goto_15
    move-object v1, v4

    goto :goto_16

    .line 135
    :cond_15
    instance-of v5, v1, Ljava/lang/String;

    if-nez v5, :cond_16

    goto :goto_15

    .line 140
    :cond_16
    :goto_16
    check-cast v1, Ljava/lang/String;

    move-object v13, v1

    goto :goto_17

    :cond_17
    move-object v13, v4

    .line 34
    :goto_17
    iget-object v1, v0, Lo/InputQueue;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1c

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v6, "firstName"

    move-object v7, v4

    check-cast v7, Lorg/json/JSONObject;

    .line 141
    invoke-interface {v1, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_18

    :cond_18
    move-object v1, v4

    :goto_18
    if-nez v1, :cond_1a

    if-eqz v8, :cond_19

    .line 145
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v3, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_19
    :goto_19
    move-object v1, v4

    goto :goto_1a

    .line 148
    :cond_1a
    instance-of v14, v1, Ljava/lang/String;

    if-nez v14, :cond_1b

    if-eqz v8, :cond_19

    .line 149
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_19

    .line 153
    :cond_1b
    :goto_1a
    check-cast v1, Ljava/lang/String;

    move-object v14, v1

    goto :goto_1b

    :cond_1c
    move-object v14, v4

    .line 45
    :goto_1b
    iget-object v1, v0, Lo/InputQueue;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_22

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v6, "adaptiveFields"

    const-string v7, "planSelectionContextValueProps"

    const-string v15, "messages"

    .line 42
    filled-new-array {v6, v7, v15}, [Ljava/lang/String;

    move-result-object v6

    .line 39
    invoke-static {v6}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 154
    invoke-static {v1, v6}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    .line 155
    move-object v15, v6

    check-cast v15, Ljava/lang/Iterable;

    const-string v6, ","

    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/CharSequence;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3e

    const/16 v23, 0x0

    invoke-static/range {v15 .. v23}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    check-cast v7, Lorg/json/JSONObject;

    if-nez v1, :cond_1d

    .line 158
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v3, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1c
    move-object v1, v4

    goto :goto_1d

    .line 161
    :cond_1d
    instance-of v3, v1, Ljava/util/List;

    if-nez v3, :cond_1e

    .line 162
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1c

    .line 166
    :cond_1e
    :goto_1d
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_22

    check-cast v1, Ljava/lang/Iterable;

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 176
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 175
    check-cast v3, Ljava/util/Map;

    const-string v5, "message"

    .line 46
    invoke-static {v3, v5}, Lo/akI;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/String;

    if-nez v5, :cond_20

    move-object v3, v4

    :cond_20
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1f

    .line 175
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 178
    :cond_21
    move-object v4, v2

    check-cast v4, Ljava/util/List;

    :cond_22
    move-object v15, v4

    .line 21
    new-instance v1, Lo/MagnificationSpec;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lo/MagnificationSpec;-><init>(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method
