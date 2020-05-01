.class public final Lo/TranslationAnimationCreator;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/SuggestionService;

.field private final b:Lo/TextClassifierImpl;

.field private final c:Lo/InputBinding;

.field private final d:Lcom/netflix/android/moneyball/FlowMode;

.field private final e:Lo/Deprecated$ActionBar;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelProviderFactory"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/TranslationAnimationCreator;->d:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/TranslationAnimationCreator;->b:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/TranslationAnimationCreator;->c:Lo/InputBinding;

    iput-object p5, p0, Lo/TranslationAnimationCreator;->e:Lo/Deprecated$ActionBar;

    iput-object p6, p0, Lo/TranslationAnimationCreator;->a:Lo/SuggestionService;

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;)Lo/TransitionListenerAdapter;
    .locals 7

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    check-cast p1, Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lo/TranslationAnimationCreator;->e:Lo/Deprecated$ActionBar;

    invoke-static {p1, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    .line 39
    const-class v0, Lo/TransitionPropagation;

    invoke-virtual {p1, v0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    move-object v4, p1

    check-cast v4, Lo/TransitionPropagation;

    .line 41
    new-instance p1, Lo/TransitionListenerAdapter;

    .line 42
    iget-object v2, p0, Lo/TranslationAnimationCreator;->b:Lo/TextClassifierImpl;

    .line 43
    iget-object v3, p0, Lo/TranslationAnimationCreator;->c:Lo/InputBinding;

    .line 45
    iget-object v0, p0, Lo/TranslationAnimationCreator;->a:Lo/SuggestionService;

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v1, v5, v1}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v5

    .line 46
    invoke-virtual {p0}, Lo/TranslationAnimationCreator;->b()Lo/TransitionSet;

    move-result-object v6

    move-object v1, p1

    .line 41
    invoke-direct/range {v1 .. v6}, Lo/TransitionListenerAdapter;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TransitionPropagation;Lo/TextClassifierService;Lo/TransitionSet;)V

    return-object p1
.end method

.method public final b()Lo/TransitionSet;
    .locals 10

    .line 27
    iget-object v0, p0, Lo/TranslationAnimationCreator;->d:Lcom/netflix/android/moneyball/FlowMode;

    const-string v1, "SignupNativeDataManipulationError"

    const-string v2, "SignupNativeFieldError"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "cardProcessingType"

    move-object v6, v3

    check-cast v6, Lorg/json/JSONObject;

    .line 51
    invoke-interface {v0, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    .line 55
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v0, v3

    goto :goto_2

    .line 58
    :cond_1
    instance-of v7, v0, Ljava/lang/String;

    if-nez v7, :cond_2

    .line 59
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v1, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 63
    :cond_2
    :goto_2
    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v0, v3

    .line 28
    :goto_3
    iget-object v4, p0, Lo/TranslationAnimationCreator;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v4, :cond_6

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v6, "nextAction"

    .line 64
    invoke-interface {v4, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 65
    move-object v7, v3

    check-cast v7, Lorg/json/JSONObject;

    if-nez v4, :cond_4

    .line 68
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v2, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_4
    move-object v4, v3

    goto :goto_5

    .line 71
    :cond_4
    instance-of v8, v4, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v8, :cond_5

    .line 72
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v1, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_4

    .line 76
    :cond_5
    :goto_5
    check-cast v4, Lcom/netflix/android/moneyball/fields/ActionField;

    goto :goto_6

    :cond_6
    move-object v4, v3

    .line 29
    :goto_6
    iget-object v5, p0, Lo/TranslationAnimationCreator;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_9

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v6, p0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v7, "backAction"

    .line 77
    invoke-interface {v5, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    .line 78
    move-object v8, v3

    check-cast v8, Lorg/json/JSONObject;

    if-nez v5, :cond_7

    .line 81
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v2, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_7
    move-object v5, v3

    goto :goto_8

    .line 84
    :cond_7
    instance-of v9, v5, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v9, :cond_8

    .line 85
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v1, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_7

    .line 89
    :cond_8
    :goto_8
    check-cast v5, Lcom/netflix/android/moneyball/fields/ActionField;

    goto :goto_9

    :cond_9
    move-object v5, v3

    .line 33
    :goto_9
    iget-object v6, p0, Lo/TranslationAnimationCreator;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v6, :cond_d

    check-cast v6, Lcom/netflix/android/moneyball/GetField;

    move-object v7, p0

    check-cast v7, Lo/TextClassificationSessionId;

    const-string v8, "recognizedFormerMember"

    .line 30
    move-object v9, v3

    check-cast v9, Lorg/json/JSONObject;

    .line 90
    invoke-interface {v6, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v6

    goto :goto_a

    :cond_a
    move-object v6, v3

    :goto_a
    if-nez v6, :cond_b

    .line 94
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v8, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_b

    .line 97
    :cond_b
    instance-of v2, v6, Ljava/lang/Boolean;

    if-nez v2, :cond_c

    .line 98
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v1, v8, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_b

    :cond_c
    move-object v3, v6

    .line 102
    :goto_b
    check-cast v3, Ljava/lang/Boolean;

    :cond_d
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 26
    new-instance v2, Lo/TransitionSet;

    invoke-direct {v2, v0, v4, v5, v1}, Lo/TransitionSet;-><init>(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Z)V

    return-object v2
.end method
