.class public final Lo/BackgroundColorSpan;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final b:Lo/InputBinding;

.field private final e:Lcom/netflix/android/moneyball/FlowMode;


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

    iput-object p1, p0, Lo/BackgroundColorSpan;->e:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/BackgroundColorSpan;->b:Lo/InputBinding;

    return-void
.end method


# virtual methods
.method public final b()Lo/AlignmentSpan;
    .locals 3

    .line 51
    new-instance v0, Lo/AlignmentSpan;

    iget-object v1, p0, Lo/BackgroundColorSpan;->b:Lo/InputBinding;

    invoke-virtual {p0}, Lo/BackgroundColorSpan;->d()Lo/TimeKeyListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/AlignmentSpan;-><init>(Lo/InputBinding;Lo/TimeKeyListener;)V

    return-object v0
.end method

.method public final d()Lo/TimeKeyListener;
    .locals 18

    move-object/from16 v6, p0

    .line 19
    iget-object v0, v6, Lo/BackgroundColorSpan;->e:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v6

    check-cast v1, Lo/TextClassificationSessionId;

    .line 55
    move-object v1, v7

    check-cast v1, Lorg/json/JSONObject;

    const-string v1, "paymentChoice"

    .line 56
    invoke-interface {v0, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v7

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    move-object v0, v7

    goto :goto_2

    .line 63
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    .line 68
    :cond_2
    :goto_2
    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto :goto_3

    :cond_3
    move-object v2, v7

    .line 22
    :goto_3
    iget-object v0, v6, Lo/BackgroundColorSpan;->e:Lcom/netflix/android/moneyball/FlowMode;

    const-string v1, ","

    const-string v3, "string"

    const-string v4, "messages"

    const-string v5, "fields"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v8, v6

    check-cast v8, Lo/TextClassificationSessionId;

    const-string v8, "ctaButtonLabel"

    .line 27
    filled-new-array {v5, v4, v8, v3}, [Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-static {v8}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 70
    invoke-static {v0, v8}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    move-object v9, v8

    check-cast v9, Ljava/lang/Iterable;

    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    if-nez v0, :cond_4

    :goto_4
    move-object v0, v7

    goto :goto_5

    .line 77
    :cond_4
    instance-of v8, v0, Ljava/lang/String;

    if-nez v8, :cond_5

    goto :goto_4

    .line 82
    :cond_5
    :goto_5
    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto :goto_6

    :cond_6
    move-object v8, v7

    .line 30
    :goto_6
    iget-object v0, v6, Lo/BackgroundColorSpan;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v9, v6

    check-cast v9, Lo/TextClassificationSessionId;

    const-string v9, "ctaButtonSubhead"

    .line 35
    filled-new-array {v5, v4, v9, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-static {v3}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 84
    invoke-static {v0, v3}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    move-object v9, v3

    check-cast v9, Ljava/lang/Iterable;

    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-object v1, v7

    check-cast v1, Lorg/json/JSONObject;

    if-nez v0, :cond_7

    :goto_7
    move-object v0, v7

    goto :goto_8

    .line 91
    :cond_7
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_7

    .line 96
    :cond_8
    :goto_8
    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    goto :goto_9

    :cond_9
    move-object v9, v7

    :goto_9
    const/4 v10, 0x1

    if-eqz v2, :cond_d

    .line 39
    iget-object v0, v6, Lo/BackgroundColorSpan;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_d

    move-object v1, v0

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;ZILjava/lang/Object;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v6

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v2, "willStartMembership"

    move-object v3, v7

    check-cast v3, Lorg/json/JSONObject;

    .line 97
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    :cond_a
    move-object v0, v7

    :goto_a
    if-nez v0, :cond_b

    .line 101
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    const-string v1, "SignupNativeFieldError"

    invoke-virtual {v0, v1, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_b

    .line 104
    :cond_b
    instance-of v4, v0, Ljava/lang/Boolean;

    if-nez v4, :cond_c

    .line 105
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    const-string v1, "SignupNativeDataManipulationError"

    invoke-virtual {v0, v1, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_b

    :cond_c
    move-object v7, v0

    .line 109
    :goto_b
    check-cast v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 21
    :cond_d
    new-instance v0, Lo/TimeKeyListener;

    invoke-direct {v0, v8, v9, v10}, Lo/TimeKeyListener;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
