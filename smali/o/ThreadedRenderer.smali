.class public final Lo/ThreadedRenderer;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/Deprecated$ActionBar;

.field private final b:Lo/TextClassificationManager;

.field private final c:Lo/TextClassifierImpl;

.field private final d:Lcom/netflix/android/moneyball/FlowMode;

.field private final e:Lo/InputBinding;

.field private final f:Lo/ScaleXSpan;

.field private final g:Lo/SpannedString;

.field private final h:Lo/SuggestionService;

.field private final i:Lo/SurfaceHolder;

.field private final j:Lo/DrawableMarginSpan;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/ScaleXSpan;Lo/SuggestionService;Lo/SurfaceHolder;Lo/SpannedString;)V
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

    const-string v0, "upgradeOnUsViewModelInitializer"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emailPreferenceViewModelInitializer"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formViewEditTextViewModelInitializer"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/ThreadedRenderer;->d:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/ThreadedRenderer;->c:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/ThreadedRenderer;->b:Lo/TextClassificationManager;

    iput-object p5, p0, Lo/ThreadedRenderer;->e:Lo/InputBinding;

    iput-object p6, p0, Lo/ThreadedRenderer;->a:Lo/Deprecated$ActionBar;

    iput-object p7, p0, Lo/ThreadedRenderer;->j:Lo/DrawableMarginSpan;

    iput-object p8, p0, Lo/ThreadedRenderer;->f:Lo/ScaleXSpan;

    iput-object p9, p0, Lo/ThreadedRenderer;->h:Lo/SuggestionService;

    iput-object p10, p0, Lo/ThreadedRenderer;->i:Lo/SurfaceHolder;

    iput-object p11, p0, Lo/ThreadedRenderer;->g:Lo/SpannedString;

    return-void
.end method


