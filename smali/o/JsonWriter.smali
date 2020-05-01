.class public final Lo/JsonWriter;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/InputMethod;

.field private final b:Lcom/netflix/android/moneyball/FlowMode;

.field private final c:Lo/TextClassifierImpl;

.field private final d:Lo/InputBinding;

.field private final e:Lo/SuggestionService;

.field private final i:Lo/Deprecated$ActionBar;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputMethod;Lo/InputBinding;Lo/TextClassifierImpl;Lo/SuggestionService;Lo/Deprecated$ActionBar;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formChangeListenerFactory"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelProviderFactory"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/JsonWriter;->b:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/JsonWriter;->a:Lo/InputMethod;

    iput-object p4, p0, Lo/JsonWriter;->d:Lo/InputBinding;

    iput-object p5, p0, Lo/JsonWriter;->c:Lo/TextClassifierImpl;

    iput-object p6, p0, Lo/JsonWriter;->e:Lo/SuggestionService;

    iput-object p7, p0, Lo/JsonWriter;->i:Lo/Deprecated$ActionBar;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;)Lo/KeyValueListParser;
    .locals 8

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lo/JsonWriter;->b()Lo/LayoutDirection;

    move-result-object v3

    .line 59
    iget-object v0, p0, Lo/JsonWriter;->i:Lo/Deprecated$ActionBar;

    invoke-static {p1, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    const-class v0, Lo/JsonToken;

    invoke-virtual {p1, v0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lo/JsonToken;

    .line 61
    new-instance v7, Lo/LauncherIcons;

    iget-object p1, p0, Lo/JsonWriter;->d:Lo/InputBinding;

    invoke-virtual {p0}, Lo/JsonWriter;->e()Lo/KeyValueSettingObserver;

    move-result-object v0

    invoke-direct {v7, p1, v0}, Lo/LauncherIcons;-><init>(Lo/InputBinding;Lo/KeyValueSettingObserver;)V

    .line 62
    new-instance p1, Lo/KeyValueListParser;

    .line 63
    iget-object v2, p0, Lo/JsonWriter;->d:Lo/InputBinding;

    .line 66
    iget-object v5, p0, Lo/JsonWriter;->c:Lo/TextClassifierImpl;

    .line 67
    iget-object v0, p0, Lo/JsonWriter;->e:Lo/SuggestionService;

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v1, v6, v1}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v6

    move-object v1, p1

    .line 62
    invoke-direct/range {v1 .. v7}, Lo/KeyValueListParser;-><init>(Lo/InputBinding;Lo/LayoutDirection;Lo/JsonToken;Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/LauncherIcons;)V

    return-object p1
.end method

.method public final b()Lo/LayoutDirection;
    .locals 6

    .line 33
    iget-object v0, p0, Lo/JsonWriter;->b:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v3, "nextAction"

    .line 73
    invoke-interface {v0, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 74
    move-object v4, v1

    check-cast v4, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 77
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    const-string v2, "SignupNativeFieldError"

    invoke-virtual {v0, v2, v3, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 80
    :cond_0
    instance-of v5, v0, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v5, :cond_1

    .line 81
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    const-string v2, "SignupNativeDataManipulationError"

    invoke-virtual {v0, v2, v3, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 85
    :goto_0
    check-cast v1, Lcom/netflix/android/moneyball/fields/ActionField;

    .line 32
    :cond_2
    new-instance v0, Lo/LayoutDirection;

    invoke-direct {v0, v1}, Lo/LayoutDirection;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;)V

    return-object v0
.end method

.method public final e()Lo/KeyValueSettingObserver;
    .locals 9

    const-string v0, "smarttv"

    const-string v1, "tablet"

    const-string v2, "desktop"

    const-string v3, "settop"

    const-string v4, "streamingmedia"

    const-string v5, "playstation"

    const-string v6, "xbox"

    const-string v7, "wiiu"

    const-string v8, "roku"

    .line 49
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 95
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 94
    check-cast v2, Ljava/lang/String;

    .line 51
    iget-object v3, p0, Lo/JsonWriter;->b:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 97
    invoke-interface {v3, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    .line 98
    move-object v3, v4

    check-cast v3, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    instance-of v3, v2, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 109
    :goto_1
    check-cast v4, Lcom/netflix/android/moneyball/fields/BooleanField;

    :cond_3
    if-eqz v4, :cond_0

    .line 94
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_4
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 113
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 114
    check-cast v2, Lcom/netflix/android/moneyball/fields/BooleanField;

    .line 52
    new-instance v3, Lo/AutoGrowArray;

    iget-object v4, p0, Lo/JsonWriter;->a:Lo/InputMethod;

    const-string v5, "deviceSurvey"

    invoke-virtual {v4, v5}, Lo/InputMethod;->b(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v4

    check-cast v4, Lo/TextToSpeech;

    invoke-direct {v3, v2, v4}, Lo/AutoGrowArray;-><init>(Lcom/netflix/android/moneyball/fields/BooleanField;Lo/TextToSpeech;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 115
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 54
    new-instance v1, Lo/KeyValueSettingObserver;

    invoke-direct {v1, v0}, Lo/KeyValueSettingObserver;-><init>(Ljava/util/List;)V

    return-object v1
.end method
