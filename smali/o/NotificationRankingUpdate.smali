.class public final Lo/NotificationRankingUpdate;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/InputBinding;

.field private final b:Lcom/netflix/android/moneyball/FlowMode;


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

    iput-object p1, p0, Lo/NotificationRankingUpdate;->b:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/NotificationRankingUpdate;->a:Lo/InputBinding;

    return-void
.end method


# virtual methods
.method public final c()Lo/NotificationStats;
    .locals 3

    .line 69
    new-instance v0, Lo/NotificationStats;

    iget-object v1, p0, Lo/NotificationRankingUpdate;->a:Lo/InputBinding;

    invoke-virtual {p0}, Lo/NotificationRankingUpdate;->d()Lo/Adjustment;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/NotificationStats;-><init>(Lo/InputBinding;Lo/Adjustment;)V

    return-object v0
.end method

.method public final d()Lo/Adjustment;
    .locals 31

    move-object/from16 v0, p0

    .line 19
    iget-object v1, v0, Lo/NotificationRankingUpdate;->b:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 72
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "planOverriddenByGiftCode"

    .line 73
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 80
    :cond_1
    instance-of v3, v1, Ljava/lang/Boolean;

    if-nez v3, :cond_2

    goto :goto_1

    .line 85
    :cond_2
    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "isPretax"

    const-string v5, "billingFrequency"

    const-string v6, "planPrice"

    const-string v7, "localizedPlanName"

    const-string v8, "offerType"

    const-string v9, "hasEligibleOffer"

    const-string v10, "hasFreeTrial"

    const-string v11, "changePlanAction"

    if-eqz v1, :cond_25

    .line 22
    iget-object v12, v0, Lo/NotificationRankingUpdate;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v12, :cond_4

    const-string v13, "giftCodePlan"

    invoke-virtual {v12, v13}, Lcom/netflix/android/moneyball/FlowMode;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v12

    goto :goto_4

    :cond_4
    move-object v12, v2

    .line 25
    :goto_4
    iget-object v13, v0, Lo/NotificationRankingUpdate;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v13, :cond_7

    check-cast v13, Lcom/netflix/android/moneyball/GetField;

    move-object v14, v0

    check-cast v14, Lo/TextClassificationSessionId;

    .line 87
    invoke-interface {v13, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v11

    .line 88
    move-object v13, v2

    check-cast v13, Lorg/json/JSONObject;

    if-nez v11, :cond_5

    :goto_5
    move-object v11, v2

    goto :goto_6

    .line 94
    :cond_5
    instance-of v13, v11, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v13, :cond_6

    goto :goto_5

    .line 99
    :cond_6
    :goto_6
    check-cast v11, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v14, v11

    goto :goto_7

    :cond_7
    move-object v14, v2

    .line 26
    :goto_7
    iget-object v11, v0, Lo/NotificationRankingUpdate;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v11, :cond_b

    check-cast v11, Lcom/netflix/android/moneyball/GetField;

    move-object v13, v0

    check-cast v13, Lo/TextClassificationSessionId;

    .line 100
    move-object v13, v2

    check-cast v13, Lorg/json/JSONObject;

    .line 101
    invoke-interface {v11, v10}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v10

    goto :goto_8

    :cond_8
    move-object v10, v2

    :goto_8
    if-nez v10, :cond_9

    :goto_9
    move-object v10, v2

    goto :goto_a

    .line 108
    :cond_9
    instance-of v11, v10, Ljava/lang/Boolean;

    if-nez v11, :cond_a

    goto :goto_9

    .line 113
    :cond_a
    :goto_a
    check-cast v10, Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object v10, v2

    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v10, v11}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    .line 27
    iget-object v10, v0, Lo/NotificationRankingUpdate;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v10, :cond_f

    check-cast v10, Lcom/netflix/android/moneyball/GetField;

    move-object v11, v0

    check-cast v11, Lo/TextClassificationSessionId;

    .line 114
    move-object v11, v2

    check-cast v11, Lorg/json/JSONObject;

    .line 115
    invoke-interface {v10, v9}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v9

    goto :goto_c

    :cond_c
    move-object v9, v2

    :goto_c
    if-nez v9, :cond_d

    :goto_d
    move-object v9, v2

    goto :goto_e

    .line 122
    :cond_d
    instance-of v10, v9, Ljava/lang/Boolean;

    if-nez v10, :cond_e

    goto :goto_d

    .line 127
    :cond_e
    :goto_e
    check-cast v9, Ljava/lang/Boolean;

    goto :goto_f

    :cond_f
    move-object v9, v2

    :goto_f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9, v10}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    .line 28
    iget-object v9, v0, Lo/NotificationRankingUpdate;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v9, :cond_13

    check-cast v9, Lcom/netflix/android/moneyball/GetField;

    move-object v10, v0

    check-cast v10, Lo/TextClassificationSessionId;

    .line 128
    move-object v10, v2

    check-cast v10, Lorg/json/JSONObject;

    .line 129
    invoke-interface {v9, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v8

    goto :goto_10

    :cond_10
    move-object v8, v2

    :goto_10
    if-nez v8, :cond_11

    :goto_11
    move-object v8, v2

    goto :goto_12

    .line 136
    :cond_11
    instance-of v9, v8, Ljava/lang/String;

    if-nez v9, :cond_12

    goto :goto_11

    .line 141
    :cond_12
    :goto_12
    check-cast v8, Ljava/lang/String;

    move-object/from16 v21, v8

    goto :goto_13

    :cond_13
    move-object/from16 v21, v2

    :goto_13
    const-string v8, "SignupNativeDataManipulationError"

    const-string v9, "SignupNativeFieldError"

    const-string v10, ","

    const-string v11, "value"

    if-eqz v12, :cond_18

    .line 29
    invoke-virtual {v12}, Lcom/netflix/android/moneyball/fields/Field;->getData()Ljava/util/Map;

    move-result-object v13

    if-eqz v13, :cond_18

    move-object v15, v0

    check-cast v15, Lo/TextClassificationSessionId;

    .line 32
    filled-new-array {v7, v11}, [Ljava/lang/String;

    move-result-object v7

    .line 30
    invoke-static {v7}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 142
    invoke-static {v13, v7}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    .line 143
    move-object/from16 v22, v7

    check-cast v22, Ljava/lang/Iterable;

    move-object/from16 v23, v10

    check-cast v23, Ljava/lang/CharSequence;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x3e

    const/16 v30, 0x0

    invoke-static/range {v22 .. v30}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    if-nez v13, :cond_14

    if-eqz v1, :cond_17

    .line 146
    invoke-static {v15}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v13

    invoke-virtual {v13, v9, v7, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_14

    .line 149
    :cond_14
    instance-of v2, v13, Ljava/lang/String;

    if-nez v2, :cond_16

    if-eqz v1, :cond_15

    .line 150
    invoke-static {v15}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v8, v7, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_15
    const/4 v2, 0x0

    goto :goto_14

    :cond_16
    move-object v2, v13

    .line 154
    :cond_17
    :goto_14
    check-cast v2, Ljava/lang/String;

    move-object/from16 v18, v2

    goto :goto_15

    :cond_18
    const/16 v18, 0x0

    :goto_15
    if-eqz v12, :cond_1c

    .line 35
    invoke-virtual {v12}, Lcom/netflix/android/moneyball/fields/Field;->getData()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1c

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 38
    filled-new-array {v6, v11}, [Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-static {v6}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 155
    invoke-static {v2, v6}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    .line 156
    move-object/from16 v22, v6

    check-cast v22, Ljava/lang/Iterable;

    move-object/from16 v23, v10

    check-cast v23, Ljava/lang/CharSequence;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x3e

    const/16 v30, 0x0

    invoke-static/range {v22 .. v30}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v13, v7

    check-cast v13, Lorg/json/JSONObject;

    if-nez v2, :cond_1a

    if-eqz v1, :cond_19

    .line 159
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v9, v6, v13}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_19
    :goto_16
    const/4 v2, 0x0

    goto :goto_17

    .line 162
    :cond_1a
    instance-of v7, v2, Ljava/lang/String;

    if-nez v7, :cond_1b

    if-eqz v1, :cond_19

    .line 163
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v8, v6, v13}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_16

    .line 167
    :cond_1b
    :goto_17
    check-cast v2, Ljava/lang/String;

    goto :goto_18

    :cond_1c
    const/4 v2, 0x0

    :goto_18
    if-eqz v12, :cond_20

    .line 41
    invoke-virtual {v12}, Lcom/netflix/android/moneyball/fields/Field;->getData()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_20

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    .line 44
    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-static {v5}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 168
    invoke-static {v3, v5}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    .line 169
    move-object/from16 v22, v5

    check-cast v22, Ljava/lang/Iterable;

    move-object/from16 v23, v10

    check-cast v23, Ljava/lang/CharSequence;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x3e

    const/16 v30, 0x0

    invoke-static/range {v22 .. v30}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v13, v7

    check-cast v13, Lorg/json/JSONObject;

    if-nez v3, :cond_1e

    if-eqz v1, :cond_1d

    .line 172
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v9, v5, v13}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1d
    :goto_19
    const/4 v3, 0x0

    goto :goto_1a

    .line 175
    :cond_1e
    instance-of v7, v3, Ljava/lang/String;

    if-nez v7, :cond_1f

    if-eqz v1, :cond_1d

    .line 176
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v8, v5, v13}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_19

    .line 180
    :cond_1f
    :goto_1a
    check-cast v3, Ljava/lang/String;

    goto :goto_1b

    :cond_20
    const/4 v3, 0x0

    :goto_1b
    if-eqz v12, :cond_24

    .line 52
    invoke-virtual {v12}, Lcom/netflix/android/moneyball/fields/Field;->getData()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_24

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    .line 50
    filled-new-array {v4, v11}, [Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-static {v4}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 181
    invoke-static {v5, v4}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    .line 182
    move-object/from16 v22, v4

    check-cast v22, Ljava/lang/Iterable;

    move-object/from16 v23, v10

    check-cast v23, Ljava/lang/CharSequence;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x3e

    const/16 v30, 0x0

    invoke-static/range {v22 .. v30}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v10, v7

    check-cast v10, Lorg/json/JSONObject;

    if-nez v5, :cond_22

    if-eqz v1, :cond_21

    .line 185
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v9, v4, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_21
    :goto_1c
    const/16 v17, 0x0

    goto :goto_1d

    .line 188
    :cond_22
    instance-of v7, v5, Ljava/lang/Boolean;

    if-nez v7, :cond_23

    if-eqz v1, :cond_21

    .line 189
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v8, v4, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1c

    :cond_23
    move-object/from16 v17, v5

    .line 193
    :goto_1d
    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_1e

    :cond_24
    const/4 v1, 0x0

    :goto_1e
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    .line 24
    new-instance v1, Lo/Adjustment;

    move-object v13, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    invoke-direct/range {v13 .. v21}, Lo/Adjustment;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-object v1

    .line 56
    :cond_25
    iget-object v1, v0, Lo/NotificationRankingUpdate;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_26

    invoke-virtual {v0, v1}, Lo/NotificationRankingUpdate;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v2

    goto :goto_1f

    :cond_26
    const/4 v2, 0x0

    .line 58
    :goto_1f
    iget-object v1, v0, Lo/NotificationRankingUpdate;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_29

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 195
    invoke-interface {v1, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    const/4 v3, 0x0

    .line 196
    move-object v11, v3

    check-cast v11, Lorg/json/JSONObject;

    if-nez v1, :cond_27

    :goto_20
    const/4 v1, 0x0

    goto :goto_21

    .line 202
    :cond_27
    instance-of v3, v1, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v3, :cond_28

    goto :goto_20

    .line 207
    :cond_28
    :goto_21
    check-cast v1, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object/from16 v19, v1

    goto :goto_22

    :cond_29
    const/16 v19, 0x0

    .line 59
    :goto_22
    iget-object v1, v0, Lo/NotificationRankingUpdate;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_2d

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    const/4 v11, 0x0

    .line 208
    move-object v3, v11

    check-cast v3, Lorg/json/JSONObject;

    .line 209
    invoke-interface {v1, v10}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_23

    :cond_2a
    const/4 v1, 0x0

    :goto_23
    if-nez v1, :cond_2b

    :goto_24
    const/4 v1, 0x0

    goto :goto_25

    .line 216
    :cond_2b
    instance-of v3, v1, Ljava/lang/Boolean;

    if-nez v3, :cond_2c

    goto :goto_24

    .line 221
    :cond_2c
    :goto_25
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_26

    :cond_2d
    const/4 v1, 0x0

    :goto_26
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v1, v10}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v24

    .line 60
    iget-object v1, v0, Lo/NotificationRankingUpdate;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_31

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    const/4 v10, 0x0

    .line 222
    move-object v3, v10

    check-cast v3, Lorg/json/JSONObject;

    .line 223
    invoke-interface {v1, v9}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_27

    :cond_2e
    const/4 v1, 0x0

    :goto_27
    if-nez v1, :cond_2f

    :goto_28
    const/4 v1, 0x0

    goto :goto_29

    .line 230
    :cond_2f
    instance-of v3, v1, Ljava/lang/Boolean;

    if-nez v3, :cond_30

    goto :goto_28

    .line 235
    :cond_30
    :goto_29
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_2a

    :cond_31
    const/4 v1, 0x0

    :goto_2a
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v1, v9}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v25

    .line 61
    iget-object v1, v0, Lo/NotificationRankingUpdate;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_35

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    const/4 v9, 0x0

    .line 236
    move-object v3, v9

    check-cast v3, Lorg/json/JSONObject;

    .line 237
    invoke-interface {v1, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2b

    :cond_32
    const/4 v1, 0x0

    :goto_2b
    if-nez v1, :cond_33

    :goto_2c
    const/4 v1, 0x0

    goto :goto_2d

    .line 244
    :cond_33
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_34

    goto :goto_2c

    .line 249
    :cond_34
    :goto_2d
    check-cast v1, Ljava/lang/String;

    move-object/from16 v26, v1

    goto :goto_2e

    :cond_35
    const/16 v26, 0x0

    :goto_2e
    if-eqz v2, :cond_39

    .line 62
    move-object v1, v2

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    const/4 v8, 0x0

    .line 250
    move-object v3, v8

    check-cast v3, Lorg/json/JSONObject;

    .line 251
    invoke-interface {v1, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2f

    :cond_36
    const/4 v1, 0x0

    :goto_2f
    if-nez v1, :cond_37

    :goto_30
    const/4 v1, 0x0

    goto :goto_31

    .line 258
    :cond_37
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_38

    goto :goto_30

    .line 263
    :cond_38
    :goto_31
    check-cast v1, Ljava/lang/String;

    move-object/from16 v23, v1

    goto :goto_32

    :cond_39
    const/16 v23, 0x0

    :goto_32
    if-eqz v2, :cond_3d

    .line 63
    move-object v1, v2

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    const/4 v7, 0x0

    .line 264
    move-object v3, v7

    check-cast v3, Lorg/json/JSONObject;

    .line 265
    invoke-interface {v1, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_33

    :cond_3a
    const/4 v1, 0x0

    :goto_33
    if-nez v1, :cond_3b

    :goto_34
    const/4 v1, 0x0

    goto :goto_35

    .line 272
    :cond_3b
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_3c

    goto :goto_34

    .line 277
    :cond_3c
    :goto_35
    check-cast v1, Ljava/lang/String;

    move-object/from16 v22, v1

    goto :goto_36

    :cond_3d
    const/16 v22, 0x0

    :goto_36
    if-eqz v2, :cond_41

    .line 64
    move-object v1, v2

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    const/4 v6, 0x0

    .line 278
    move-object v3, v6

    check-cast v3, Lorg/json/JSONObject;

    .line 279
    invoke-interface {v1, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_37

    :cond_3e
    const/4 v1, 0x0

    :goto_37
    if-nez v1, :cond_3f

    :goto_38
    const/4 v1, 0x0

    goto :goto_39

    .line 286
    :cond_3f
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_40

    goto :goto_38

    .line 291
    :cond_40
    :goto_39
    check-cast v1, Ljava/lang/String;

    move-object/from16 v21, v1

    goto :goto_3a

    :cond_41
    const/16 v21, 0x0

    :goto_3a
    if-eqz v2, :cond_45

    .line 65
    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v0

    check-cast v1, Lo/TextClassificationSessionId;

    const/4 v7, 0x0

    .line 292
    move-object v1, v7

    check-cast v1, Lorg/json/JSONObject;

    .line 293
    invoke-interface {v2, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3b

    :cond_42
    move-object v2, v7

    :goto_3b
    if-nez v2, :cond_43

    goto :goto_3c

    .line 300
    :cond_43
    instance-of v1, v2, Ljava/lang/Boolean;

    if-nez v1, :cond_44

    goto :goto_3c

    :cond_44
    move-object v7, v2

    .line 305
    :goto_3c
    move-object v2, v7

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_3d

    :cond_45
    const/4 v7, 0x0

    move-object v2, v7

    :goto_3d
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    .line 57
    new-instance v1, Lo/Adjustment;

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v26}, Lo/Adjustment;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-object v1
.end method