# virtual methods
.method public final b()Lo/Surface;
    .locals 22

    move-object/from16 v6, p0

    .line 39
    iget-object v0, v6, Lo/ThreadedRenderer;->d:Lcom/netflix/android/moneyball/FlowMode;

    const-string v7, "SignupNativeDataManipulationError"

    const-string v8, "SignupNativeFieldError"

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v6

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v2, "isRegReadOnly"

    move-object v3, v9

    check-cast v3, Lorg/json/JSONObject;

    .line 111
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v9

    :goto_0
    if-nez v0, :cond_1

    .line 115
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v8, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v0, v9

    goto :goto_2

    .line 118
    :cond_1
    instance-of v4, v0, Ljava/lang/Boolean;

    if-nez v4, :cond_2

    .line 119
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 123
    :cond_2
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object v0, v9

    :goto_3
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v0, "continueAction"

    goto :goto_4

    :cond_4
    const-string v0, "registerOnlyAction"

    .line 47
    :goto_4
    iget-object v1, v6, Lo/ThreadedRenderer;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_8

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v6

    check-cast v2, Lo/TextClassificationSessionId;

    .line 124
    move-object v2, v9

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "hasFreeTrial"

    .line 125
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v9

    :goto_5
    if-nez v1, :cond_6

    :goto_6
    move-object v1, v9

    goto :goto_7

    .line 132
    :cond_6
    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_7

    goto :goto_6

    .line 137
    :cond_7
    :goto_7
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object v1, v9

    :goto_8
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    .line 48
    iget-object v1, v6, Lo/ThreadedRenderer;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_b

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v6

    check-cast v2, Lo/TextClassificationSessionId;

    .line 139
    invoke-interface {v1, v0}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 140
    move-object v1, v9

    check-cast v1, Lorg/json/JSONObject;

    if-nez v0, :cond_9

    :goto_9
    move-object v0, v9

    goto :goto_a

    .line 146
    :cond_9
    instance-of v1, v0, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v1, :cond_a

    goto :goto_9

    .line 151
    :cond_a
    :goto_a
    check-cast v0, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v12, v0

    goto :goto_b

    :cond_b
    move-object v12, v9

    .line 49
    :goto_b
    iget-object v1, v6, Lo/ThreadedRenderer;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_c

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v2, "registrationFormTitle"

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_c

    :cond_c
    move-object v13, v9

    .line 50
    :goto_c
    iget-object v0, v6, Lo/ThreadedRenderer;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_d

    const-string v1, "ctaButton"

    invoke-virtual {v6, v0, v1, v10}, Lo/ThreadedRenderer;->c(Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_d

    :cond_d
    move-object v14, v9

    .line 52
    :goto_d
    iget-object v0, v6, Lo/ThreadedRenderer;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_11

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v6

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v2, "email"

    move-object v3, v9

    check-cast v3, Lorg/json/JSONObject;

    .line 152
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_e

    :cond_e
    move-object v0, v9

    :goto_e
    if-nez v0, :cond_f

    .line 156
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v8, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_f
    move-object v0, v9

    goto :goto_10

    .line 159
    :cond_f
    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_10

    .line 160
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_f

    .line 164
    :cond_10
    :goto_10
    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_11

    :cond_11
    move-object/from16 v16, v9

    .line 53
    :goto_11
    iget-object v0, v6, Lo/ThreadedRenderer;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_12

    const-string v1, "registrationFormSubtitle"

    invoke-virtual {v6, v0, v1, v15}, Lo/ThreadedRenderer;->c(Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_12

    :cond_12
    move-object/from16 v18, v9

    .line 57
    :goto_12
    iget-object v0, v6, Lo/ThreadedRenderer;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_13

    xor-int/lit8 v1, v15, 0x1

    const-string v2, "valuePropMessage"

    invoke-virtual {v6, v0, v2, v1}, Lo/ThreadedRenderer;->c(Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_13

    :cond_13
    move-object/from16 v19, v9

    .line 61
    :goto_13
    iget-object v0, v6, Lo/ThreadedRenderer;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_14

    xor-int/lit8 v1, v15, 0x1

    const-string v2, "valuePropMessageSecondary"

    invoke-virtual {v6, v0, v2, v1}, Lo/ThreadedRenderer;->c(Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_14

    :cond_14
    move-object/from16 v20, v9

    .line 68
    :goto_14
    iget-object v0, v6, Lo/ThreadedRenderer;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_18

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v6

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v2, "recognizedFormerMember"

    .line 65
    move-object v3, v9

    check-cast v3, Lorg/json/JSONObject;

    .line 165
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_15

    :cond_15
    move-object v0, v9

    :goto_15
    if-nez v0, :cond_16

    .line 169
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v8, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_16

    .line 172
    :cond_16
    instance-of v4, v0, Ljava/lang/Boolean;

    if-nez v4, :cond_17

    .line 173
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_16

    :cond_17
    move-object v9, v0

    .line 177
    :goto_16
    check-cast v9, Ljava/lang/Boolean;

    :cond_18
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v9, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    .line 45
    new-instance v0, Lo/Surface;

    move-object v11, v0

    invoke-direct/range {v11 .. v21}, Lo/Surface;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final e(Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;)Lo/TextureLayer;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "fragment"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    check-cast v1, Landroidx/fragment/app/Fragment;

    iget-object v2, v0, Lo/ThreadedRenderer;->a:Lo/Deprecated$ActionBar;

    invoke-static {v1, v2}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object v1

    const-class v2, Lo/SurfaceSession;

    invoke-virtual {v1, v2}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v1

    const-string v2, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Lo/SurfaceSession;

    .line 74
    new-instance v7, Lo/GenerateLinksLogger;

    iget-object v2, v0, Lo/ThreadedRenderer;->b:Lo/TextClassificationManager;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationViewModelInitializer$createRegistrationViewModel$registerLogger$1;->e:Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationViewModelInitializer$createRegistrationViewModel$registerLogger$1;

    move-object v3, v1

    check-cast v3, Lo/alB;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 76
    iget-object v9, v0, Lo/ThreadedRenderer;->g:Lo/SpannedString;

    .line 79
    sget-object v12, Lcom/netflix/cl/model/AppView;->emailInput:Lcom/netflix/cl/model/AppView;

    .line 80
    sget-object v13, Lcom/netflix/cl/model/InputKind;->email:Lcom/netflix/cl/model/InputKind;

    const-string v10, "registration"

    const-string v11, "email"

    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 76
    invoke-virtual/range {v9 .. v15}, Lo/SpannedString;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/InputKind;ZZ)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    move-result-object v12

    .line 84
    iget-object v13, v0, Lo/ThreadedRenderer;->g:Lo/SpannedString;

    .line 87
    sget-object v16, Lcom/netflix/cl/model/AppView;->passwordInput:Lcom/netflix/cl/model/AppView;

    .line 88
    sget-object v17, Lcom/netflix/cl/model/InputKind;->password:Lcom/netflix/cl/model/InputKind;

    const-string v14, "registration"

    const-string v15, "password"

    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 84
    invoke-virtual/range {v13 .. v19}, Lo/SpannedString;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/InputKind;ZZ)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    move-result-object v13

    .line 93
    new-instance v1, Lo/TextureLayer;

    .line 94
    iget-object v4, v0, Lo/ThreadedRenderer;->e:Lo/InputBinding;

    .line 95
    iget-object v5, v0, Lo/ThreadedRenderer;->c:Lo/TextClassifierImpl;

    .line 96
    move-object v6, v7

    check-cast v6, Lo/TextClassificationSessionFactory;

    .line 97
    iget-object v2, v0, Lo/ThreadedRenderer;->j:Lo/DrawableMarginSpan;

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v9, v3, v7}, Lo/DrawableMarginSpan;->c(Lo/DrawableMarginSpan;ZILjava/lang/Object;)Lo/DynamicDrawableSpan;

    move-result-object v2

    .line 99
    invoke-virtual/range {p0 .. p0}, Lo/ThreadedRenderer;->b()Lo/Surface;

    move-result-object v9

    .line 100
    iget-object v10, v0, Lo/ThreadedRenderer;->i:Lo/SurfaceHolder;

    invoke-virtual {v10}, Lo/SurfaceHolder;->c()Lo/SubMenu;

    move-result-object v10

    .line 101
    iget-object v11, v0, Lo/ThreadedRenderer;->f:Lo/ScaleXSpan;

    invoke-virtual {v11}, Lo/ScaleXSpan;->e()Lo/RelativeSizeSpan;

    move-result-object v11

    .line 104
    iget-object v14, v0, Lo/ThreadedRenderer;->h:Lo/SuggestionService;

    invoke-static {v14, v7, v3, v7}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v14

    .line 105
    iget-object v3, v0, Lo/ThreadedRenderer;->f:Lo/ScaleXSpan;

    invoke-virtual {v3}, Lo/ScaleXSpan;->c()Lo/TextClassificationSession;

    move-result-object v15

    move-object v3, v1

    move-object v7, v2

    .line 93
    invoke-direct/range {v3 .. v15}, Lo/TextureLayer;-><init>(Lo/InputBinding;Lo/TextClassifierImpl;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/SurfaceSession;Lo/Surface;Lo/SubMenu;Lo/RelativeSizeSpan;Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;Lo/TextClassifierService;Lo/TextClassificationSession;)V

    return-object v1
.end method
