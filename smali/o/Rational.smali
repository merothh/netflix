.class public final Lo/Rational;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final b:Lo/InputBinding;

.field private final c:Lo/TextClassifierImpl;

.field private final d:Lo/SuggestionService;

.field private final e:Lo/Deprecated$ActionBar;

.field private final j:Lo/CharacterPickerDialog;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/TextClassifierImpl;Lo/SuggestionService;Lo/Deprecated$ActionBar;Lo/CharacterPickerDialog;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelProviderFactory"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maturityPinEntryViewModelInitializer"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/Rational;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/Rational;->b:Lo/InputBinding;

    iput-object p4, p0, Lo/Rational;->c:Lo/TextClassifierImpl;

    iput-object p5, p0, Lo/Rational;->d:Lo/SuggestionService;

    iput-object p6, p0, Lo/Rational;->e:Lo/Deprecated$ActionBar;

    iput-object p7, p0, Lo/Rational;->j:Lo/CharacterPickerDialog;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/fragment/app/Fragment;)Lo/Range;
    .locals 8

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lo/Rational;->c()Lo/PrintStreamPrinter;

    move-result-object v3

    .line 39
    iget-object v0, p0, Lo/Rational;->e:Lo/Deprecated$ActionBar;

    invoke-static {p1, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    const-class v0, Lo/Pools;

    invoke-virtual {p1, v0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lo/Pools;

    .line 40
    new-instance p1, Lo/Range;

    .line 41
    iget-object v2, p0, Lo/Rational;->b:Lo/InputBinding;

    .line 44
    iget-object v5, p0, Lo/Rational;->c:Lo/TextClassifierImpl;

    .line 45
    iget-object v0, p0, Lo/Rational;->d:Lo/SuggestionService;

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v1, v6, v1}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v6

    .line 46
    iget-object v0, p0, Lo/Rational;->j:Lo/CharacterPickerDialog;

    invoke-virtual {v0}, Lo/CharacterPickerDialog;->d()Lo/AllCapsTransformationMethod;

    move-result-object v7

    move-object v1, p1

    .line 40
    invoke-direct/range {v1 .. v7}, Lo/Range;-><init>(Lo/InputBinding;Lo/PrintStreamPrinter;Lo/Pools;Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/AllCapsTransformationMethod;)V

    return-object p1
.end method

.method public final c()Lo/PrintStreamPrinter;
    .locals 8

    .line 30
    iget-object v0, p0, Lo/Rational;->a:Lcom/netflix/android/moneyball/FlowMode;

    const-string v1, "SignupNativeDataManipulationError"

    const-string v2, "SignupNativeFieldError"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "maturityPinAction"

    .line 52
    invoke-interface {v0, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 53
    move-object v6, v3

    check-cast v6, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 56
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    move-object v0, v3

    goto :goto_1

    .line 59
    :cond_0
    instance-of v7, v0, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v7, :cond_1

    .line 60
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v1, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    check-cast v0, Lcom/netflix/android/moneyball/fields/ActionField;

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 31
    :goto_2
    iget-object v4, p0, Lo/Rational;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v4, :cond_5

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v6, "skipAction"

    .line 65
    invoke-interface {v4, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 66
    move-object v7, v3

    check-cast v7, Lorg/json/JSONObject;

    if-nez v4, :cond_3

    .line 69
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_3
    move-object v4, v3

    goto :goto_4

    .line 72
    :cond_3
    instance-of v2, v4, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v2, :cond_4

    .line 73
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    .line 77
    :cond_4
    :goto_4
    move-object v1, v4

    check-cast v1, Lcom/netflix/android/moneyball/fields/ActionField;

    goto :goto_5

    :cond_5
    move-object v1, v3

    .line 32
    :goto_5
    iget-object v2, p0, Lo/Rational;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_9

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    .line 78
    move-object v4, v3

    check-cast v4, Lorg/json/JSONObject;

    const-string v4, "age"

    .line 79
    invoke-interface {v2, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v3

    :goto_6
    if-nez v2, :cond_7

    :goto_7
    move-object v2, v3

    goto :goto_8

    .line 86
    :cond_7
    instance-of v4, v2, Ljava/lang/Long;

    if-nez v4, :cond_8

    goto :goto_7

    .line 91
    :cond_8
    :goto_8
    check-cast v2, Ljava/lang/Long;

    goto :goto_9

    :cond_9
    move-object v2, v3

    .line 32
    :goto_9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 33
    iget-object v4, p0, Lo/Rational;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v4, :cond_d

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 92
    move-object v5, v3

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "pinRequiredRating"

    .line 93
    invoke-interface {v4, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_a

    :cond_a
    move-object v4, v3

    :goto_a
    if-nez v4, :cond_b

    goto :goto_b

    .line 100
    :cond_b
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_c

    goto :goto_b

    :cond_c
    move-object v3, v4

    .line 105
    :goto_b
    check-cast v3, Ljava/lang/String;

    .line 33
    :cond_d
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 29
    new-instance v4, Lo/PrintStreamPrinter;

    invoke-direct {v4, v0, v1, v2, v3}, Lo/PrintStreamPrinter;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method
