.class public final Lo/HideReturnsTransformationMethod;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final c:Lcom/netflix/android/moneyball/FlowMode;

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

    .line 15
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/HideReturnsTransformationMethod;->c:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/HideReturnsTransformationMethod;->d:Lo/InputBinding;

    return-void
.end method


# virtual methods
.method public final a()Lo/DigitsKeyListener;
    .locals 3

    .line 44
    new-instance v0, Lo/DigitsKeyListener;

    iget-object v1, p0, Lo/HideReturnsTransformationMethod;->d:Lo/InputBinding;

    invoke-virtual {p0}, Lo/HideReturnsTransformationMethod;->d()Lo/DateKeyListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/DigitsKeyListener;-><init>(Lo/InputBinding;Lo/DateKeyListener;)V

    return-object v0
.end method

.method public final d()Lo/DateKeyListener;
    .locals 21

    move-object/from16 v0, p0

    .line 19
    iget-object v1, v0, Lo/HideReturnsTransformationMethod;->c:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    const/4 v3, 0x0

    const-string v4, "giftOption"

    invoke-virtual {v0, v1, v4, v3}, Lo/HideReturnsTransformationMethod;->c(Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;Z)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 20
    :goto_0
    iget-object v3, v0, Lo/HideReturnsTransformationMethod;->c:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_1

    const-string v4, "giftCodePlan"

    invoke-virtual {v3, v4}, Lcom/netflix/android/moneyball/FlowMode;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 21
    :goto_1
    iget-object v4, v0, Lo/HideReturnsTransformationMethod;->c:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v4, :cond_5

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 47
    move-object v5, v2

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "planOverriddenByGiftCode"

    .line 48
    invoke-interface {v4, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    if-nez v4, :cond_3

    :goto_3
    move-object v4, v2

    goto :goto_4

    .line 55
    :cond_3
    instance-of v5, v4, Ljava/lang/Boolean;

    if-nez v5, :cond_4

    goto :goto_3

    .line 60
    :cond_4
    :goto_4
    check-cast v4, Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object v4, v2

    :goto_5
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v1, :cond_9

    .line 23
    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v0

    check-cast v4, Lo/TextClassificationSessionId;

    .line 61
    move-object v4, v2

    check-cast v4, Lorg/json/JSONObject;

    const-string v4, "giftAmount"

    .line 62
    invoke-interface {v1, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, v2

    :goto_6
    if-nez v1, :cond_7

    :goto_7
    move-object v1, v2

    goto :goto_8

    .line 69
    :cond_7
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_8

    goto :goto_7

    .line 74
    :cond_8
    :goto_8
    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    goto :goto_9

    :cond_9
    move-object v8, v2

    .line 25
    :goto_9
    iget-object v1, v0, Lo/HideReturnsTransformationMethod;->c:Lcom/netflix/android/moneyball/FlowMode;

    const-string v4, "SignupNativeDataManipulationError"

    const-string v6, "SignupNativeFieldError"

    if-eqz v1, :cond_e

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    const-string v10, "giftCodeDurationUnit"

    move-object v11, v2

    check-cast v11, Lorg/json/JSONObject;

    .line 75
    invoke-interface {v1, v10}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_a

    :cond_a
    move-object v1, v2

    :goto_a
    if-nez v1, :cond_c

    if-eqz v9, :cond_b

    .line 79
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v6, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_b
    :goto_b
    move-object v1, v2

    goto :goto_c

    .line 82
    :cond_c
    instance-of v12, v1, Ljava/lang/String;

    if-nez v12, :cond_d

    if-eqz v9, :cond_b

    .line 83
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v4, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_b

    .line 87
    :cond_d
    :goto_c
    check-cast v1, Ljava/lang/String;

    move-object v10, v1

    goto :goto_d

    :cond_e
    move-object v10, v2

    .line 32
    :goto_d
    iget-object v1, v0, Lo/HideReturnsTransformationMethod;->c:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_13

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    const-string v11, "giftCodeDuration"

    .line 29
    move-object v12, v2

    check-cast v12, Lorg/json/JSONObject;

    .line 88
    invoke-interface {v1, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    :cond_f
    move-object v1, v2

    :goto_e
    if-nez v1, :cond_11

    if-eqz v9, :cond_10

    .line 92
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v6, v11, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_10
    :goto_f
    move-object v1, v2

    goto :goto_10

    .line 95
    :cond_11
    instance-of v13, v1, Ljava/lang/Long;

    if-nez v13, :cond_12

    if-eqz v9, :cond_10

    .line 96
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v4, v11, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_f

    .line 100
    :cond_12
    :goto_10
    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    long-to-int v1, v11

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v11, v1

    goto :goto_11

    :cond_13
    move-object v11, v2

    :goto_11
    if-eqz v3, :cond_17

    .line 33
    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_17

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v7, "planName"

    const-string v12, "value"

    .line 36
    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-static {v7}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 101
    invoke-static {v1, v7}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    .line 102
    move-object v12, v7

    check-cast v12, Ljava/lang/Iterable;

    const-string v7, ","

    move-object v13, v7

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3e

    const/16 v20, 0x0

    invoke-static/range {v12 .. v20}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v12, v2

    check-cast v12, Lorg/json/JSONObject;

    if-nez v1, :cond_15

    if-eqz v9, :cond_14

    .line 105
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v6, v7, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_14
    :goto_12
    move-object v1, v2

    goto :goto_13

    .line 108
    :cond_15
    instance-of v6, v1, Ljava/lang/String;

    if-nez v6, :cond_16

    if-eqz v9, :cond_14

    .line 109
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v4, v7, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_12

    .line 113
    :cond_16
    :goto_13
    check-cast v1, Ljava/lang/String;

    move-object v12, v1

    goto :goto_14

    :cond_17
    move-object v12, v2

    .line 39
    :goto_14
    iget-object v1, v0, Lo/HideReturnsTransformationMethod;->c:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1b

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 114
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "hasFreeTrial"

    .line 115
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_15

    :cond_18
    move-object v1, v2

    :goto_15
    if-nez v1, :cond_19

    goto :goto_16

    .line 122
    :cond_19
    instance-of v3, v1, Ljava/lang/Boolean;

    if-nez v3, :cond_1a

    goto :goto_16

    :cond_1a
    move-object v2, v1

    .line 127
    :goto_16
    check-cast v2, Ljava/lang/Boolean;

    :cond_1b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .line 22
    new-instance v1, Lo/DateKeyListener;

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lo/DateKeyListener;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)V

    return-object v1
.end method
