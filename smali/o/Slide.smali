.class public final Lo/Slide;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final b:Lo/InputBinding;

.field private final c:Lo/Deprecated$ActionBar;

.field private final d:Lo/TextClassifierImpl;

.field private final e:Lo/SuggestionService;

.field private final j:Lo/DialerKeyListener;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;Lo/DialerKeyListener;)V
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

    const-string v0, "profileEntryEditTextCheckboxViewModelInitializer"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/Slide;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/Slide;->d:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/Slide;->b:Lo/InputBinding;

    iput-object p5, p0, Lo/Slide;->c:Lo/Deprecated$ActionBar;

    iput-object p6, p0, Lo/Slide;->e:Lo/SuggestionService;

    iput-object p7, p0, Lo/Slide;->j:Lo/DialerKeyListener;

    return-void
.end method


# virtual methods
.method public final a()Lo/Rotate;
    .locals 3

    .line 40
    iget-object v0, p0, Lo/Slide;->a:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "nextAction"

    .line 104
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 105
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 111
    :cond_0
    instance-of v2, v0, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v2, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    :goto_1
    check-cast v0, Lcom/netflix/android/moneyball/fields/ActionField;

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 41
    :goto_2
    iget-object v2, p0, Lo/Slide;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v2, "kidsprofiles"

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 39
    new-instance v2, Lo/Rotate;

    invoke-direct {v2, v0, v1}, Lo/Rotate;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;Z)V

    return-object v2
.end method

.method public final b()Lo/Rotate;
    .locals 4

    .line 30
    iget-object v0, p0, Lo/Slide;->a:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "kidsprofiles"

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/Slide;->a()Lo/Rotate;

    move-result-object v0

    return-object v0

    .line 32
    :cond_1
    iget-object v0, p0, Lo/Slide;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_4

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v3, "nextAction"

    .line 90
    invoke-interface {v0, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 91
    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    if-nez v0, :cond_2

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 97
    :cond_2
    instance-of v3, v0, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v3, :cond_3

    goto :goto_1

    .line 102
    :cond_3
    :goto_2
    check-cast v0, Lcom/netflix/android/moneyball/fields/ActionField;

    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 33
    :goto_3
    iget-object v3, p0, Lo/Slide;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 31
    new-instance v2, Lo/Rotate;

    invoke-direct {v2, v0, v1}, Lo/Rotate;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;Z)V

    return-object v2
.end method

.method public final c(Landroidx/fragment/app/Fragment;)Lo/SidePropagation;
    .locals 12

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lo/Slide;->c:Lo/Deprecated$ActionBar;

    invoke-static {p1, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    const-class v0, Lo/Recolor;

    invoke-virtual {p1, v0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lo/Recolor;

    .line 47
    invoke-virtual {p0}, Lo/Slide;->b()Lo/Rotate;

    move-result-object v3

    .line 49
    iget-object p1, p0, Lo/Slide;->j:Lo/DialerKeyListener;

    const/4 v0, 0x0

    const-string v1, "ownerName"

    invoke-virtual {p1, v1, v0}, Lo/DialerKeyListener;->e(Ljava/lang/String;Ljava/lang/String;)Lo/DateTimeKeyListener;

    move-result-object v5

    .line 54
    iget-object p1, p0, Lo/Slide;->j:Lo/DialerKeyListener;

    const-string v1, "profile1Name"

    const-string v2, "profile1IsKids"

    invoke-virtual {p1, v1, v2}, Lo/DialerKeyListener;->e(Ljava/lang/String;Ljava/lang/String;)Lo/DateTimeKeyListener;

    move-result-object v6

    .line 59
    iget-object p1, p0, Lo/Slide;->j:Lo/DialerKeyListener;

    const-string v1, "profile2Name"

    const-string v2, "profile2IsKids"

    invoke-virtual {p1, v1, v2}, Lo/DialerKeyListener;->e(Ljava/lang/String;Ljava/lang/String;)Lo/DateTimeKeyListener;

    move-result-object v7

    .line 64
    iget-object p1, p0, Lo/Slide;->j:Lo/DialerKeyListener;

    const-string v1, "profile3Name"

    const-string v2, "profile3IsKids"

    invoke-virtual {p1, v1, v2}, Lo/DialerKeyListener;->e(Ljava/lang/String;Ljava/lang/String;)Lo/DateTimeKeyListener;

    move-result-object v8

    .line 69
    iget-object p1, p0, Lo/Slide;->j:Lo/DialerKeyListener;

    const-string v1, "profile4Name"

    const-string v2, "profile4IsKids"

    invoke-virtual {p1, v1, v2}, Lo/DialerKeyListener;->e(Ljava/lang/String;Ljava/lang/String;)Lo/DateTimeKeyListener;

    move-result-object v9

    .line 74
    new-instance p1, Lo/SidePropagation;

    .line 75
    iget-object v2, p0, Lo/Slide;->b:Lo/InputBinding;

    .line 83
    iget-object v10, p0, Lo/Slide;->d:Lo/TextClassifierImpl;

    .line 84
    iget-object v1, p0, Lo/Slide;->e:Lo/SuggestionService;

    const/4 v11, 0x1

    invoke-static {v1, v0, v11, v0}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v11

    move-object v1, p1

    .line 74
    invoke-direct/range {v1 .. v11}, Lo/SidePropagation;-><init>(Lo/InputBinding;Lo/Rotate;Lo/Recolor;Lo/DateTimeKeyListener;Lo/DateTimeKeyListener;Lo/DateTimeKeyListener;Lo/DateTimeKeyListener;Lo/DateTimeKeyListener;Lo/TextClassifierImpl;Lo/TextClassifierService;)V

    return-object p1
.end method
