.class public final Lo/Patterns;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final b:Lo/TextClassificationManager;

.field private final c:Lo/ParagraphStyle;

.field private final d:Lo/TextClassifierImpl;

.field private final e:Lo/InputBinding;

.field private final f:Lo/Deprecated$ActionBar;

.field private final g:Lo/BackgroundColorSpan;

.field private final h:Lo/NotificationRankingUpdate;

.field private final i:Lo/SuggestionService;

.field private final j:Lo/DrawableMarginSpan;

.field private final n:Lo/HideReturnsTransformationMethod;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/ParagraphStyle;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/NotificationRankingUpdate;Lo/SuggestionService;Lo/BackgroundColorSpan;Lo/HideReturnsTransformationMethod;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touViewModelInitializer"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupLogger"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelProviderFactory"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModelInitializer"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanViewModelInitializer"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMembershipButtonViewModelInitializer"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "giftCodeAppliedViewModelInitializer"

    invoke-static {p12, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/Patterns;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/Patterns;->c:Lo/ParagraphStyle;

    iput-object p4, p0, Lo/Patterns;->d:Lo/TextClassifierImpl;

    iput-object p5, p0, Lo/Patterns;->b:Lo/TextClassificationManager;

    iput-object p6, p0, Lo/Patterns;->e:Lo/InputBinding;

    iput-object p7, p0, Lo/Patterns;->f:Lo/Deprecated$ActionBar;

    iput-object p8, p0, Lo/Patterns;->j:Lo/DrawableMarginSpan;

    iput-object p9, p0, Lo/Patterns;->h:Lo/NotificationRankingUpdate;

    iput-object p10, p0, Lo/Patterns;->i:Lo/SuggestionService;

    iput-object p11, p0, Lo/Patterns;->g:Lo/BackgroundColorSpan;

    iput-object p12, p0, Lo/Patterns;->n:Lo/HideReturnsTransformationMethod;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lo/PackageUtils;",
            "Lcom/netflix/android/moneyball/GetField;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lo/Patterns;->a:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v4, "giftOption"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;ZILjava/lang/Object;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 51
    :goto_0
    iget-object v2, p0, Lo/Patterns;->a:Lcom/netflix/android/moneyball/FlowMode;

    const-string v3, "SignupNativeDataManipulationError"

    const-string v4, "SignupNativeFieldError"

    if-eqz v2, :cond_4

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v6, "hasFreeTrial"

    .line 48
    move-object v7, v1

    check-cast v7, Lorg/json/JSONObject;

    .line 90
    invoke-interface {v2, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_2

    .line 94
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v4, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_2
    move-object v2, v1

    goto :goto_3

    .line 97
    :cond_2
    instance-of v8, v2, Ljava/lang/Boolean;

    if-nez v8, :cond_3

    .line 98
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v3, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 102
    :cond_3
    :goto_3
    check-cast v2, Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_7

    .line 52
    move-object v6, v0

    check-cast v6, Lcom/netflix/android/moneyball/GetField;

    move-object v7, p0

    check-cast v7, Lo/TextClassificationSessionId;

    const-string v8, "startMembershipWithGiftOnlyAction"

    .line 103
    invoke-interface {v6, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v6

    .line 104
    move-object v9, v1

    check-cast v9, Lorg/json/JSONObject;

    if-nez v6, :cond_5

    .line 107
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v6

    invoke-virtual {v6, v4, v8, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_5
    move-object v6, v1

    goto :goto_6

    .line 110
    :cond_5
    instance-of v10, v6, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v10, :cond_6

    .line 111
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v6

    invoke-virtual {v6, v3, v8, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 115
    :cond_6
    :goto_6
    check-cast v6, Lcom/netflix/android/moneyball/fields/ActionField;

    goto :goto_7

    :cond_7
    move-object v6, v1

    .line 59
    :goto_7
    iget-object v7, p0, Lo/Patterns;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v7, :cond_b

    check-cast v7, Lcom/netflix/android/moneyball/GetField;

    move-object v8, p0

    check-cast v8, Lo/TextClassificationSessionId;

    const-string v9, "recognizedFormerMember"

    .line 56
    move-object v10, v1

    check-cast v10, Lorg/json/JSONObject;

    .line 116
    invoke-interface {v7, v9}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_8

    :cond_8
    move-object v7, v1

    :goto_8
    if-nez v7, :cond_9

    .line 120
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v4, v9, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_9
    move-object v7, v1

    goto :goto_a

    .line 123
    :cond_9
    instance-of v4, v7, Ljava/lang/Boolean;

    if-nez v4, :cond_a

    .line 124
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v3, v9, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_9

    .line 128
    :cond_a
    :goto_a
    move-object v3, v7

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object v3, v1

    :goto_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 60
    iget-object v4, p0, Lo/Patterns;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v4, :cond_f

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 129
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "userMessage"

    .line 130
    invoke-interface {v4, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_c

    :cond_c
    move-object v4, v1

    :goto_c
    if-nez v4, :cond_d

    goto :goto_d

    .line 137
    :cond_d
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_e

    goto :goto_d

    :cond_e
    move-object v1, v4

    .line 142
    :goto_d
    check-cast v1, Ljava/lang/String;

    .line 47
    :cond_f
    new-instance v4, Lo/PackageUtils;

    invoke-direct {v4, v2, v6, v3, v1}, Lo/PackageUtils;-><init>(ZLcom/netflix/android/moneyball/fields/ActionField;ZLjava/lang/String;)V

    .line 46
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final b(Landroidx/fragment/app/Fragment;)Lo/Pair;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "fragment"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v2, v0, Lo/Patterns;->f:Lo/Deprecated$ActionBar;

    invoke-static {v1, v2}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object v1

    .line 68
    const-class v2, Lo/MutableShort;

    .line 67
    invoke-virtual {v1, v2}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v1

    const-string v2, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    check-cast v9, Lo/MutableShort;

    .line 69
    new-instance v1, Lo/GenerateLinksLogger;

    iget-object v2, v0, Lo/Patterns;->b:Lo/TextClassificationManager;

    sget-object v3, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipViewModelInitializer$createGiftCardStartMembershipViewModel$startMembershipRequestLogger$1;->d:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipViewModelInitializer$createGiftCardStartMembershipViewModel$startMembershipRequestLogger$1;

    check-cast v3, Lo/alB;

    sget-object v4, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipViewModelInitializer$createGiftCardStartMembershipViewModel$startMembershipRequestLogger$2;->c:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipViewModelInitializer$createGiftCardStartMembershipViewModel$startMembershipRequestLogger$2;

    check-cast v4, Lo/alB;

    invoke-direct {v1, v2, v3, v4}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    .line 70
    new-instance v2, Lo/GenerateLinksLogger;

    iget-object v11, v0, Lo/Patterns;->b:Lo/TextClassificationManager;

    sget-object v3, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipViewModelInitializer$createGiftCardStartMembershipViewModel$changePlanRequestLogger$1;->a:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipViewModelInitializer$createGiftCardStartMembershipViewModel$changePlanRequestLogger$1;

    move-object v13, v3

    check-cast v13, Lo/alB;

    const/4 v12, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lo/Patterns;->a()Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lo/PackageUtils;

    invoke-virtual {v3}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    .line 73
    new-instance v16, Lo/Pair;

    .line 74
    iget-object v4, v0, Lo/Patterns;->d:Lo/TextClassifierImpl;

    .line 75
    iget-object v5, v0, Lo/Patterns;->e:Lo/InputBinding;

    .line 76
    move-object v6, v1

    check-cast v6, Lo/TextClassificationSessionFactory;

    .line 77
    move-object v7, v2

    check-cast v7, Lo/TextClassificationSessionFactory;

    .line 78
    iget-object v1, v0, Lo/Patterns;->j:Lo/DrawableMarginSpan;

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v1, v10, v2, v8}, Lo/DrawableMarginSpan;->c(Lo/DrawableMarginSpan;ZILjava/lang/Object;)Lo/DynamicDrawableSpan;

    move-result-object v1

    .line 80
    iget-object v10, v0, Lo/Patterns;->n:Lo/HideReturnsTransformationMethod;

    invoke-virtual {v10}, Lo/HideReturnsTransformationMethod;->a()Lo/DigitsKeyListener;

    move-result-object v10

    .line 81
    iget-object v11, v0, Lo/Patterns;->c:Lo/ParagraphStyle;

    invoke-virtual {v11, v3}, Lo/ParagraphStyle;->d(Lcom/netflix/android/moneyball/GetField;)Lo/ForegroundColorSpan;

    move-result-object v11

    .line 82
    iget-object v3, v0, Lo/Patterns;->g:Lo/BackgroundColorSpan;

    invoke-virtual {v3}, Lo/BackgroundColorSpan;->b()Lo/AlignmentSpan;

    move-result-object v12

    .line 83
    iget-object v3, v0, Lo/Patterns;->h:Lo/NotificationRankingUpdate;

    invoke-virtual {v3}, Lo/NotificationRankingUpdate;->c()Lo/NotificationStats;

    move-result-object v13

    .line 85
    iget-object v3, v0, Lo/Patterns;->i:Lo/SuggestionService;

    invoke-static {v3, v8, v2, v8}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v15

    move-object/from16 v3, v16

    move-object v8, v1

    .line 73
    invoke-direct/range {v3 .. v15}, Lo/Pair;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/MutableShort;Lo/DigitsKeyListener;Lo/ForegroundColorSpan;Lo/AlignmentSpan;Lo/NotificationStats;Lo/PackageUtils;Lo/TextClassifierService;)V

    return-object v16
.end method
