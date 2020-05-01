.class public Lo/TextClassificationSessionId;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lo/SystemTextClassifier;


# direct methods
.method public constructor <init>(Lo/SystemTextClassifier;)V
    .locals 1

    const-string v0, "signupErrorReporter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TextClassificationSessionId;->b:Lo/SystemTextClassifier;

    return-void
.end method

.method public static synthetic e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;ZILjava/lang/Object;)Lcom/netflix/android/moneyball/fields/OptionField;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/TextClassificationSessionId;->c(Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;Z)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getPaymentChoice"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 33
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/TextClassificationSessionId;->c(Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getMessagesField"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/TextClassificationSessionId;->b:Lo/SystemTextClassifier;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;
    .locals 12

    const-string v0, "$this$extractLowestPlanPrice"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 145
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 146
    sget-object v2, Lo/fR;->c:Lo/fR$StateListAnimator;

    invoke-virtual {v2}, Lo/fR$StateListAnimator;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 148
    check-cast p1, Lcom/netflix/android/moneyball/GetField;

    const-string v4, "planChoice"

    .line 386
    invoke-interface {p1, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    .line 387
    move-object v5, v0

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "SignupNativeFieldError"

    const-string v7, "SignupNativeDataManipulationError"

    if-nez p1, :cond_0

    .line 390
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object p1

    invoke-virtual {p1, v6, v4, v5}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 393
    :cond_0
    instance-of v8, p1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez v8, :cond_1

    .line 394
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object p1

    invoke-virtual {p1, v7, v4, v5}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 398
    :cond_1
    :goto_1
    check-cast p1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz p1, :cond_b

    .line 153
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOptions()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 399
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/android/moneyball/fields/OptionField;

    .line 155
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getValue()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "action"

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 156
    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    const-string v9, "planPrice"

    .line 400
    invoke-interface {v5, v9}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v10

    goto :goto_3

    :cond_3
    move-object v10, v0

    :goto_3
    if-nez v10, :cond_4

    .line 404
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v10

    invoke-virtual {v10, v6, v9, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_4
    move-object v10, v0

    goto :goto_5

    .line 407
    :cond_4
    instance-of v11, v10, Ljava/lang/String;

    if-nez v11, :cond_5

    .line 408
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v10

    invoke-virtual {v10, v7, v9, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_4

    .line 412
    :cond_5
    :goto_5
    move-object v9, v10

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_b

    const-string v10, "planPriceAmount"

    .line 413
    invoke-interface {v5, v10}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    :cond_6
    move-object v5, v0

    :goto_6
    if-nez v5, :cond_7

    .line 417
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v6, v10, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_7
    move-object v5, v0

    goto :goto_8

    .line 420
    :cond_7
    instance-of v11, v5, Ljava/lang/String;

    if-nez v11, :cond_8

    .line 421
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v7, v10, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_7

    .line 425
    :cond_8
    :goto_8
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 166
    invoke-static {v5}, Lo/anv;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    if-nez v5, :cond_9

    .line 168
    iget-object p1, p0, Lo/TextClassificationSessionId;->b:Lo/SystemTextClassifier;

    invoke-virtual {p1, v7, v10, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0

    :cond_9
    const/4 v8, 0x0

    int-to-double v10, v8

    cmpg-double v8, v2, v10

    if-ltz v8, :cond_a

    .line 174
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpg-double v8, v10, v2

    if-gez v8, :cond_2

    .line 175
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v2, v1

    move-object v1, v9

    goto/16 :goto_2

    :cond_b
    return-object v0

    :cond_c
    return-object v1
.end method

.method public final a(Lcom/netflix/android/moneyball/FlowMode;Z)Ljava/lang/String;
    .locals 10

    const-string v0, "$this$getFreeTrialEndDate"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string p2, "fields"

    const-string v1, "freeTrialEndDate"

    .line 94
    filled-new-array {p2, v1}, [Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-static {p2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 97
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object p1

    .line 319
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 320
    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    const-string v2, ","

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    if-nez p1, :cond_1

    move-object p1, v0

    .line 100
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_2
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/util/Map;

    const-string v1, "value"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_3

    move-object p1, v0

    :cond_3
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 107
    iget-object p1, p0, Lo/TextClassificationSessionId;->b:Lo/SystemTextClassifier;

    const-string v1, "SignupNativeFieldError"

    invoke-virtual {p1, v1, p2}, Lo/SystemTextClassifier;->c(Ljava/lang/String;Ljava/util/List;)V

    :cond_5
    return-object v0
.end method

.method public final a(Lcom/netflix/android/moneyball/GetField;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/moneyball/GetField;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;>;"
        }
    .end annotation

    const-string v0, "groupedFieldKeys"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    check-cast p2, Ljava/lang/Iterable;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 303
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 302
    check-cast v1, Ljava/util/List;

    .line 71
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 304
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 313
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 312
    check-cast v4, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 72
    invoke-interface {p1, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_1

    .line 312
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 315
    :cond_3
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    goto :goto_2

    .line 77
    :cond_4
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 79
    iget-object v2, p0, Lo/TextClassificationSessionId;->b:Lo/SystemTextClassifier;

    const-string v3, "SignupNativeIncompleteActionError"

    invoke-virtual {v2, v3, v1}, Lo/SystemTextClassifier;->c(Ljava/lang/String;Ljava/util/List;)V

    :cond_5
    move-object v2, v5

    :goto_2
    if-eqz v2, :cond_0

    .line 302
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :cond_6
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final b(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;
    .locals 4

    const-string v0, "$this$getPlanPriceString"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p1}, Lo/TextClassificationSessionId;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 141
    check-cast p1, Lcom/netflix/android/moneyball/GetField;

    const-string v1, "planPrice"

    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    .line 373
    invoke-interface {p1, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 377
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object p1

    const-string v3, "SignupNativeFieldError"

    invoke-virtual {p1, v3, v1, v2}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 380
    :cond_1
    instance-of v3, p1, Ljava/lang/String;

    if-nez v3, :cond_2

    .line 381
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object p1

    const-string v3, "SignupNativeDataManipulationError"

    invoke-virtual {p1, v3, v1, v2}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_2
    move-object v0, p1

    .line 385
    :goto_1
    check-cast v0, Ljava/lang/String;

    :cond_3
    return-object v0
.end method

.method public final c(Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;Z)Lcom/netflix/android/moneyball/fields/OptionField;
    .locals 8

    const-string v0, "$this$getPaymentChoice"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentChoice"

    .line 113
    invoke-interface {p1, v0}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    instance-of v0, p1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p1, p2}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOption(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 116
    iget-object v2, p0, Lo/TextClassificationSessionId;->b:Lo/SystemTextClassifier;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "SignupNativeFieldError"

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public final c(Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p2

    const-string v1, "$this$getMessagesField"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "key"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "fields"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    const-string v7, "messages"

    aput-object v7, v3, v6

    const/4 v7, 0x2

    aput-object v0, v3, v7

    const-string v8, "string"

    const/4 v9, 0x3

    aput-object v8, v3, v9

    .line 34
    invoke-static {v3}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v10

    .line 257
    invoke-static {v10, v3}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    .line 258
    move-object v11, v3

    check-cast v11, Ljava/lang/Iterable;

    const-string v3, ","

    move-object v12, v3

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    const/16 v19, 0x0

    invoke-static/range {v11 .. v19}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    const/4 v11, 0x0

    move-object v12, v11

    check-cast v12, Lorg/json/JSONObject;

    if-nez v10, :cond_0

    :goto_0
    move-object v10, v11

    goto :goto_1

    .line 264
    :cond_0
    instance-of v13, v10, Ljava/lang/String;

    if-nez v13, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_5

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v5

    const-string v4, "messagesFromDynecom"

    aput-object v4, v1, v6

    aput-object v0, v1, v7

    aput-object v8, v1, v9

    .line 44
    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 270
    invoke-static {v2, v0}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    .line 271
    move-object v13, v0

    check-cast v13, Ljava/lang/Iterable;

    move-object v14, v3

    check-cast v14, Ljava/lang/CharSequence;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const/16 v21, 0x0

    invoke-static/range {v13 .. v21}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_2

    if-eqz p3, :cond_4

    .line 274
    invoke-static/range {p0 .. p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    const-string v2, "SignupNativeFieldError"

    invoke-virtual {v1, v2, v0, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 277
    :cond_2
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_3

    if-eqz p3, :cond_4

    .line 278
    invoke-static/range {p0 .. p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    const-string v2, "SignupNativeDataManipulationError"

    invoke-virtual {v1, v2, v0, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_3
    move-object v11, v1

    .line 282
    :cond_4
    :goto_2
    move-object v10, v11

    check-cast v10, Ljava/lang/String;

    :cond_5
    return-object v10
.end method

.method public final e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;
    .locals 10

    const-string v0, "$this$getSelectedPlan"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    check-cast p1, Lcom/netflix/android/moneyball/GetField;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "planChoice"

    .line 332
    invoke-interface {p1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    const-string v4, "SignupNativeDataManipulationError"

    const-string v5, "SignupNativeFieldError"

    if-nez v3, :cond_1

    .line 336
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v5, v2, v1}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v3, v0

    goto :goto_2

    .line 339
    :cond_1
    instance-of v6, v3, Ljava/lang/String;

    if-nez v6, :cond_2

    .line 340
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v4, v2, v1}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 344
    :cond_2
    :goto_2
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 345
    invoke-interface {p1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    if-nez p1, :cond_3

    .line 349
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object p1

    invoke-virtual {p1, v5, v2, v1}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_3
    move-object p1, v0

    goto :goto_4

    .line 352
    :cond_3
    instance-of v6, p1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez v6, :cond_4

    .line 353
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object p1

    invoke-virtual {p1, v4, v2, v1}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    .line 357
    :cond_4
    :goto_4
    check-cast p1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOptions()Ljava/util/List;

    move-result-object p1

    goto :goto_5

    :cond_5
    move-object p1, v0

    :goto_5
    if-eqz p1, :cond_a

    .line 126
    check-cast p1, Ljava/lang/Iterable;

    .line 358
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/android/moneyball/fields/OptionField;

    .line 127
    move-object v7, v6

    check-cast v7, Lcom/netflix/android/moneyball/GetField;

    const-string v8, "offerId"

    .line 359
    invoke-interface {v7, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_6

    :cond_7
    move-object v7, v0

    :goto_6
    if-nez v7, :cond_8

    .line 363
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v5, v8, v1}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_7
    move-object v7, v0

    goto :goto_8

    .line 366
    :cond_8
    instance-of v9, v7, Ljava/lang/String;

    if-nez v9, :cond_9

    .line 367
    invoke-static {p0}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v4, v8, v1}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_7

    .line 127
    :cond_9
    :goto_8
    check-cast v7, Ljava/lang/String;

    .line 128
    invoke-static {v3, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    return-object v6

    .line 132
    :cond_a
    iget-object p1, p0, Lo/TextClassificationSessionId;->b:Lo/SystemTextClassifier;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 134
    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 132
    invoke-virtual {p1, v5, v1}, Lo/SystemTextClassifier;->c(Ljava/lang/String;Ljava/util/List;)V

    :cond_b
    return-object v0
.end method

.method protected final j()Lo/SystemTextClassifier;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/TextClassificationSessionId;->b:Lo/SystemTextClassifier;

    return-object v0
.end method
