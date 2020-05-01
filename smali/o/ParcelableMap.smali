.class public final Lo/ParcelableMap;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final b:Lo/InputBinding;

.field private final c:Lcom/netflix/android/moneyball/FlowMode;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/ParcelableMap;->c:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/ParcelableMap;->b:Lo/InputBinding;

    return-void
.end method


# virtual methods
.method public final a()Lo/Helper;
    .locals 13

    const-string v0, "adaptiveFields"

    const-string v1, "slidingDoors"

    const-string v2, "cards"

    .line 23
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lo/ParcelableMap;->c:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 38
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    const-string v0, ","

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v2

    check-cast v4, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 42
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    const-string v3, "SignupNativeFieldError"

    invoke-virtual {v1, v3, v0, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 45
    :cond_0
    instance-of v5, v1, Ljava/util/List;

    if-nez v5, :cond_1

    .line 46
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    const-string v3, "SignupNativeDataManipulationError"

    invoke-virtual {v1, v3, v0, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    goto :goto_2

    .line 25
    :cond_2
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_3

    .line 28
    invoke-static {}, Lo/amh;->c()V

    .line 29
    :cond_3
    iget-object v0, p0, Lo/ParcelableMap;->c:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_7

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 51
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "partnerDisplayName"

    .line 52
    invoke-interface {v0, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    if-nez v0, :cond_5

    :goto_4
    move-object v0, v2

    goto :goto_5

    .line 59
    :cond_5
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_4

    .line 64
    :cond_6
    :goto_5
    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object v0, v2

    .line 30
    :goto_6
    iget-object v3, p0, Lo/ParcelableMap;->c:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_b

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    .line 65
    move-object v4, v2

    check-cast v4, Lorg/json/JSONObject;

    const-string v4, "partnerName"

    .line 66
    invoke-interface {v3, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_7

    :cond_8
    move-object v3, v2

    :goto_7
    if-nez v3, :cond_9

    :goto_8
    move-object v3, v2

    goto :goto_9

    .line 73
    :cond_9
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_a

    goto :goto_8

    .line 78
    :cond_a
    :goto_9
    check-cast v3, Ljava/lang/String;

    goto :goto_a

    :cond_b
    move-object v3, v2

    .line 31
    :goto_a
    iget-object v4, p0, Lo/ParcelableMap;->c:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v4, :cond_c

    invoke-virtual {p0, v4}, Lo/ParcelableMap;->a(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;

    move-result-object v2

    .line 27
    :cond_c
    new-instance v4, Lo/Helper;

    invoke-direct {v4, v1, v0, v3, v2}, Lo/Helper;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public final d()Lo/AutofillManagerInternal;
    .locals 3

    .line 35
    new-instance v0, Lo/AutofillManagerInternal;

    iget-object v1, p0, Lo/ParcelableMap;->b:Lo/InputBinding;

    invoke-virtual {p0}, Lo/ParcelableMap;->a()Lo/Helper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/AutofillManagerInternal;-><init>(Lo/InputBinding;Lo/Helper;)V

    return-object v0
.end method
