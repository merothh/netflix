.class public final Lo/FocusFinderHelper;
.super Lo/TextClassificationContext;
.source ""


# instance fields
.field private final a:Lo/TextClassifierImpl;

.field private final b:Lo/Deprecated$ActionBar;

.field private final c:Lo/InputBinding;

.field private final d:Lcom/netflix/android/moneyball/FlowMode;

.field private final e:Lo/TextClassificationManager;

.field private final f:Lo/ScaleXSpan;

.field private final g:Lo/NotificationRankingUpdate;

.field private final h:Ljava/lang/String;

.field private final i:Lo/SuggestionService;

.field private final j:Lo/DrawableMarginSpan;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/NotificationRankingUpdate;Lo/ScaleXSpan;Lo/SuggestionService;Ljava/lang/String;Lo/Voice;)V
    .locals 1
    .param p11    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "webViewBaseUrl"
        .end annotation
    .end param
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

    const-string v0, "stepsViewModelInitializer"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanViewModelInitializer"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeOnUsViewModelInitializer"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewBaseUrl"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFieldViewModelConverterFactory"

    invoke-static {p12, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p2, p12}, Lo/TextClassificationContext;-><init>(Lo/SystemTextClassifier;Lo/Voice;)V

    iput-object p1, p0, Lo/FocusFinderHelper;->d:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/FocusFinderHelper;->a:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/FocusFinderHelper;->e:Lo/TextClassificationManager;

    iput-object p5, p0, Lo/FocusFinderHelper;->c:Lo/InputBinding;

    iput-object p6, p0, Lo/FocusFinderHelper;->b:Lo/Deprecated$ActionBar;

    iput-object p7, p0, Lo/FocusFinderHelper;->j:Lo/DrawableMarginSpan;

    iput-object p8, p0, Lo/FocusFinderHelper;->g:Lo/NotificationRankingUpdate;

    iput-object p9, p0, Lo/FocusFinderHelper;->f:Lo/ScaleXSpan;

    iput-object p10, p0, Lo/FocusFinderHelper;->i:Lo/SuggestionService;

    iput-object p11, p0, Lo/FocusFinderHelper;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lo/FrameStats;
    .locals 10

    .line 56
    iget-object v0, p0, Lo/FocusFinderHelper;->d:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v4, "paypalOption"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;ZILjava/lang/Object;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "changePaymentAction"

    if-eqz v0, :cond_3

    .line 57
    move-object v3, v0

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    .line 110
    invoke-interface {v3, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    .line 111
    move-object v4, v1

    check-cast v4, Lorg/json/JSONObject;

    if-nez v3, :cond_1

    :goto_1
    move-object v3, v1

    goto :goto_2

    .line 117
    :cond_1
    instance-of v4, v3, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v4, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    :goto_2
    check-cast v3, Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v3, :cond_3

    move-object v5, v3

    goto :goto_5

    .line 57
    :cond_3
    iget-object v3, p0, Lo/FocusFinderHelper;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_6

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    .line 124
    invoke-interface {v3, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    .line 125
    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    if-nez v2, :cond_4

    :goto_3
    move-object v2, v1

    goto :goto_4

    .line 131
    :cond_4
    instance-of v3, v2, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v3, :cond_5

    goto :goto_3

    .line 136
    :cond_5
    :goto_4
    check-cast v2, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v5, v2

    goto :goto_5

    :cond_6
    move-object v5, v1

    :goto_5
    if-eqz v0, :cond_9

    .line 61
    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v3, "paypalSuccessUrl"

    .line 138
    invoke-interface {v2, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    .line 139
    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    if-nez v2, :cond_7

    :goto_6
    move-object v2, v1

    goto :goto_7

    .line 145
    :cond_7
    instance-of v3, v2, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v3, :cond_8

    goto :goto_6

    .line 150
    :cond_8
    :goto_7
    check-cast v2, Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v2, :cond_9

    const-string v3, "paypalSuccessAction"

    .line 62
    invoke-virtual {p0, v3}, Lo/FocusFinderHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    :cond_9
    if-eqz v0, :cond_c

    .line 66
    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v3, "paypalCancelUrl"

    .line 152
    invoke-interface {v2, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    .line 153
    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    if-nez v2, :cond_a

    :goto_8
    move-object v2, v1

    goto :goto_9

    .line 159
    :cond_a
    instance-of v3, v2, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v3, :cond_b

    goto :goto_8

    .line 164
    :cond_b
    :goto_9
    check-cast v2, Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v2, :cond_c

    const-string v3, "paymentCancelAction"

    .line 67
    invoke-virtual {p0, v3}, Lo/FocusFinderHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    .line 71
    :cond_c
    iget-object v2, p0, Lo/FocusFinderHelper;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_f

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v3, "paypalInitiateAction"

    .line 166
    invoke-interface {v2, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    .line 167
    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    if-nez v2, :cond_d

    :goto_a
    move-object v2, v1

    goto :goto_b

    .line 173
    :cond_d
    instance-of v3, v2, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v3, :cond_e

    goto :goto_a

    .line 178
    :cond_e
    :goto_b
    check-cast v2, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v4, v2

    goto :goto_c

    :cond_f
    move-object v4, v1

    .line 76
    :goto_c
    iget-object v2, p0, Lo/FocusFinderHelper;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_13

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v6, "recognizedFormerMember"

    .line 73
    move-object v7, v1

    check-cast v7, Lorg/json/JSONObject;

    .line 179
    invoke-interface {v2, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_d

    :cond_10
    move-object v2, v1

    :goto_d
    if-nez v2, :cond_11

    .line 183
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    const-string v3, "SignupNativeFieldError"

    invoke-virtual {v2, v3, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_e
    move-object v2, v1

    goto :goto_f

    .line 186
    :cond_11
    instance-of v8, v2, Ljava/lang/Boolean;

    if-nez v8, :cond_12

    .line 187
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    const-string v3, "SignupNativeDataManipulationError"

    invoke-virtual {v2, v3, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_e

    .line 191
    :cond_12
    :goto_f
    check-cast v2, Ljava/lang/Boolean;

    goto :goto_10

    :cond_13
    move-object v2, v1

    :goto_10
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v0, :cond_17

    .line 77
    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    .line 192
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "paymentChoiceMode"

    .line 193
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_11

    :cond_14
    move-object v0, v1

    :goto_11
    if-nez v0, :cond_15

    :goto_12
    move-object v0, v1

    goto :goto_13

    .line 200
    :cond_15
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_16

    goto :goto_12

    .line 205
    :cond_16
    :goto_13
    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto :goto_14

    :cond_17
    move-object v8, v1

    .line 80
    :goto_14
    iget-object v0, p0, Lo/FocusFinderHelper;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_18

    invoke-virtual {p0, v0}, Lo/FocusFinderHelper;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_15

    :cond_18
    move-object v0, v1

    :goto_15
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_19

    move-object v0, v1

    :cond_19
    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    if-eqz v5, :cond_1a

    const/4 v6, 0x1

    goto :goto_16

    :cond_1a
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 70
    :goto_16
    new-instance v0, Lo/FrameStats;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lo/FrameStats;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "action"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lo/FocusFinderHelper;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "mobilesignup/paypalcallback"

    .line 49
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Uri.parse(webViewBaseUrl\u2026              .toString()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Landroidx/fragment/app/Fragment;)Lo/FrameMetricsObserver;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "fragment"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v2, v0, Lo/FocusFinderHelper;->b:Lo/Deprecated$ActionBar;

    invoke-static {v1, v2}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object v1

    const-class v2, Lo/DisplayInfo;

    invoke-virtual {v1, v2}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v1

    const-string v2, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v1

    check-cast v10, Lo/DisplayInfo;

    .line 87
    new-instance v1, Lo/GenerateLinksLogger;

    iget-object v2, v0, Lo/FocusFinderHelper;->e:Lo/TextClassificationManager;

    sget-object v3, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalViewModelInitializer$createPayPalViewModel$redeemGiftCardRequestLogger$1;->a:Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalViewModelInitializer$createPayPalViewModel$redeemGiftCardRequestLogger$1;

    check-cast v3, Lo/alB;

    sget-object v4, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalViewModelInitializer$createPayPalViewModel$redeemGiftCardRequestLogger$2;->a:Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalViewModelInitializer$createPayPalViewModel$redeemGiftCardRequestLogger$2;

    check-cast v4, Lo/alB;

    invoke-direct {v1, v2, v3, v4}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    .line 88
    new-instance v2, Lo/GenerateLinksLogger;

    iget-object v12, v0, Lo/FocusFinderHelper;->e:Lo/TextClassificationManager;

    sget-object v3, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalViewModelInitializer$createPayPalViewModel$changePlanRequestLogger$1;->e:Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalViewModelInitializer$createPayPalViewModel$changePlanRequestLogger$1;

    move-object v14, v3

    check-cast v14, Lo/alB;

    const/4 v13, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 89
    new-instance v9, Lo/GenerateLinksLogger;

    iget-object v4, v0, Lo/FocusFinderHelper;->e:Lo/TextClassificationManager;

    sget-object v3, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalViewModelInitializer$createPayPalViewModel$changePaymentRequestLogger$1;->b:Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalViewModelInitializer$createPayPalViewModel$changePaymentRequestLogger$1;

    move-object v6, v3

    check-cast v6, Lo/alB;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 91
    iget-object v3, v0, Lo/FocusFinderHelper;->d:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const-string v5, "editpaypalOptionMode"

    invoke-static {v3, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    .line 92
    invoke-virtual/range {p0 .. p0}, Lo/FocusFinderHelper;->a()Lo/FrameStats;

    move-result-object v11

    .line 93
    new-instance v15, Lo/FrameMetricsObserver;

    .line 94
    iget-object v6, v0, Lo/FocusFinderHelper;->a:Lo/TextClassifierImpl;

    .line 95
    iget-object v7, v0, Lo/FocusFinderHelper;->c:Lo/InputBinding;

    .line 96
    check-cast v1, Lo/TextClassificationSessionFactory;

    .line 97
    check-cast v2, Lo/TextClassificationSessionFactory;

    .line 98
    move-object v8, v9

    check-cast v8, Lo/TextClassificationSessionFactory;

    .line 99
    iget-object v9, v0, Lo/FocusFinderHelper;->j:Lo/DrawableMarginSpan;

    invoke-virtual {v9, v3}, Lo/DrawableMarginSpan;->e(Z)Lo/DynamicDrawableSpan;

    move-result-object v9

    .line 102
    iget-object v3, v0, Lo/FocusFinderHelper;->g:Lo/NotificationRankingUpdate;

    invoke-virtual {v3}, Lo/NotificationRankingUpdate;->c()Lo/NotificationStats;

    move-result-object v12

    .line 103
    iget-object v3, v0, Lo/FocusFinderHelper;->f:Lo/ScaleXSpan;

    invoke-virtual {v3}, Lo/ScaleXSpan;->e()Lo/RelativeSizeSpan;

    move-result-object v13

    .line 104
    iget-object v3, v0, Lo/FocusFinderHelper;->i:Lo/SuggestionService;

    invoke-static {v3, v4, v5, v4}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v14

    move-object v3, v15

    move-object v4, v6

    move-object v5, v7

    move-object v6, v1

    move-object v7, v2

    .line 93
    invoke-direct/range {v3 .. v14}, Lo/FrameMetricsObserver;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/DisplayInfo;Lo/FrameStats;Lo/NotificationStats;Lo/RelativeSizeSpan;Lo/TextClassifierService;)V

    return-object v15
.end method
