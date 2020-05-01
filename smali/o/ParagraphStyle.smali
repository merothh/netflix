.class public final Lo/ParagraphStyle;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final d:Lo/InputBinding;

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

    .line 17
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/ParagraphStyle;->e:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/ParagraphStyle;->d:Lo/InputBinding;

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/android/moneyball/GetField;)Lo/IconMarginSpan;
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 21
    move-object v1, p0

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v1, "rightOfWithdrawal"

    .line 46
    invoke-interface {p1, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    .line 47
    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 53
    :cond_0
    instance-of v2, v1, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez v2, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    check-cast v1, Lcom/netflix/android/moneyball/fields/BooleanField;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/BooleanField;->getData()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "required"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v0

    :goto_3
    instance-of v3, v2, Ljava/lang/Boolean;

    if-nez v3, :cond_4

    move-object v2, v0

    :cond_4
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-eqz p1, :cond_8

    .line 24
    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v3, "hasAcceptedTermsOfUse"

    .line 60
    invoke-interface {p1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    .line 61
    move-object v4, v0

    check-cast v4, Lorg/json/JSONObject;

    if-nez v3, :cond_6

    :goto_5
    move-object v3, v0

    goto :goto_6

    .line 67
    :cond_6
    instance-of v4, v3, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez v4, :cond_7

    goto :goto_5

    .line 72
    :cond_7
    :goto_6
    check-cast v3, Lcom/netflix/android/moneyball/fields/BooleanField;

    move-object v5, v3

    goto :goto_7

    :cond_8
    move-object v5, v0

    :goto_7
    if-eqz p1, :cond_c

    .line 25
    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 73
    move-object v3, v0

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "termsOfUseRegion"

    .line 74
    invoke-interface {p1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_8

    :cond_9
    move-object v3, v0

    :goto_8
    if-nez v3, :cond_a

    :goto_9
    move-object v3, v0

    goto :goto_a

    .line 81
    :cond_a
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_b

    goto :goto_9

    .line 86
    :cond_b
    :goto_a
    check-cast v3, Ljava/lang/String;

    move-object v6, v3

    goto :goto_b

    :cond_c
    move-object v6, v0

    :goto_b
    if-eqz p1, :cond_10

    .line 26
    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 87
    move-object v3, v0

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "termsOfUseMinimumVerificationAge"

    .line 88
    invoke-interface {p1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_c

    :cond_d
    move-object v3, v0

    :goto_c
    if-nez v3, :cond_e

    :goto_d
    move-object v3, v0

    goto :goto_e

    .line 95
    :cond_e
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_f

    goto :goto_d

    .line 100
    :cond_f
    :goto_e
    check-cast v3, Ljava/lang/String;

    move-object v7, v3

    goto :goto_f

    :cond_10
    move-object v7, v0

    .line 27
    :goto_f
    iget-object v3, p0, Lo/ParagraphStyle;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_11

    invoke-virtual {p0, v3}, Lo/ParagraphStyle;->b(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_10

    :cond_11
    move-object v8, v0

    :goto_10
    if-eqz p1, :cond_15

    .line 30
    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 101
    move-object v3, v0

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "internationalTransactionMessage"

    .line 102
    invoke-interface {p1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_11

    :cond_12
    move-object v3, v0

    :goto_11
    if-nez v3, :cond_13

    :goto_12
    move-object v3, v0

    goto :goto_13

    .line 109
    :cond_13
    instance-of v4, v3, Ljava/lang/Boolean;

    if-nez v4, :cond_14

    goto :goto_12

    .line 114
    :cond_14
    :goto_13
    check-cast v3, Ljava/lang/Boolean;

    goto :goto_14

    :cond_15
    move-object v3, v0

    :goto_14
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v3, v9}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz p1, :cond_19

    .line 31
    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 115
    move-object v3, v0

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "isSchufa"

    .line 116
    invoke-interface {p1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_15

    :cond_16
    move-object v3, v0

    :goto_15
    if-nez v3, :cond_17

    :goto_16
    move-object v3, v0

    goto :goto_17

    .line 123
    :cond_17
    instance-of v10, v3, Ljava/lang/Boolean;

    if-nez v10, :cond_18

    goto :goto_16

    .line 128
    :cond_18
    :goto_17
    check-cast v3, Ljava/lang/Boolean;

    goto :goto_18

    :cond_19
    move-object v3, v0

    :goto_18
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v3, v10}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz p1, :cond_1d

    .line 32
    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 129
    move-object v3, v0

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "showCardChainingDisclosure"

    .line 130
    invoke-interface {p1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_19

    :cond_1a
    move-object p1, v0

    :goto_19
    if-nez p1, :cond_1b

    :goto_1a
    move-object p1, v0

    goto :goto_1b

    .line 137
    :cond_1b
    instance-of v3, p1, Ljava/lang/Boolean;

    if-nez v3, :cond_1c

    goto :goto_1a

    .line 142
    :cond_1c
    :goto_1b
    check-cast p1, Ljava/lang/Boolean;

    goto :goto_1c

    :cond_1d
    move-object p1, v0

    :goto_1c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 33
    iget-object p1, p0, Lo/ParagraphStyle;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz p1, :cond_21

    check-cast p1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 143
    move-object v3, v0

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "hasFreeTrial"

    .line 144
    invoke-interface {p1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1d

    :cond_1e
    move-object p1, v0

    :goto_1d
    if-nez p1, :cond_1f

    :goto_1e
    move-object p1, v0

    goto :goto_1f

    .line 151
    :cond_1f
    instance-of v3, p1, Ljava/lang/Boolean;

    if-nez v3, :cond_20

    goto :goto_1e

    .line 156
    :cond_20
    :goto_1f
    check-cast p1, Ljava/lang/Boolean;

    goto :goto_20

    :cond_21
    move-object p1, v0

    :goto_20
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v2, :cond_22

    move-object v13, v1

    goto :goto_21

    :cond_22
    move-object v13, v0

    .line 23
    :goto_21
    new-instance p1, Lo/IconMarginSpan;

    move-object v4, p1

    invoke-direct/range {v4 .. v13}, Lo/IconMarginSpan;-><init>(Lcom/netflix/android/moneyball/fields/BooleanField;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/netflix/android/moneyball/fields/BooleanField;)V

    return-object p1
.end method

.method public final d(Lcom/netflix/android/moneyball/GetField;)Lo/ForegroundColorSpan;
    .locals 3

    .line 39
    new-instance v0, Lo/ForegroundColorSpan;

    iget-object v1, p0, Lo/ParagraphStyle;->d:Lo/InputBinding;

    invoke-virtual {p0, p1}, Lo/ParagraphStyle;->a(Lcom/netflix/android/moneyball/GetField;)Lo/IconMarginSpan;

    move-result-object p1

    new-instance v2, Lo/LineHeightSpan;

    invoke-direct {v2}, Lo/LineHeightSpan;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lo/ForegroundColorSpan;-><init>(Lo/InputBinding;Lo/IconMarginSpan;Lo/LineHeightSpan;)V

    return-object v0
.end method

.method public final e(Lcom/netflix/android/moneyball/GetField;)Lo/LocaleSpan;
    .locals 3

    .line 42
    new-instance v0, Lo/LocaleSpan;

    iget-object v1, p0, Lo/ParagraphStyle;->d:Lo/InputBinding;

    invoke-virtual {p0, p1}, Lo/ParagraphStyle;->a(Lcom/netflix/android/moneyball/GetField;)Lo/IconMarginSpan;

    move-result-object p1

    new-instance v2, Lo/LineHeightSpan;

    invoke-direct {v2}, Lo/LineHeightSpan;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lo/LocaleSpan;-><init>(Lo/InputBinding;Lo/IconMarginSpan;Lo/LineHeightSpan;)V

    return-object v0
.end method
