.class public final Lo/SuggestionService;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final d:Lo/InputBinding;


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

    iput-object p1, p0, Lo/SuggestionService;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/SuggestionService;->d:Lo/InputBinding;

    return-void
.end method

.method public static synthetic d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 40
    check-cast p1, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lo/SuggestionService;->b(Ljava/lang/String;)Lo/TextClassifierService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lo/TextClassifierService;
    .locals 2

    .line 41
    new-instance v0, Lo/TextClassifierService;

    iget-object v1, p0, Lo/SuggestionService;->d:Lo/InputBinding;

    invoke-virtual {p0, p1}, Lo/SuggestionService;->e(Ljava/lang/String;)Lo/ResolverRankerService;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lo/TextClassifierService;-><init>(Lo/InputBinding;Lo/ResolverRankerService;)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lo/ResolverRankerService;
    .locals 7

    .line 19
    iget-object v0, p0, Lo/SuggestionService;->a:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    .line 44
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "errorCode"

    .line 45
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 52
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1

    .line 57
    :cond_2
    :goto_2
    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    if-eqz p1, :cond_4

    goto :goto_4

    .line 20
    :cond_4
    iget-object p1, p0, Lo/SuggestionService;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    move-object p1, v1

    .line 25
    :goto_4
    sget-object v2, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$ErrorStringsWithArg;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$ErrorStringsWithArg;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$ErrorStringsWithArg;->getCARRIER()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lo/ako;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 27
    iget-object v2, p0, Lo/SuggestionService;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_9

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v4, "partnerDisplayName"

    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    .line 58
    invoke-interface {v2, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    :cond_6
    move-object v2, v1

    :goto_5
    if-nez v2, :cond_7

    .line 62
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    const-string v3, "SignupNativeFieldError"

    invoke-virtual {v2, v3, v4, v5}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_6
    move-object v2, v1

    goto :goto_7

    .line 65
    :cond_7
    instance-of v6, v2, Ljava/lang/String;

    if-nez v6, :cond_8

    .line 66
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    const-string v3, "SignupNativeDataManipulationError"

    invoke-virtual {v2, v3, v4, v5}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_6

    .line 70
    :cond_8
    :goto_7
    check-cast v2, Ljava/lang/String;

    goto :goto_8

    :cond_9
    move-object v2, v1

    :goto_8
    const-string v3, "carrier"

    .line 27
    invoke-static {v3, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 26
    invoke-static {v2}, Lo/akI;->a(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    goto :goto_9

    :cond_a
    move-object v2, v1

    .line 34
    :goto_9
    iget-object v3, p0, Lo/SuggestionService;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_e

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    .line 71
    move-object v4, v1

    check-cast v4, Lorg/json/JSONObject;

    const-string v4, "isPaymentPickerError"

    .line 72
    invoke-interface {v3, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_a

    :cond_b
    move-object v3, v1

    :goto_a
    if-nez v3, :cond_c

    goto :goto_b

    .line 79
    :cond_c
    instance-of v4, v3, Ljava/lang/Boolean;

    if-nez v4, :cond_d

    goto :goto_b

    :cond_d
    move-object v1, v3

    .line 84
    :goto_b
    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_c

    :cond_e
    const/4 v1, 0x0

    :goto_c
    if-eqz p1, :cond_f

    goto :goto_d

    :cond_f
    const-string p1, ""

    .line 22
    :goto_d
    new-instance v3, Lo/ResolverRankerService;

    invoke-direct {v3, v0, v2, v1, p1}, Lo/ResolverRankerService;-><init>(Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    return-object v3
.end method
