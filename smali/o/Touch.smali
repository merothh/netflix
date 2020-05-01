.class public final Lo/Touch;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/SentenceSuggestionsInfo;

.field private final b:Lcom/netflix/android/moneyball/FlowMode;

.field private final c:Lo/InputBinding;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/SentenceSuggestionsInfo;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mopLogos"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/Touch;->b:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/Touch;->c:Lo/InputBinding;

    iput-object p4, p0, Lo/Touch;->a:Lo/SentenceSuggestionsInfo;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ReplacementTransformationMethod;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 23
    iget-object v1, v0, Lo/Touch;->b:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v3, "paymentChoice"

    .line 74
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    .line 75
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 81
    :cond_0
    instance-of v3, v1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez v3, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    check-cast v1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 25
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_18

    .line 27
    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 28
    check-cast v1, Ljava/lang/Iterable;

    .line 87
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/android/moneyball/fields/OptionField;

    .line 30
    move-object v5, v4

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v7, "targetFlow"

    move-object v8, v2

    check-cast v8, Lorg/json/JSONObject;

    .line 88
    invoke-interface {v5, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v9

    goto :goto_4

    :cond_3
    move-object v9, v2

    :goto_4
    const-string v10, "SignupNativeDataManipulationError"

    const-string v11, "SignupNativeFieldError"

    if-nez v9, :cond_4

    .line 92
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v9

    invoke-virtual {v9, v11, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_5
    move-object v9, v2

    goto :goto_6

    .line 95
    :cond_4
    instance-of v12, v9, Ljava/lang/String;

    if-nez v12, :cond_5

    .line 96
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v9

    invoke-virtual {v9, v10, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 30
    :cond_5
    :goto_6
    move-object v13, v9

    check-cast v13, Ljava/lang/String;

    const-string v7, "targetMode"

    .line 101
    invoke-interface {v5, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_7

    :cond_6
    move-object v5, v2

    :goto_7
    if-nez v5, :cond_7

    .line 105
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v11, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_8
    move-object v5, v2

    goto :goto_9

    .line 108
    :cond_7
    instance-of v9, v5, Ljava/lang/String;

    if-nez v9, :cond_8

    .line 109
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v10, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_8

    .line 31
    :cond_8
    :goto_9
    move-object v14, v5

    check-cast v14, Ljava/lang/String;

    .line 32
    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/OptionField;->getData()Ljava/util/Map;

    move-result-object v5

    const-string v7, "fields"

    const-string v9, "paymentLogoUrls"

    const-string v12, "value"

    .line 36
    filled-new-array {v7, v9, v12}, [Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-static {v7}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 115
    invoke-static {v5, v7}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    .line 116
    move-object v15, v7

    check-cast v15, Ljava/lang/Iterable;

    const-string v7, ","

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/CharSequence;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3e

    const/16 v23, 0x0

    invoke-static/range {v15 .. v23}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    if-nez v5, :cond_9

    :goto_a
    move-object v5, v2

    goto :goto_b

    .line 122
    :cond_9
    instance-of v7, v5, Ljava/util/List;

    if-nez v7, :cond_a

    goto :goto_a

    .line 127
    :cond_a
    :goto_b
    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_d

    check-cast v5, Ljava/lang/Iterable;

    .line 128
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 137
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 136
    check-cast v9, Ljava/lang/String;

    .line 39
    iget-object v12, v0, Lo/Touch;->a:Lo/SentenceSuggestionsInfo;

    invoke-virtual/range {p0 .. p0}, Lo/Touch;->j()Lo/SystemTextClassifier;

    move-result-object v15

    invoke-virtual {v12, v15, v9}, Lo/SentenceSuggestionsInfo;->a(Lo/SystemTextClassifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 136
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 139
    :cond_c
    move-object v5, v7

    check-cast v5, Ljava/util/List;

    goto :goto_d

    :cond_d
    move-object v5, v2

    .line 41
    :goto_d
    move-object v7, v4

    check-cast v7, Lcom/netflix/android/moneyball/GetField;

    const-string v9, "paymentLabel"

    .line 140
    invoke-interface {v7, v9}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v12

    goto :goto_e

    :cond_e
    move-object v12, v2

    :goto_e
    if-nez v12, :cond_f

    .line 144
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v12

    invoke-virtual {v12, v11, v9, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_f
    move-object v12, v2

    goto :goto_10

    .line 147
    :cond_f
    instance-of v15, v12, Ljava/lang/String;

    if-nez v15, :cond_10

    .line 148
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v12

    invoke-virtual {v12, v10, v9, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_f

    .line 41
    :cond_10
    :goto_10
    move-object v15, v12

    check-cast v15, Ljava/lang/String;

    const-string v9, "partnerDisplayName"

    .line 154
    invoke-interface {v7, v9}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v9

    goto :goto_11

    :cond_11
    move-object v9, v2

    :goto_11
    if-nez v9, :cond_12

    :goto_12
    move-object v9, v2

    goto :goto_13

    .line 161
    :cond_12
    instance-of v12, v9, Ljava/lang/String;

    if-nez v12, :cond_13

    goto :goto_12

    .line 42
    :cond_13
    :goto_13
    check-cast v9, Ljava/lang/String;

    .line 43
    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v12, v4, Ljava/lang/String;

    if-nez v12, :cond_14

    move-object v4, v2

    :cond_14
    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    const-string v4, "targetNetflixClientPlatform"

    .line 167
    invoke-interface {v7, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v7

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_14

    :cond_15
    move-object v7, v2

    :goto_14
    if-nez v7, :cond_16

    .line 171
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v6

    invoke-virtual {v6, v11, v4, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_15
    move-object v7, v2

    goto :goto_16

    .line 174
    :cond_16
    instance-of v11, v7, Ljava/lang/String;

    if-nez v11, :cond_17

    .line 175
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v6

    invoke-virtual {v6, v10, v4, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_15

    .line 45
    :cond_17
    :goto_16
    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    .line 47
    new-instance v4, Lcom/netflix/mediaclient/acquisition2/components/paymentOption/PaymentOptionViewModelInitializer$extractPaymentOptionParsedData$$inlined$let$lambda$1;

    invoke-direct {v4, v5, v9, v0, v3}, Lcom/netflix/mediaclient/acquisition2/components/paymentOption/PaymentOptionViewModelInitializer$extractPaymentOptionParsedData$$inlined$let$lambda$1;-><init>(Ljava/util/List;Ljava/lang/String;Lo/Touch;Ljava/util/ArrayList;)V

    move-object/from16 v17, v4

    check-cast v17, Lo/alP;

    invoke-static/range {v12 .. v17}, Lo/NfcA;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alP;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 63
    :cond_18
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 64
    invoke-virtual/range {p0 .. p0}, Lo/Touch;->j()Lo/SystemTextClassifier;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "SignupNativeFieldError"

    const-string v6, "paymentChoice"

    invoke-static/range {v4 .. v9}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    .line 67
    :cond_19
    check-cast v3, Ljava/util/List;

    return-object v3
.end method

.method public final d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/TransformationMethod2;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lo/Touch;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 182
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 183
    check-cast v2, Lo/ReplacementTransformationMethod;

    .line 70
    new-instance v3, Lo/TransformationMethod2;

    iget-object v4, p0, Lo/Touch;->c:Lo/InputBinding;

    invoke-direct {v3, v4, v2}, Lo/TransformationMethod2;-><init>(Lo/InputBinding;Lo/ReplacementTransformationMethod;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
