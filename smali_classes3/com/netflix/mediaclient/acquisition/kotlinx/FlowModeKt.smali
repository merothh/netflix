.class public final Lcom/netflix/mediaclient/acquisition/kotlinx/FlowModeKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final synthetic attemptAndLogTypedCast(Lo/SystemTextClassifier;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/SystemTextClassifier;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-eqz p3, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SignupNativeFieldError"

    move-object v1, p0

    move-object v3, p2

    .line 30
    invoke-static/range {v1 .. v6}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    const-string v2, "T"

    .line 33
    invoke-static {v1, v2}, Lo/amh;->a(ILjava/lang/String;)V

    instance-of v1, p1, Ljava/lang/Object;

    if-nez v1, :cond_1

    if-eqz p3, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "SignupNativeDataManipulationError"

    move-object v2, p0

    move-object v4, p2

    .line 34
    invoke-static/range {v2 .. v7}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic attemptAndLogTypedCast$default(Lo/SystemTextClassifier;Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p4, "signupErrorReporter"

    .line 27
    invoke-static {p0, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "key"

    invoke-static {p2, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    if-nez p1, :cond_1

    if-eqz p3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SignupNativeFieldError"

    move-object v0, p0

    move-object v2, p2

    .line 118
    invoke-static/range {v0 .. v5}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p5, 0x3

    const-string v0, "T"

    .line 121
    invoke-static {p5, v0}, Lo/amh;->a(ILjava/lang/String;)V

    instance-of p5, p1, Ljava/lang/Object;

    if-nez p5, :cond_2

    if-eqz p3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SignupNativeDataManipulationError"

    move-object v0, p0

    move-object v2, p2

    .line 122
    invoke-static/range {v0 .. v5}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object p4, p1

    :cond_3
    :goto_0
    return-object p4
.end method

.method public static final synthetic getTypedField(Lcom/netflix/android/moneyball/GetField;Lo/SystemTextClassifier;Ljava/lang/String;Z)Lcom/netflix/android/moneyball/fields/Field;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">(",
            "Lcom/netflix/android/moneyball/GetField;",
            "Lo/SystemTextClassifier;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    const-string v0, "$this$getTypedField"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupErrorReporter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p0, p2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-eqz p3, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SignupNativeFieldError"

    move-object v1, p1

    move-object v3, p2

    .line 90
    invoke-static/range {v1 .. v6}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    const-string v2, "T?"

    .line 93
    invoke-static {v1, v2}, Lo/amh;->a(ILjava/lang/String;)V

    instance-of v1, p0, Ljava/lang/Object;

    if-nez v1, :cond_1

    if-eqz p3, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "SignupNativeDataManipulationError"

    move-object v2, p1

    move-object v4, p2

    .line 94
    invoke-static/range {v2 .. v7}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic getTypedField$default(Lcom/netflix/android/moneyball/GetField;Lo/SystemTextClassifier;Ljava/lang/String;ZILjava/lang/Object;)Lcom/netflix/android/moneyball/fields/Field;
    .locals 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p4, "$this$getTypedField"

    .line 21
    invoke-static {p0, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "signupErrorReporter"

    invoke-static {p1, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "key"

    invoke-static {p2, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-interface {p0, p2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p0

    const/4 p4, 0x0

    if-nez p0, :cond_1

    if-eqz p3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SignupNativeFieldError"

    move-object v0, p1

    move-object v2, p2

    .line 107
    invoke-static/range {v0 .. v5}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p5, 0x3

    const-string v0, "T?"

    .line 110
    invoke-static {p5, v0}, Lo/amh;->a(ILjava/lang/String;)V

    instance-of p5, p0, Ljava/lang/Object;

    if-nez p5, :cond_2

    if-eqz p3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SignupNativeDataManipulationError"

    move-object v0, p1

    move-object v2, p2

    .line 111
    invoke-static/range {v0 .. v5}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object p4, p0

    :cond_3
    :goto_0
    return-object p4
.end method

.method public static final synthetic getTypedFieldValue(Lcom/netflix/android/moneyball/GetField;Lo/SystemTextClassifier;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netflix/android/moneyball/GetField;",
            "Lo/SystemTextClassifier;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    const-string v0, "$this$getTypedFieldValue"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupErrorReporter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p0, p2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    if-eqz p3, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SignupNativeFieldError"

    move-object v1, p1

    move-object v3, p2

    .line 66
    invoke-static/range {v1 .. v6}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    const-string v2, "T?"

    .line 69
    invoke-static {v1, v2}, Lo/amh;->a(ILjava/lang/String;)V

    instance-of v1, p0, Ljava/lang/Object;

    if-nez v1, :cond_2

    if-eqz p3, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "SignupNativeDataManipulationError"

    move-object v2, p1

    move-object v4, p2

    .line 70
    invoke-static/range {v2 .. v7}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static synthetic getTypedFieldValue$default(Lcom/netflix/android/moneyball/GetField;Lo/SystemTextClassifier;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p4, "$this$getTypedFieldValue"

    .line 15
    invoke-static {p0, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "signupErrorReporter"

    invoke-static {p1, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "key"

    invoke-static {p2, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-interface {p0, p2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p0

    const/4 p4, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, p4

    :goto_0
    if-nez p0, :cond_2

    if-eqz p3, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SignupNativeFieldError"

    move-object v0, p1

    move-object v2, p2

    .line 79
    invoke-static/range {v0 .. v5}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 p5, 0x3

    const-string v0, "T?"

    .line 82
    invoke-static {p5, v0}, Lo/amh;->a(ILjava/lang/String;)V

    instance-of p5, p0, Ljava/lang/Object;

    if-nez p5, :cond_3

    if-eqz p3, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SignupNativeDataManipulationError"

    move-object v0, p1

    move-object v2, p2

    .line 83
    invoke-static/range {v0 .. v5}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object p4, p0

    :cond_4
    :goto_1
    return-object p4
.end method

.method public static final synthetic getTypedPathValue(Ljava/util/Map;Lo/SystemTextClassifier;Ljava/util/List;Z)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lo/SystemTextClassifier;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)TT;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    const-string v2, "$this$getTypedPathValue"

    invoke-static {p0, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "signupErrorReporter"

    move-object v3, p1

    invoke-static {p1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "path"

    invoke-static {p2, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p0, p2}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    const-string v1, ","

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p3, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "SignupNativeFieldError"

    move-object v3, p1

    .line 42
    invoke-static/range {v3 .. v8}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    const-string v4, "T?"

    .line 45
    invoke-static {v2, v4}, Lo/amh;->a(ILjava/lang/String;)V

    instance-of v2, v0, Ljava/lang/Object;

    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "SignupNativeDataManipulationError"

    move-object v3, p1

    .line 46
    invoke-static/range {v3 .. v8}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static synthetic getTypedPathValue$default(Ljava/util/Map;Lo/SystemTextClassifier;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move/from16 v2, p3

    :goto_0
    const-string v3, "$this$getTypedPathValue"

    .line 9
    invoke-static {p0, v3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "signupErrorReporter"

    move-object v4, p1

    invoke-static {p1, v3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "path"

    invoke-static {v1, v3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    const-string v1, ","

    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x4

    const/4 v5, 0x0

    const-string v6, "SignupNativeFieldError"

    move-object p0, p1

    move-object p1, v6

    move-object/from16 p2, v1

    move-object/from16 p3, v0

    move/from16 p4, v2

    move-object/from16 p5, v5

    .line 55
    invoke-static/range {p0 .. p5}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    const-string v6, "T?"

    .line 58
    invoke-static {v5, v6}, Lo/amh;->a(ILjava/lang/String;)V

    instance-of v5, v0, Ljava/lang/Object;

    if-nez v5, :cond_2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x4

    const/4 v5, 0x0

    const-string v6, "SignupNativeDataManipulationError"

    move-object p0, p1

    move-object p1, v6

    move-object/from16 p2, v1

    move-object/from16 p3, v0

    move/from16 p4, v2

    move-object/from16 p5, v5

    .line 59
    invoke-static/range {p0 .. p5}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v3, v0

    :cond_3
    :goto_1
    return-object v3
.end method
