.class public final Lo/ScaleXSpan;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final e:Lo/InflateException;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InflateException;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planOptionViewModelInitializer"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/ScaleXSpan;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/ScaleXSpan;->e:Lo/InflateException;

    return-void
.end method

.method public static final synthetic d(Lo/ScaleXSpan;)Lcom/netflix/android/moneyball/FlowMode;
    .locals 0

    .line 13
    iget-object p0, p0, Lo/ScaleXSpan;->a:Lcom/netflix/android/moneyball/FlowMode;

    return-object p0
.end method


# virtual methods
.method public final c()Lo/TextClassificationSession;
    .locals 1

    .line 59
    new-instance v0, Lo/ScaleXSpan$TaskDescription;

    invoke-direct {v0, p0}, Lo/ScaleXSpan$TaskDescription;-><init>(Lo/ScaleXSpan;)V

    check-cast v0, Lo/TextClassificationSession;

    return-object v0
.end method

.method public final d()Lo/QuoteSpan;
    .locals 22

    move-object/from16 v0, p0

    .line 27
    iget-object v1, v0, Lo/ScaleXSpan;->a:Lcom/netflix/android/moneyball/FlowMode;

    const-string v2, ","

    const-string v3, "showUoUDialog"

    const-string v4, "adaptiveFields"

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v6, "showDialog"

    .line 25
    filled-new-array {v4, v3, v6}, [Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-static {v6}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 68
    invoke-static {v1, v6}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    move-object v7, v6

    check-cast v7, Ljava/lang/Iterable;

    move-object v8, v2

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const/4 v15, 0x0

    invoke-static/range {v7 .. v15}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-object v6, v5

    check-cast v6, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    :goto_0
    move-object v1, v5

    goto :goto_1

    .line 75
    :cond_0
    instance-of v6, v1, Ljava/lang/Boolean;

    if-nez v6, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    move-object v1, v5

    :goto_2
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v1, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 34
    iget-object v1, v0, Lo/ScaleXSpan;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    const-string v7, "showBanner"

    .line 32
    filled-new-array {v4, v3, v7}, [Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-static {v7}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 82
    invoke-static {v1, v7}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    move-object v12, v7

    check-cast v12, Ljava/lang/Iterable;

    move-object v13, v2

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3e

    const/16 v20, 0x0

    invoke-static/range {v12 .. v20}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-object v7, v5

    check-cast v7, Lorg/json/JSONObject;

    if-nez v1, :cond_3

    :goto_3
    move-object v1, v5

    goto :goto_4

    .line 89
    :cond_3
    instance-of v7, v1, Ljava/lang/Boolean;

    if-nez v7, :cond_4

    goto :goto_3

    .line 94
    :cond_4
    :goto_4
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object v1, v5

    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v1, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 41
    iget-object v1, v0, Lo/ScaleXSpan;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    const-string v7, "showPlanDetails"

    .line 39
    filled-new-array {v4, v3, v7}, [Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-static {v3}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 96
    invoke-static {v1, v3}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    move-object v13, v3

    check-cast v13, Ljava/lang/Iterable;

    move-object v14, v2

    check-cast v14, Ljava/lang/CharSequence;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const/16 v21, 0x0

    invoke-static/range {v13 .. v21}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-object v2, v5

    check-cast v2, Lorg/json/JSONObject;

    if-nez v1, :cond_6

    :goto_6
    move-object v1, v5

    goto :goto_7

    .line 103
    :cond_6
    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_7

    goto :goto_6

    .line 108
    :cond_7
    :goto_7
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object v1, v5

    :goto_8
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v12, :cond_a

    if-nez v11, :cond_a

    if-eqz v13, :cond_9

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v1, 0x1

    .line 44
    :goto_a
    iget-object v2, v0, Lo/ScaleXSpan;->e:Lo/InflateException;

    invoke-virtual {v2, v1}, Lo/InflateException;->b(Z)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 110
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 111
    check-cast v3, Lo/HandlerActionQueue;

    .line 45
    new-instance v4, Lo/GhostView;

    invoke-direct {v4, v3}, Lo/GhostView;-><init>(Lo/HandlerActionQueue;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 112
    :cond_b
    move-object v9, v2

    check-cast v9, Ljava/util/List;

    .line 50
    iget-object v1, v0, Lo/ScaleXSpan;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_f

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    .line 113
    move-object v2, v5

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "zeroPrice"

    .line 114
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    :cond_c
    move-object v1, v5

    :goto_c
    if-nez v1, :cond_d

    :goto_d
    move-object v1, v5

    goto :goto_e

    .line 121
    :cond_d
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_e

    goto :goto_d

    .line 126
    :cond_e
    :goto_e
    check-cast v1, Ljava/lang/String;

    move-object v10, v1

    goto :goto_f

    :cond_f
    move-object v10, v5

    .line 55
    :goto_f
    iget-object v1, v0, Lo/ScaleXSpan;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_13

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    .line 127
    move-object v2, v5

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "hasFreeTrial"

    .line 128
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    :cond_10
    move-object v1, v5

    :goto_10
    if-nez v1, :cond_11

    goto :goto_11

    .line 135
    :cond_11
    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_12

    goto :goto_11

    :cond_12
    move-object v5, v1

    .line 140
    :goto_11
    check-cast v5, Ljava/lang/Boolean;

    :cond_13
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v5, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    .line 48
    new-instance v1, Lo/QuoteSpan;

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lo/QuoteSpan;-><init>(Ljava/util/List;Ljava/lang/String;ZZZZ)V

    return-object v1
.end method

.method public final e()Lo/RelativeSizeSpan;
    .locals 2

    .line 63
    new-instance v0, Lo/RelativeSizeSpan;

    invoke-virtual {p0}, Lo/ScaleXSpan;->d()Lo/QuoteSpan;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/RelativeSizeSpan;-><init>(Lo/QuoteSpan;)V

    return-object v0
.end method
