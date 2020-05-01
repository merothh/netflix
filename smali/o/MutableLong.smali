.class public final Lo/MutableLong;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/InputBinding;

.field private final b:Lo/Deprecated$ActionBar;

.field private final c:Lo/TextClassificationManager;

.field private final d:Lcom/netflix/android/moneyball/FlowMode;

.field private final e:Lo/TextClassifierImpl;

.field private final f:Lo/SpannedString;

.field private final g:Lo/ScaleXSpan;

.field private final h:Lo/SuggestionService;

.field private final i:Lo/NotificationRankingUpdate;

.field private final j:Lo/DrawableMarginSpan;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/NotificationRankingUpdate;Lo/ScaleXSpan;Lo/SuggestionService;Lo/SpannedString;)V
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

    const-string v0, "stepsViewModelInitializer"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanViewModelInitializer"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeOnUsViewModelInitializer"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formViewEditTextViewModelInitializer"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/MutableLong;->d:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/MutableLong;->e:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/MutableLong;->c:Lo/TextClassificationManager;

    iput-object p5, p0, Lo/MutableLong;->a:Lo/InputBinding;

    iput-object p6, p0, Lo/MutableLong;->b:Lo/Deprecated$ActionBar;

    iput-object p7, p0, Lo/MutableLong;->j:Lo/DrawableMarginSpan;

    iput-object p8, p0, Lo/MutableLong;->i:Lo/NotificationRankingUpdate;

    iput-object p9, p0, Lo/MutableLong;->g:Lo/ScaleXSpan;

    iput-object p10, p0, Lo/MutableLong;->h:Lo/SuggestionService;

    iput-object p11, p0, Lo/MutableLong;->f:Lo/SpannedString;

    return-void
.end method


