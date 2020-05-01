.class public final Lo/SparseSetArray;
.super Lo/TextClassificationContext;
.source ""


# instance fields
.field private final a:Lo/Deprecated$ActionBar;

.field private final b:Lcom/netflix/android/moneyball/FlowMode;

.field private final c:Lo/InputBinding;

.field private final d:Lo/TextClassifierImpl;

.field private final e:Lo/TextClassificationManager;

.field private final j:Lo/SuggestionService;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;Lo/Voice;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupLogger"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelProviderFactory"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFieldViewModelConverterFactory"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p2, p8}, Lo/TextClassificationContext;-><init>(Lo/SystemTextClassifier;Lo/Voice;)V

    iput-object p1, p0, Lo/SparseSetArray;->b:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/SparseSetArray;->d:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/SparseSetArray;->e:Lo/TextClassificationManager;

    iput-object p5, p0, Lo/SparseSetArray;->c:Lo/InputBinding;

    iput-object p6, p0, Lo/SparseSetArray;->a:Lo/Deprecated$ActionBar;

    iput-object p7, p0, Lo/SparseSetArray;->j:Lo/SuggestionService;

    return-void
.end method


# virtual methods
.method public final a()Lo/ReflectiveProperty;
    .locals 9

    .line 42
    iget-object v0, p0, Lo/SparseSetArray;->b:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "paypalSuccessAction"

    .line 71
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 72
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 78
    :cond_0
    instance-of v2, v0, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v2, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    :goto_1
    check-cast v0, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v3, v0

    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 43
    :goto_2
    iget-object v0, p0, Lo/SparseSetArray;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_5

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "cancelAction"

    .line 85
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 86
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    if-nez v0, :cond_3

    :goto_3
    move-object v0, v1

    goto :goto_4

    .line 92
    :cond_3
    instance-of v2, v0, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v2, :cond_4

    goto :goto_3

    .line 97
    :cond_4
    :goto_4
    check-cast v0, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v4, v0

    goto :goto_5

    :cond_5
    move-object v4, v1

    .line 44
    :goto_5
    iget-object v0, p0, Lo/SparseSetArray;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_8

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "prevAction"

    .line 99
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 100
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    if-nez v0, :cond_6

    :goto_6
    move-object v0, v1

    goto :goto_7

    .line 106
    :cond_6
    instance-of v2, v0, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v2, :cond_7

    goto :goto_6

    .line 111
    :cond_7
    :goto_7
    check-cast v0, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v5, v0

    goto :goto_8

    :cond_8
    move-object v5, v1

    .line 48
    :goto_8
    iget-object v0, p0, Lo/SparseSetArray;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_c

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v6, "recognizedFormerMember"

    .line 45
    move-object v7, v1

    check-cast v7, Lorg/json/JSONObject;

    .line 112
    invoke-interface {v0, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :cond_9
    move-object v0, v1

    :goto_9
    if-nez v0, :cond_a

    .line 116
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    const-string v2, "SignupNativeFieldError"

    invoke-virtual {v0, v2, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_a
    move-object v0, v1

    goto :goto_b

    .line 119
    :cond_a
    instance-of v8, v0, Ljava/lang/Boolean;

    if-nez v8, :cond_b

    .line 120
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    const-string v2, "SignupNativeDataManipulationError"

    invoke-virtual {v0, v2, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_a

    .line 124
    :cond_b
    :goto_b
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object v0, v1

    :goto_c
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 49
    iget-object v0, p0, Lo/SparseSetArray;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_10

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    .line 125
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "webViewUrl"

    .line 126
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :cond_d
    move-object v0, v1

    :goto_d
    if-nez v0, :cond_e

    :goto_e
    move-object v0, v1

    goto :goto_f

    .line 133
    :cond_e
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    goto :goto_e

    .line 138
    :cond_f
    :goto_f
    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    goto :goto_10

    :cond_10
    move-object v7, v1

    .line 50
    :goto_10
    iget-object v0, p0, Lo/SparseSetArray;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_13

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "token"

    .line 140
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 141
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    if-nez v0, :cond_11

    goto :goto_11

    .line 147
    :cond_11
    instance-of v2, v0, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v2, :cond_12

    goto :goto_11

    :cond_12
    move-object v1, v0

    .line 152
    :goto_11
    check-cast v1, Lcom/netflix/android/moneyball/fields/StringField;

    :cond_13
    move-object v8, v1

    .line 41
    new-instance v0, Lo/ReflectiveProperty;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lo/ReflectiveProperty;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;ZLjava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;)V

    return-object v0
.end method

.method public final e(Landroidx/fragment/app/Fragment;)Lo/Slog;
    .locals 12

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lo/SparseSetArray;->a:Lo/Deprecated$ActionBar;

    invoke-static {p1, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    const-class v0, Lo/Singleton;

    invoke-virtual {p1, v0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Lo/Singleton;

    .line 56
    new-instance p1, Lo/GenerateLinksLogger;

    iget-object v7, p0, Lo/SparseSetArray;->e:Lo/TextClassificationManager;

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewViewModelInitializer$createMopWebViewViewModel$changePaymentRequestLogger$1;->a:Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewViewModelInitializer$createMopWebViewViewModel$changePaymentRequestLogger$1;

    move-object v9, v0

    check-cast v9, Lo/alB;

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 57
    invoke-virtual {p0}, Lo/SparseSetArray;->a()Lo/ReflectiveProperty;

    move-result-object v6

    .line 59
    new-instance v0, Lo/Slog;

    .line 60
    iget-object v2, p0, Lo/SparseSetArray;->d:Lo/TextClassifierImpl;

    .line 61
    iget-object v3, p0, Lo/SparseSetArray;->c:Lo/InputBinding;

    .line 62
    move-object v4, p1

    check-cast v4, Lo/TextClassificationSessionFactory;

    .line 65
    iget-object p1, p0, Lo/SparseSetArray;->j:Lo/SuggestionService;

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-static {p1, v1, v7, v1}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v7

    move-object v1, v0

    .line 59
    invoke-direct/range {v1 .. v7}, Lo/Slog;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/Singleton;Lo/ReflectiveProperty;Lo/TextClassifierService;)V

    return-object v0
.end method
