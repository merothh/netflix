.class public final Lo/AbsSavedState;
.super Lo/TextClassificationContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AbsSavedState$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/AbsSavedState$Activity;

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lo/InputBinding;

.field private final b:Lcom/netflix/android/moneyball/FlowMode;

.field private final c:Lo/TextClassifierImpl;

.field private final e:Lo/TextClassificationManager;

.field private final h:Lo/Deprecated$ActionBar;

.field private final j:Lo/SuggestionService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/AbsSavedState$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/AbsSavedState$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/AbsSavedState;->d:Lo/AbsSavedState$Activity;

    const-string v0, "phoneChoice"

    .line 35
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/AbsSavedState;->i:Ljava/util/List;

    return-void
.end method

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

    .line 31
    invoke-direct {p0, p2, p8}, Lo/TextClassificationContext;-><init>(Lo/SystemTextClassifier;Lo/Voice;)V

    iput-object p1, p0, Lo/AbsSavedState;->b:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/AbsSavedState;->c:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/AbsSavedState;->e:Lo/TextClassificationManager;

    iput-object p5, p0, Lo/AbsSavedState;->a:Lo/InputBinding;

    iput-object p6, p0, Lo/AbsSavedState;->h:Lo/Deprecated$ActionBar;

    iput-object p7, p0, Lo/AbsSavedState;->j:Lo/SuggestionService;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lo/AppTransitionAnimationSpec;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;>;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/AbsSavedState;->b:Lcom/netflix/android/moneyball/FlowMode;

    const-string v1, "SignupNativeDataManipulationError"

    const-string v2, "SignupNativeFieldError"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "recognizedFormerMember"

    move-object v6, v3

    check-cast v6, Lorg/json/JSONObject;

    .line 72
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

    .line 76
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v0, v3

    goto :goto_2

    .line 79
    :cond_1
    instance-of v7, v0, Ljava/lang/Boolean;

    if-nez v7, :cond_2

    .line 80
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v1, v5, v6}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 84
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

    .line 45
    iget-object v4, p0, Lo/AbsSavedState;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v4, :cond_6

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v6, "nextAction"

    .line 85
    invoke-interface {v4, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 86
    move-object v7, v3

    check-cast v7, Lorg/json/JSONObject;

    if-nez v4, :cond_4

    .line 89
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v2, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_4
    move-object v4, v3

    goto :goto_5

    .line 92
    :cond_4
    instance-of v8, v4, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v8, :cond_5

    .line 93
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v1, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_4

    .line 97
    :cond_5
    :goto_5
    check-cast v4, Lcom/netflix/android/moneyball/fields/ActionField;

    goto :goto_6

    :cond_6
    move-object v4, v3

    .line 46
    :goto_6
    iget-object v5, p0, Lo/AbsSavedState;->b:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_9

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v6, p0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v7, "backAction"

    .line 98
    invoke-interface {v5, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    .line 99
    move-object v8, v3

    check-cast v8, Lorg/json/JSONObject;

    if-nez v5, :cond_7

    .line 102
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_7

    .line 105
    :cond_7
    instance-of v2, v5, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v2, :cond_8

    .line 106
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v1, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_7

    :cond_8
    move-object v3, v5

    .line 110
    :goto_7
    check-cast v3, Lcom/netflix/android/moneyball/fields/ActionField;

    .line 43
    :cond_9
    new-instance v1, Lo/AppTransitionAnimationSpec;

    invoke-direct {v1, v0, v4, v3}, Lo/AppTransitionAnimationSpec;-><init>(ZLcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;)V

    .line 47
    iget-object v0, p0, Lo/AbsSavedState;->b:Lcom/netflix/android/moneyball/FlowMode;

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    .line 48
    sget-object v2, Lo/AbsSavedState;->i:Ljava/util/List;

    .line 47
    invoke-virtual {p0, v0, v2}, Lo/AbsSavedState;->a(Lcom/netflix/android/moneyball/GetField;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 42
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final b(Landroidx/fragment/app/Fragment;)Lo/ActionProvider;
    .locals 12

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lo/AbsSavedState;->a()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lo/AppTransitionAnimationSpec;

    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 55
    iget-object v0, p0, Lo/AbsSavedState;->h:Lo/Deprecated$ActionBar;

    invoke-static {p1, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    const-class v0, Lo/ProtoOutputStream;

    invoke-virtual {p1, v0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p1

    check-cast v8, Lo/ProtoOutputStream;

    .line 56
    new-instance p1, Lo/GenerateLinksLogger;

    iget-object v0, p0, Lo/AbsSavedState;->e:Lo/TextClassificationManager;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberViewModelInitializer$createOTPSelectPhoneNumberViewModel$startMembershipRequestLogger$1;->c:Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberViewModelInitializer$createOTPSelectPhoneNumberViewModel$startMembershipRequestLogger$1;

    check-cast v1, Lo/alB;

    sget-object v2, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberViewModelInitializer$createOTPSelectPhoneNumberViewModel$startMembershipRequestLogger$2;->d:Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberViewModelInitializer$createOTPSelectPhoneNumberViewModel$startMembershipRequestLogger$2;

    check-cast v2, Lo/alB;

    invoke-direct {p1, v0, v1, v2}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    .line 57
    new-instance v0, Lo/ActionProvider;

    .line 58
    iget-object v9, p0, Lo/AbsSavedState;->c:Lo/TextClassifierImpl;

    .line 59
    iget-object v1, p0, Lo/AbsSavedState;->j:Lo/SuggestionService;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v2}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v10

    .line 60
    iget-object v11, p0, Lo/AbsSavedState;->a:Lo/InputBinding;

    const-string v2, "paymentDebit"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    .line 61
    invoke-static/range {v1 .. v6}, Lo/TextClassificationContext;->e(Lo/TextClassificationContext;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 67
    check-cast p1, Lo/TextClassificationSessionFactory;

    move-object v2, v0

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v9, p1

    .line 57
    invoke-direct/range {v2 .. v9}, Lo/ActionProvider;-><init>(Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/InputBinding;Ljava/util/List;Lo/AppTransitionAnimationSpec;Lo/ProtoOutputStream;Lo/TextClassificationSessionFactory;)V

    return-object v0
.end method
