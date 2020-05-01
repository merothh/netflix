.class public final Lo/TileService;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final d:Lcom/netflix/android/moneyball/FlowMode;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/TileService;->d:Lcom/netflix/android/moneyball/FlowMode;

    return-void
.end method


# virtual methods
.method public final b()Lo/OemLockManager;
    .locals 2

    .line 51
    new-instance v0, Lo/OemLockManager;

    invoke-virtual {p0}, Lo/TileService;->e()Lo/StatusBarNotification;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/OemLockManager;-><init>(Lo/StatusBarNotification;)V

    return-object v0
.end method

.method public final e()Lo/StatusBarNotification;
    .locals 13

    .line 17
    iget-object v0, p0, Lo/TileService;->d:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v3, "fields"

    const-string v4, "mopType"

    const-string v5, "fieldGroup"

    .line 21
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v3}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 55
    invoke-static {v0, v3}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    const-string v3, ","

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 59
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    const-string v2, "SignupNativeFieldError"

    invoke-virtual {v0, v2, v3, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 62
    :cond_0
    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_1

    .line 63
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    const-string v2, "SignupNativeDataManipulationError"

    invoke-virtual {v0, v2, v3, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 67
    :cond_1
    :goto_1
    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v1

    .line 26
    :goto_2
    iget-object v0, p0, Lo/TileService;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_5

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "editPaymentAction"

    .line 69
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 70
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    if-nez v0, :cond_3

    :goto_3
    move-object v0, v1

    goto :goto_4

    .line 76
    :cond_3
    instance-of v2, v0, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v2, :cond_4

    goto :goto_3

    .line 81
    :cond_4
    :goto_4
    check-cast v0, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v3, v0

    goto :goto_5

    :cond_5
    move-object v3, v1

    .line 27
    :goto_5
    iget-object v0, p0, Lo/TileService;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    .line 82
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "firstName"

    .line 83
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object v0, v1

    :goto_6
    if-nez v0, :cond_7

    :goto_7
    move-object v0, v1

    goto :goto_8

    .line 90
    :cond_7
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_8

    goto :goto_7

    .line 95
    :cond_8
    :goto_8
    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_9

    :cond_9
    move-object v4, v1

    .line 28
    :goto_9
    iget-object v0, p0, Lo/TileService;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_d

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    .line 96
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "lastName"

    .line 97
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    :cond_a
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_b

    :goto_b
    move-object v0, v1

    goto :goto_c

    .line 104
    :cond_b
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_c

    goto :goto_b

    .line 109
    :cond_c
    :goto_c
    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    goto :goto_d

    :cond_d
    move-object v5, v1

    .line 47
    :goto_d
    iget-object v0, p0, Lo/TileService;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_11

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    .line 110
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "email"

    .line 111
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_e

    :cond_e
    move-object v0, v1

    :goto_e
    if-nez v0, :cond_f

    goto :goto_f

    .line 118
    :cond_f
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    goto :goto_f

    :cond_10
    move-object v1, v0

    .line 123
    :goto_f
    check-cast v1, Ljava/lang/String;

    :cond_11
    move-object v7, v1

    .line 25
    new-instance v0, Lo/StatusBarNotification;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/StatusBarNotification;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