# virtual methods
.method public final a()Lo/MutableDouble;
    .locals 14

    .line 43
    iget-object v0, p0, Lo/MutableLong;->d:Lcom/netflix/android/moneyball/FlowMode;

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

    :goto_0
    const-string v2, "SignupNativeDataManipulationError"

    const-string v3, "SignupNativeFieldError"

    if-eqz v0, :cond_3

    .line 45
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v6, "codeRedeemAction"

    .line 101
    invoke-interface {v4, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 102
    move-object v7, v1

    check-cast v7, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 105
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v3, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v4, v1

    goto :goto_2

    .line 108
    :cond_1
    instance-of v8, v4, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v8, :cond_2

    .line 109
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v2, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 113
    :cond_2
    :goto_2
    check-cast v4, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v6, v4

    goto :goto_3

    :cond_3
    move-object v6, v1

    .line 52
    :goto_3
    iget-object v4, p0, Lo/MutableLong;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v4, :cond_7

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v7, "recognizedFormerMember"

    .line 49
    move-object v8, v1

    check-cast v8, Lorg/json/JSONObject;

    .line 114
    invoke-interface {v4, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_4

    :cond_4
    move-object v4, v1

    :goto_4
    if-nez v4, :cond_5

    .line 118
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v3, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_5
    move-object v4, v1

    goto :goto_6

    .line 121
    :cond_5
    instance-of v3, v4, Ljava/lang/Boolean;

    if-nez v3, :cond_6

    .line 122
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v2, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 126
    :cond_6
    :goto_6
    move-object v2, v4

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object v2, v1

    :goto_7
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 53
    iget-object v2, p0, Lo/MutableLong;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_b

    move-object v9, v2

    check-cast v9, Lcom/netflix/android/moneyball/GetField;

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const-string v10, "giftOption"

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;ZILjava/lang/Object;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v2

    if-eqz v2, :cond_b

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 127
    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "paymentChoiceMode"

    .line 128
    invoke-interface {v2, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_8

    :cond_8
    move-object v2, v1

    :goto_8
    if-nez v2, :cond_9

    :goto_9
    move-object v2, v1

    goto :goto_a

    .line 135
    :cond_9
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_a

    goto :goto_9

    .line 140
    :cond_a
    :goto_a
    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    goto :goto_b

    :cond_b
    move-object v8, v1

    :goto_b
    if-eqz v0, :cond_f

    .line 56
    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 141
    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "recaptchaSitekey"

    .line 142
    invoke-interface {v2, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_c

    :cond_c
    move-object v2, v1

    :goto_c
    if-nez v2, :cond_d

    :goto_d
    move-object v2, v1

    goto :goto_e

    .line 149
    :cond_d
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_e

    goto :goto_d

    .line 154
    :cond_e
    :goto_e
    check-cast v2, Ljava/lang/String;

    move-object v9, v2

    goto :goto_f

    :cond_f
    move-object v9, v1

    :goto_f
    if-eqz v0, :cond_12

    .line 57
    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "recaptchaResponseToken"

    .line 156
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 157
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    if-nez v0, :cond_10

    :goto_10
    move-object v0, v1

    goto :goto_11

    .line 163
    :cond_10
    instance-of v2, v0, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v2, :cond_11

    goto :goto_10

    .line 168
    :cond_11
    :goto_11
    check-cast v0, Lcom/netflix/android/moneyball/fields/StringField;

    move-object v10, v0

    goto :goto_12

    :cond_12
    move-object v10, v1

    .line 58
    :goto_12
    iget-object v0, p0, Lo/MutableLong;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lo/MutableLong;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    :cond_13
    move-object v0, v1

    :goto_13
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_14

    move-object v0, v1

    :cond_14
    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 44
    new-instance v0, Lo/MutableDouble;

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lo/MutableDouble;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;ZLjava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Landroidx/fragment/app/Fragment;)Lo/MutableChar;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "fragment"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v2, v0, Lo/MutableLong;->b:Lo/Deprecated$ActionBar;

    invoke-static {v1, v2}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object v1

    const-class v2, Lo/MutableInt;

    invoke-virtual {v1, v2}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v1

    const-string v2, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    move-object v9, v1

    check-cast v9, Lo/MutableInt;

    .line 66
    new-instance v1, Lo/GenerateLinksLogger;

    iget-object v2, v0, Lo/MutableLong;->c:Lo/TextClassificationManager;

    sget-object v3, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentViewModelInitializer$createGiftCardPaymentViewModel$redeemGiftCardRequestLogger$1;->c:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentViewModelInitializer$createGiftCardPaymentViewModel$redeemGiftCardRequestLogger$1;

    check-cast v3, Lo/alB;

    sget-object v4, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentViewModelInitializer$createGiftCardPaymentViewModel$redeemGiftCardRequestLogger$2;->b:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentViewModelInitializer$createGiftCardPaymentViewModel$redeemGiftCardRequestLogger$2;

    check-cast v4, Lo/alB;

    invoke-direct {v1, v2, v3, v4}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    .line 67
    new-instance v2, Lo/GenerateLinksLogger;

    iget-object v11, v0, Lo/MutableLong;->c:Lo/TextClassificationManager;

    sget-object v3, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentViewModelInitializer$createGiftCardPaymentViewModel$changePlanRequestLogger$1;->a:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentViewModelInitializer$createGiftCardPaymentViewModel$changePlanRequestLogger$1;

    move-object v13, v3

    check-cast v13, Lo/alB;

    const/4 v12, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 68
    iget-object v3, v0, Lo/MutableLong;->f:Lo/SpannedString;

    .line 71
    sget-object v19, Lcom/netflix/cl/model/AppView;->giftCardNumberInput:Lcom/netflix/cl/model/AppView;

    .line 72
    sget-object v20, Lcom/netflix/cl/model/InputKind;->giftCardNumber:Lcom/netflix/cl/model/InputKind;

    const-string v17, "paymentGift"

    const-string v18, "code"

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v16, v3

    .line 68
    invoke-virtual/range {v16 .. v22}, Lo/SpannedString;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/InputKind;ZZ)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    move-result-object v14

    .line 76
    iget-object v15, v0, Lo/MutableLong;->f:Lo/SpannedString;

    .line 79
    sget-object v18, Lcom/netflix/cl/model/AppView;->zipCodeInput:Lcom/netflix/cl/model/AppView;

    .line 80
    sget-object v19, Lcom/netflix/cl/model/InputKind;->zipCode:Lcom/netflix/cl/model/InputKind;

    const-string v16, "paymentGift"

    const-string v17, "zipcode"

    const/16 v20, 0x1

    const/16 v21, 0x0

    .line 76
    invoke-virtual/range {v15 .. v21}, Lo/SpannedString;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/InputKind;ZZ)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    move-result-object v15

    .line 84
    new-instance v16, Lo/MutableChar;

    .line 85
    iget-object v4, v0, Lo/MutableLong;->e:Lo/TextClassifierImpl;

    .line 86
    iget-object v5, v0, Lo/MutableLong;->a:Lo/InputBinding;

    .line 87
    move-object v6, v1

    check-cast v6, Lo/TextClassificationSessionFactory;

    .line 88
    move-object v7, v2

    check-cast v7, Lo/TextClassificationSessionFactory;

    .line 89
    iget-object v1, v0, Lo/MutableLong;->j:Lo/DrawableMarginSpan;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v8, v2, v3}, Lo/DrawableMarginSpan;->c(Lo/DrawableMarginSpan;ZILjava/lang/Object;)Lo/DynamicDrawableSpan;

    move-result-object v8

    .line 91
    invoke-virtual/range {p0 .. p0}, Lo/MutableLong;->a()Lo/MutableDouble;

    move-result-object v10

    .line 92
    iget-object v1, v0, Lo/MutableLong;->i:Lo/NotificationRankingUpdate;

    invoke-virtual {v1}, Lo/NotificationRankingUpdate;->c()Lo/NotificationStats;

    move-result-object v11

    .line 93
    iget-object v1, v0, Lo/MutableLong;->g:Lo/ScaleXSpan;

    invoke-virtual {v1}, Lo/ScaleXSpan;->e()Lo/RelativeSizeSpan;

    move-result-object v12

    .line 94
    iget-object v1, v0, Lo/MutableLong;->h:Lo/SuggestionService;

    invoke-static {v1, v3, v2, v3}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v13

    move-object/from16 v3, v16

    .line 84
    invoke-direct/range {v3 .. v15}, Lo/MutableChar;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/MutableInt;Lo/MutableDouble;Lo/NotificationStats;Lo/RelativeSizeSpan;Lo/TextClassifierService;Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;)V

    return-object v16
.end method
