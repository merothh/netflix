.class public final Lo/TypedValue;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final b:Lo/SuggestionService;

.field private final c:Lo/InputBinding;

.field private final d:Lo/TextClassifierImplNative;

.field private final e:Lo/Deprecated$ActionBar;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/TextClassifierImplNative;Lo/SuggestionService;Lo/Deprecated$ActionBar;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRampNetworkManager"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelProviderFactory"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/TypedValue;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/TypedValue;->c:Lo/InputBinding;

    iput-object p4, p0, Lo/TypedValue;->d:Lo/TextClassifierImplNative;

    iput-object p5, p0, Lo/TypedValue;->b:Lo/SuggestionService;

    iput-object p6, p0, Lo/TypedValue;->e:Lo/Deprecated$ActionBar;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;)Lo/StatsLog;
    .locals 8

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lo/TypedValue;->b()Lo/TimeFormatException;

    move-result-object v4

    .line 51
    iget-object v0, p0, Lo/TypedValue;->e:Lo/Deprecated$ActionBar;

    invoke-static {p1, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    const-class v0, Lo/Spline;

    invoke-virtual {p1, v0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Lo/Spline;

    .line 53
    new-instance p1, Lo/StatsLog;

    .line 54
    iget-object v2, p0, Lo/TypedValue;->c:Lo/InputBinding;

    .line 57
    invoke-static {}, Lo/adq;->d()Z

    move-result v5

    .line 58
    iget-object v6, p0, Lo/TypedValue;->d:Lo/TextClassifierImplNative;

    .line 59
    iget-object v0, p0, Lo/TypedValue;->b:Lo/SuggestionService;

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-static {v0, v1, v7, v1}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v7

    move-object v1, p1

    .line 53
    invoke-direct/range {v1 .. v7}, Lo/StatsLog;-><init>(Lo/InputBinding;Lo/Spline;Lo/TimeFormatException;ZLo/TextClassifierImplNative;Lo/TextClassifierService;)V

    return-object p1
.end method

.method public final b()Lo/TimeFormatException;
    .locals 9

    .line 29
    iget-object v0, p0, Lo/TypedValue;->a:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "fields"

    const-string v3, "videos"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/util/List;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 31
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    :cond_2
    invoke-virtual {p0}, Lo/TypedValue;->j()Lo/SystemTextClassifier;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "SignupNativeFieldError"

    const-string v5, "videos"

    invoke-static/range {v3 .. v8}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    :cond_3
    if-eqz v0, :cond_7

    .line 35
    check-cast v0, Ljava/lang/Iterable;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 66
    check-cast v3, Ljava/util/Map;

    const-string v4, "url"

    .line 36
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    check-cast v4, Ljava/lang/String;

    const-string v5, "videoId"

    .line 37
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 38
    new-instance v5, Lo/TimedRemoteCaller;

    invoke-direct {v5, v4, v3}, Lo/TimedRemoteCaller;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Number"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_6
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    goto :goto_2

    :cond_7
    move-object v0, v1

    .line 42
    :goto_2
    iget-object v2, p0, Lo/TypedValue;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_b

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 68
    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "profileName"

    .line 69
    invoke-interface {v2, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_9

    :goto_4
    move-object v2, v1

    goto :goto_5

    .line 76
    :cond_9
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_a

    goto :goto_4

    .line 81
    :cond_a
    :goto_5
    check-cast v2, Ljava/lang/String;

    goto :goto_6

    :cond_b
    move-object v2, v1

    .line 43
    :goto_6
    iget-object v3, p0, Lo/TypedValue;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_e

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "nextAction"

    .line 82
    invoke-interface {v3, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    .line 83
    move-object v6, v1

    check-cast v6, Lorg/json/JSONObject;

    if-nez v3, :cond_c

    .line 86
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    const-string v4, "SignupNativeFieldError"

    invoke-virtual {v3, v4, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_7
    move-object v3, v1

    goto :goto_8

    .line 89
    :cond_c
    instance-of v7, v3, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v7, :cond_d

    .line 90
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    const-string v4, "SignupNativeDataManipulationError"

    invoke-virtual {v3, v4, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_7

    .line 94
    :cond_d
    :goto_8
    check-cast v3, Lcom/netflix/android/moneyball/fields/ActionField;

    goto :goto_9

    :cond_e
    move-object v3, v1

    .line 44
    :goto_9
    iget-object v4, p0, Lo/TypedValue;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v4, :cond_11

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v5, "selections"

    .line 96
    invoke-interface {v4, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 97
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    if-nez v4, :cond_f

    goto :goto_a

    .line 103
    :cond_f
    instance-of v5, v4, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v5, :cond_10

    goto :goto_a

    :cond_10
    move-object v1, v4

    .line 108
    :goto_a
    check-cast v1, Lcom/netflix/android/moneyball/fields/StringField;

    :cond_11
    if-eqz v0, :cond_12

    goto :goto_b

    .line 45
    :cond_12
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    .line 41
    :goto_b
    new-instance v4, Lo/TimeFormatException;

    invoke-direct {v4, v2, v3, v1, v0}, Lo/TimeFormatException;-><init>(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/StringField;Ljava/util/List;)V

    return-object v4
.end method
