.class public final Lo/ViewStub;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/TextClassificationManager;

.field private final b:Lo/TextClassifierImpl;

.field private final c:Lcom/netflix/android/moneyball/FlowMode;

.field private final d:Lo/Deprecated$ActionBar;

.field private final e:Lo/InputBinding;

.field private final g:Lo/SuggestionService;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;)V
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

    .line 28
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/ViewStub;->c:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/ViewStub;->b:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/ViewStub;->a:Lo/TextClassificationManager;

    iput-object p5, p0, Lo/ViewStub;->e:Lo/InputBinding;

    iput-object p6, p0, Lo/ViewStub;->d:Lo/Deprecated$ActionBar;

    iput-object p7, p0, Lo/ViewStub;->g:Lo/SuggestionService;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/fragment/app/Fragment;)Lo/WindowCallbacks;
    .locals 8

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lo/WindowCallbacks;

    .line 43
    iget-object v2, p0, Lo/ViewStub;->b:Lo/TextClassifierImpl;

    .line 44
    iget-object v3, p0, Lo/ViewStub;->e:Lo/InputBinding;

    .line 45
    iget-object v1, p0, Lo/ViewStub;->g:Lo/SuggestionService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v4, v5, v4}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v4

    .line 46
    new-instance v1, Lo/GenerateLinksLogger;

    .line 47
    iget-object v5, p0, Lo/ViewStub;->a:Lo/TextClassificationManager;

    .line 48
    sget-object v6, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestViewModelInitializer$createReplayRequestViewModel$1;->a:Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestViewModelInitializer$createReplayRequestViewModel$1;

    check-cast v6, Lo/alB;

    .line 49
    sget-object v7, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestViewModelInitializer$createReplayRequestViewModel$2;->a:Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestViewModelInitializer$createReplayRequestViewModel$2;

    check-cast v7, Lo/alB;

    .line 46
    invoke-direct {v1, v5, v6, v7}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    move-object v6, v1

    check-cast v6, Lo/TextClassificationSessionFactory;

    .line 52
    iget-object v1, p0, Lo/ViewStub;->d:Lo/Deprecated$ActionBar;

    .line 50
    invoke-static {p1, v1}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    .line 53
    const-class v1, Lo/ViewPropertyAnimatorRT;

    invoke-virtual {p1, v1}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v1, "ViewModelProviders.of(\n \u2026ifecycleData::class.java)"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Lo/ViewPropertyAnimatorRT;

    .line 54
    invoke-virtual {p0}, Lo/ViewStub;->d()Lo/WindowAnimationFrameStats;

    move-result-object v7

    move-object v1, v0

    .line 42
    invoke-direct/range {v1 .. v7}, Lo/WindowCallbacks;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;Lo/ViewPropertyAnimatorRT;Lo/TextClassificationSessionFactory;Lo/WindowAnimationFrameStats;)V

    return-object v0
.end method

.method public final d()Lo/WindowAnimationFrameStats;
    .locals 8

    .line 36
    iget-object v0, p0, Lo/ViewStub;->c:Lcom/netflix/android/moneyball/FlowMode;

    const-string v1, "SignupNativeDataManipulationError"

    const-string v2, "SignupNativeFieldError"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "recognizedFormerMember"

    .line 33
    move-object v6, v3

    check-cast v6, Lorg/json/JSONObject;

    .line 59
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

    .line 63
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v0, v3

    goto :goto_2

    .line 66
    :cond_1
    instance-of v7, v0, Ljava/lang/Boolean;

    if-nez v7, :cond_2

    .line 67
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v1, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 71
    :cond_2
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object v0, v3

    :goto_3
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 37
    iget-object v4, p0, Lo/ViewStub;->c:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v4, :cond_6

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v6, "nextAction"

    .line 72
    invoke-interface {v4, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 73
    move-object v7, v3

    check-cast v7, Lorg/json/JSONObject;

    if-nez v4, :cond_4

    .line 76
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_4

    .line 79
    :cond_4
    instance-of v2, v4, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v2, :cond_5

    .line 80
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_4

    :cond_5
    move-object v3, v4

    .line 84
    :goto_4
    check-cast v3, Lcom/netflix/android/moneyball/fields/ActionField;

    .line 32
    :cond_6
    new-instance v1, Lo/WindowAnimationFrameStats;

    invoke-direct {v1, v0, v3}, Lo/WindowAnimationFrameStats;-><init>(ZLcom/netflix/android/moneyball/fields/ActionField;)V

    return-object v1
.end method
