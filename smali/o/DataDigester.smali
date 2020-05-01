.class public final Lo/DataDigester;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final e:Lo/InputBinding;


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

    iput-object p1, p0, Lo/DataDigester;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/DataDigester;->e:Lo/InputBinding;

    return-void
.end method

.method private final d(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5fbb01cc

    if-eq v2, v3, :cond_7

    const v3, -0x45b5447d    # -7.73363E-4f

    if-eq v2, v3, :cond_3

    const v3, -0x108825e4

    if-eq v2, v3, :cond_2

    goto/16 :goto_6

    :cond_2
    const-string v2, "dcbVerify"

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_3
    const-string v2, "enterOTPCodeMode"

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    check-cast p1, Lcom/netflix/android/moneyball/GetField;

    move-object v1, p0

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v2, "resendCodeAction"

    move-object v3, v0

    check-cast v3, Lorg/json/JSONObject;

    .line 53
    invoke-interface {p1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_5

    .line 57
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object p1

    const-string v1, "SignupNativeFieldError"

    invoke-virtual {p1, v1, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 60
    :cond_5
    instance-of v4, p1, Ljava/lang/String;

    if-nez v4, :cond_6

    .line 61
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object p1

    const-string v1, "SignupNativeDataManipulationError"

    invoke-virtual {p1, v1, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_6
    move-object v0, p1

    .line 65
    :goto_2
    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :cond_7
    const-string v2, "partnerDcbVerify"

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 30
    :goto_3
    check-cast p1, Lcom/netflix/android/moneyball/GetField;

    move-object v1, p0

    check-cast v1, Lo/TextClassificationSessionId;

    .line 39
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    const-string v1, "dcbRequestAction"

    .line 40
    invoke-interface {p1, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_8
    move-object p1, v0

    :goto_4
    if-nez p1, :cond_9

    goto :goto_5

    .line 47
    :cond_9
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    move-object v0, p1

    .line 52
    :goto_5
    check-cast v0, Ljava/lang/String;

    :cond_b
    :goto_6
    return-object v0
.end method


# virtual methods
.method public final b()Lo/ApkVerityBuilder;
    .locals 2

    .line 19
    new-instance v0, Lo/ApkVerityBuilder;

    .line 20
    iget-object v1, p0, Lo/DataDigester;->a:Lcom/netflix/android/moneyball/FlowMode;

    invoke-direct {p0, v1}, Lo/DataDigester;->d(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 19
    :goto_0
    invoke-direct {v0, v1}, Lo/ApkVerityBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final e()Lo/ByteBufferFactory;
    .locals 3

    .line 36
    new-instance v0, Lo/ByteBufferFactory;

    iget-object v1, p0, Lo/DataDigester;->e:Lo/InputBinding;

    invoke-virtual {p0}, Lo/DataDigester;->b()Lo/ApkVerityBuilder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ByteBufferFactory;-><init>(Lo/InputBinding;Lo/ApkVerityBuilder;)V

    return-object v0
.end method
