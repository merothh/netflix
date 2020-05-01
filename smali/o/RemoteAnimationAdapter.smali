.class public final Lo/RemoteAnimationAdapter;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/InputBinding;

.field private final c:Lcom/netflix/android/moneyball/FlowMode;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/InputBinding;Lo/SystemTextClassifier;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupErrorReporter"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p3}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/RemoteAnimationAdapter;->c:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p2, p0, Lo/RemoteAnimationAdapter;->a:Lo/InputBinding;

    return-void
.end method

.method public static synthetic d(Lo/RemoteAnimationAdapter;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lo/RemoteAnimationAdapter;->b(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Z)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lo/RemotableViewMethod;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    .line 23
    iget-object v0, v11, Lo/RemoteAnimationAdapter;->c:Lcom/netflix/android/moneyball/FlowMode;

    const-string v12, "SignupNativeDataManipulationError"

    const-string v13, "SignupNativeFieldError"

    const/4 v14, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v11

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v2, "hasFreeTrial"

    move-object v3, v14

    check-cast v3, Lorg/json/JSONObject;

    .line 77
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v14

    :goto_0
    if-nez v0, :cond_1

    .line 81
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v13, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v0, v14

    goto :goto_2

    .line 84
    :cond_1
    instance-of v4, v0, Ljava/lang/Boolean;

    if-nez v4, :cond_2

    .line 85
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v12, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 89
    :cond_2
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object v0, v14

    :goto_3
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    .line 24
    iget-object v0, v11, Lo/RemoteAnimationAdapter;->c:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_6

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v11

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v1, "planChoice"

    .line 91
    invoke-interface {v0, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 92
    move-object v1, v14

    check-cast v1, Lorg/json/JSONObject;

    if-nez v0, :cond_4

    :goto_4
    move-object v0, v14

    goto :goto_5

    .line 98
    :cond_4
    instance-of v1, v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez v1, :cond_5

    goto :goto_4

    .line 103
    :cond_5
    :goto_5
    check-cast v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    goto :goto_6

    :cond_6
    move-object v0, v14

    .line 26
    :goto_6
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1f

    .line 28
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 29
    check-cast v0, Ljava/lang/Iterable;

    .line 104
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/moneyball/fields/OptionField;

    .line 32
    move-object v1, v0

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v11

    check-cast v2, Lo/TextClassificationSessionId;

    move-object v3, v14

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "minimizedSet"

    .line 105
    invoke-interface {v1, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_8

    :cond_7
    move-object v4, v14

    :goto_8
    if-nez v4, :cond_8

    :goto_9
    move-object v4, v14

    goto :goto_a

    .line 112
    :cond_8
    instance-of v5, v4, Ljava/lang/Boolean;

    if-nez v5, :cond_9

    goto :goto_9

    .line 31
    :cond_9
    :goto_a
    move-object v10, v4

    check-cast v10, Ljava/lang/Boolean;

    const-string v4, "localizedPlanName"

    .line 118
    invoke-interface {v1, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_b

    :cond_a
    move-object v5, v14

    :goto_b
    if-nez v5, :cond_b

    .line 122
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v13, v4, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_c
    move-object v5, v14

    goto :goto_d

    .line 125
    :cond_b
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_c

    .line 126
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v12, v4, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_c

    .line 33
    :cond_c
    :goto_d
    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    const-string v5, "planPrice"

    .line 131
    invoke-interface {v1, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v6

    goto :goto_e

    :cond_d
    move-object v6, v14

    :goto_e
    if-nez v6, :cond_e

    .line 135
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v6

    invoke-virtual {v6, v13, v5, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_f
    move-object v6, v14

    goto :goto_10

    .line 138
    :cond_e
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_f

    .line 139
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v6

    invoke-virtual {v6, v12, v5, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_f

    .line 35
    :cond_f
    :goto_10
    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    const-string v5, "supportedDevices"

    .line 145
    invoke-interface {v1, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_11

    :cond_10
    move-object v5, v14

    :goto_11
    if-nez v5, :cond_11

    :goto_12
    move-object v5, v14

    goto :goto_13

    .line 152
    :cond_11
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_12

    goto :goto_12

    .line 37
    :cond_12
    :goto_13
    check-cast v5, Ljava/lang/String;

    const-string v6, "planMaxScreenCount"

    .line 159
    invoke-interface {v1, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v6

    if-nez v6, :cond_13

    :goto_14
    move-object v6, v14

    goto :goto_15

    .line 166
    :cond_13
    instance-of v7, v6, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez v7, :cond_14

    goto :goto_14

    .line 171
    :cond_14
    :goto_15
    check-cast v6, Lcom/netflix/android/moneyball/fields/NumberField;

    if-eqz v6, :cond_15

    invoke-virtual {v6}, Lcom/netflix/android/moneyball/fields/NumberField;->getValue()Ljava/lang/Object;

    move-result-object v6

    goto :goto_16

    :cond_15
    move-object v6, v14

    :goto_16
    instance-of v7, v6, Ljava/lang/Long;

    if-nez v7, :cond_16

    move-object v6, v14

    :cond_16
    check-cast v6, Ljava/lang/Long;

    const-string v7, "planHasUltraHd"

    .line 172
    invoke-interface {v1, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v8

    goto :goto_17

    :cond_17
    move-object v8, v14

    :goto_17
    if-nez v8, :cond_18

    .line 176
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v8

    invoke-virtual {v8, v13, v7, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_18

    .line 179
    :cond_18
    instance-of v14, v8, Ljava/lang/Boolean;

    if-nez v14, :cond_19

    .line 180
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v8

    invoke-virtual {v8, v12, v7, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v14, 0x0

    goto :goto_18

    :cond_19
    move-object v14, v8

    .line 184
    :goto_18
    check-cast v14, Ljava/lang/Boolean;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v14, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "planHasHd"

    .line 185
    invoke-interface {v1, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v14

    goto :goto_19

    :cond_1a
    const/4 v14, 0x0

    :goto_19
    if-nez v14, :cond_1b

    .line 189
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v13, v8, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1a
    const/4 v14, 0x0

    goto :goto_1b

    .line 192
    :cond_1b
    instance-of v1, v14, Ljava/lang/Boolean;

    if-nez v1, :cond_1c

    .line 193
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v12, v8, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1a

    .line 197
    :cond_1c
    :goto_1b
    check-cast v14, Ljava/lang/Boolean;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v14, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 45
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v14

    instance-of v0, v14, Ljava/lang/String;

    if-nez v0, :cond_1d

    const/4 v14, 0x0

    :cond_1d
    check-cast v14, Ljava/lang/String;

    .line 47
    new-instance v19, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;

    move-object/from16 v0, v19

    move-object v1, v4

    move/from16 v2, v16

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v14

    move-object/from16 v8, p0

    move-object v14, v9

    move/from16 v9, v16

    move-object v15, v10

    move-object/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Long;ZZLjava/lang/String;Lo/RemoteAnimationAdapter;ZLjava/util/ArrayList;)V

    move-object/from16 v0, v19

    check-cast v0, Lo/alN;

    invoke-static {v15, v14, v0}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_7

    .line 63
    :cond_1e
    sget-object v0, Lo/akj;->a:Lo/akj;

    .line 65
    :cond_1f
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    .line 66
    invoke-virtual/range {p0 .. p0}, Lo/RemoteAnimationAdapter;->j()Lo/SystemTextClassifier;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SignupNativeFieldError"

    const-string v2, "planChoice"

    invoke-static/range {v0 .. v5}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    .line 71
    :cond_20
    check-cast v17, Ljava/util/List;

    return-object v17
.end method

.method public final e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/RemoteAnimationTarget;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-static {p0, v0, v1, v2}, Lo/RemoteAnimationAdapter;->d(Lo/RemoteAnimationAdapter;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 200
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 201
    check-cast v2, Lo/RemotableViewMethod;

    .line 74
    new-instance v3, Lo/RemoteAnimationTarget;

    iget-object v4, p0, Lo/RemoteAnimationAdapter;->a:Lo/InputBinding;

    invoke-direct {v3, v2, v4}, Lo/RemoteAnimationTarget;-><init>(Lo/RemotableViewMethod;Lo/InputBinding;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
