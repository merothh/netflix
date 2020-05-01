.class public final Lo/InflateException;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final e:Lcom/netflix/android/moneyball/FlowMode;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/InflateException;->e:Lcom/netflix/android/moneyball/FlowMode;

    return-void
.end method

.method public static synthetic c(Lo/InflateException;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lo/InflateException;->b(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Z)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lo/HandlerActionQueue;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lo/InflateException;->e:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "planChoice"

    .line 59
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 60
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 66
    :cond_0
    instance-of v2, v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez v2, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    :goto_1
    check-cast v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 21
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_12

    .line 23
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 24
    check-cast v0, Ljava/lang/Iterable;

    .line 72
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/android/moneyball/fields/OptionField;

    .line 26
    move-object v3, v2

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "offerId"

    move-object v6, v1

    check-cast v6, Lorg/json/JSONObject;

    .line 73
    invoke-interface {v3, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_4

    :cond_3
    move-object v7, v1

    :goto_4
    const-string v9, "SignupNativeDataManipulationError"

    const-string v10, "SignupNativeFieldError"

    if-nez v7, :cond_4

    .line 77
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v10, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_5
    move-object v7, v1

    goto :goto_6

    .line 80
    :cond_4
    instance-of v11, v7, Ljava/lang/String;

    if-nez v11, :cond_5

    .line 81
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v9, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 26
    :cond_5
    :goto_6
    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    const-string v5, "planPrice"

    .line 86
    invoke-interface {v3, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_7

    :cond_6
    move-object v7, v1

    :goto_7
    if-nez v7, :cond_7

    .line 90
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v10, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_8
    move-object v7, v1

    goto :goto_9

    .line 93
    :cond_7
    instance-of v12, v7, Ljava/lang/String;

    if-nez v12, :cond_8

    .line 94
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v7

    invoke-virtual {v7, v9, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_8

    .line 27
    :cond_8
    :goto_9
    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    const-string v5, "billingFrequency"

    .line 99
    invoke-interface {v3, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_a

    :cond_9
    move-object v5, v1

    :goto_a
    if-nez v5, :cond_a

    :goto_b
    move-object v5, v1

    goto :goto_c

    .line 106
    :cond_a
    instance-of v7, v5, Ljava/lang/String;

    if-nez v7, :cond_b

    goto :goto_b

    .line 28
    :cond_b
    :goto_c
    move-object v13, v5

    check-cast v13, Ljava/lang/String;

    const-string v5, "localizedPlanName"

    .line 112
    invoke-interface {v3, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_d

    :cond_c
    move-object v7, v1

    :goto_d
    if-nez v7, :cond_d

    .line 116
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v10, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_e
    move-object v7, v1

    goto :goto_f

    .line 119
    :cond_d
    instance-of v10, v7, Ljava/lang/String;

    if-nez v10, :cond_e

    .line 120
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v9, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_e

    .line 29
    :cond_e
    :goto_f
    move-object v4, v7

    check-cast v4, Ljava/lang/String;

    const-string v5, "uouPlanId"

    .line 126
    invoke-interface {v3, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_10

    :cond_f
    move-object v3, v1

    :goto_10
    if-nez v3, :cond_10

    :goto_11
    move-object v3, v1

    goto :goto_12

    .line 133
    :cond_10
    instance-of v5, v3, Ljava/lang/String;

    if-nez v5, :cond_11

    goto :goto_11

    .line 30
    :cond_11
    :goto_12
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 31
    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/OptionField;->getFields()Ljava/util/Map;

    move-result-object v6

    .line 33
    new-instance v9, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanOptionViewModelInitializer$extractPlanOptionParsedData$$inlined$let$lambda$1;

    move-object v2, v9

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p0

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanOptionViewModelInitializer$extractPlanOptionParsedData$$inlined$let$lambda$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lo/InflateException;Ljava/util/ArrayList;)V

    check-cast v9, Lo/alO;

    invoke-static {v11, v12, v13, v9}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 48
    :cond_12
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 49
    invoke-virtual {p0}, Lo/InflateException;->j()Lo/SystemTextClassifier;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SignupNativeFieldError"

    const-string v3, "planChoice"

    invoke-static/range {v1 .. v6}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    .line 51
    :cond_13
    check-cast v8, Ljava/util/List;

    return-object v8
.end method

.method public final c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/GhostView;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-static {p0, v0, v1, v2}, Lo/InflateException;->c(Lo/InflateException;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 141
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 142
    check-cast v2, Lo/HandlerActionQueue;

    .line 54
    new-instance v3, Lo/GhostView;

    invoke-direct {v3, v2}, Lo/GhostView;-><init>(Lo/HandlerActionQueue;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
