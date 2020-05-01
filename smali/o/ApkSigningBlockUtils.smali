.class public final Lo/ApkSigningBlockUtils;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/InputBinding;

.field private final b:Lo/SuggestionService;

.field private final c:Lo/TextClassifierImpl;

.field private final d:Lo/Deprecated$ActionBar;

.field private final e:Lcom/netflix/android/moneyball/FlowMode;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/TextClassifierImpl;Lo/SuggestionService;Lo/Deprecated$ActionBar;)V
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

    .line 24
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/ApkSigningBlockUtils;->a:Lo/InputBinding;

    iput-object p4, p0, Lo/ApkSigningBlockUtils;->c:Lo/TextClassifierImpl;

    iput-object p5, p0, Lo/ApkSigningBlockUtils;->b:Lo/SuggestionService;

    iput-object p6, p0, Lo/ApkSigningBlockUtils;->d:Lo/Deprecated$ActionBar;

    return-void
.end method


# virtual methods
.method public final e(Landroidx/fragment/app/Fragment;)Lo/Xml;
    .locals 7

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lo/ApkSigningBlockUtils;->e()Lo/XmlPullAttributes;

    move-result-object v3

    .line 62
    iget-object v0, p0, Lo/ApkSigningBlockUtils;->d:Lo/Deprecated$ActionBar;

    invoke-static {p1, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    const-class v0, Lo/ApkSignatureSchemeV2Verifier;

    invoke-virtual {p1, v0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lo/ApkSignatureSchemeV2Verifier;

    .line 64
    new-instance p1, Lo/Xml;

    .line 65
    iget-object v2, p0, Lo/ApkSigningBlockUtils;->a:Lo/InputBinding;

    .line 68
    iget-object v5, p0, Lo/ApkSigningBlockUtils;->c:Lo/TextClassifierImpl;

    .line 69
    iget-object v0, p0, Lo/ApkSigningBlockUtils;->b:Lo/SuggestionService;

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v1, v6, v1}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v6

    move-object v1, p1

    .line 64
    invoke-direct/range {v1 .. v6}, Lo/Xml;-><init>(Lo/InputBinding;Lo/XmlPullAttributes;Lo/ApkSignatureSchemeV2Verifier;Lo/TextClassifierImpl;Lo/TextClassifierService;)V

    return-object p1
.end method

.method public final e()Lo/XmlPullAttributes;
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 29
    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 35
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_2

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v4, "continueAction"

    .line 74
    invoke-interface {v2, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    .line 75
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 78
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    const-string v3, "SignupNativeFieldError"

    invoke-virtual {v2, v3, v4, v5}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    move-object v2, v1

    goto :goto_1

    .line 81
    :cond_0
    instance-of v6, v2, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v6, :cond_1

    .line 82
    invoke-static {v3}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    const-string v3, "SignupNativeDataManipulationError"

    invoke-virtual {v2, v3, v4, v5}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    check-cast v2, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v3, v2

    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 36
    :goto_2
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_6

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v0

    check-cast v4, Lo/TextClassificationSessionId;

    .line 87
    move-object v4, v1

    check-cast v4, Lorg/json/JSONObject;

    const-string v4, "refundDaysRemaining"

    .line 88
    invoke-interface {v2, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_4

    :goto_4
    move-object v2, v1

    goto :goto_5

    .line 95
    :cond_4
    instance-of v4, v2, Ljava/lang/String;

    if-nez v4, :cond_5

    goto :goto_4

    .line 100
    :cond_5
    :goto_5
    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    goto :goto_6

    :cond_6
    move-object v4, v1

    .line 37
    :goto_6
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_a

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 101
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "hasLcfmOffer"

    .line 102
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_7

    :cond_7
    move-object v2, v1

    :goto_7
    if-nez v2, :cond_8

    :goto_8
    move-object v2, v1

    goto :goto_9

    .line 109
    :cond_8
    instance-of v5, v2, Ljava/lang/Boolean;

    if-nez v5, :cond_9

    goto :goto_8

    .line 114
    :cond_9
    :goto_9
    check-cast v2, Ljava/lang/Boolean;

    goto :goto_a

    :cond_a
    move-object v2, v1

    :goto_a
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 39
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_e

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    .line 115
    move-object v7, v1

    check-cast v7, Lorg/json/JSONObject;

    const-string v7, "planPrice"

    .line 116
    invoke-interface {v2, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_b

    :cond_b
    move-object v2, v1

    :goto_b
    if-nez v2, :cond_c

    :goto_c
    move-object v2, v1

    goto :goto_d

    .line 123
    :cond_c
    instance-of v7, v2, Ljava/lang/String;

    if-nez v7, :cond_d

    goto :goto_c

    .line 128
    :cond_d
    :goto_d
    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    goto :goto_e

    :cond_e
    move-object v7, v1

    .line 40
    :goto_e
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_12

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v8, v0

    check-cast v8, Lo/TextClassificationSessionId;

    .line 129
    move-object v8, v1

    check-cast v8, Lorg/json/JSONObject;

    const-string v8, "planDuration"

    .line 130
    invoke-interface {v2, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_f

    :cond_f
    move-object v2, v1

    :goto_f
    if-nez v2, :cond_10

    :goto_10
    move-object v2, v1

    goto :goto_11

    .line 137
    :cond_10
    instance-of v8, v2, Ljava/lang/String;

    if-nez v8, :cond_11

    goto :goto_10

    .line 142
    :cond_11
    :goto_11
    check-cast v2, Ljava/lang/String;

    move-object v12, v2

    goto :goto_12

    :cond_12
    move-object v12, v1

    .line 42
    :goto_12
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_16

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v8, v0

    check-cast v8, Lo/TextClassificationSessionId;

    .line 143
    move-object v8, v1

    check-cast v8, Lorg/json/JSONObject;

    const-string v8, "hasFreeTrial"

    .line 144
    invoke-interface {v2, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_13

    :cond_13
    move-object v2, v1

    :goto_13
    if-nez v2, :cond_14

    :goto_14
    move-object v2, v1

    goto :goto_15

    .line 151
    :cond_14
    instance-of v8, v2, Ljava/lang/Boolean;

    if-nez v8, :cond_15

    goto :goto_14

    .line 156
    :cond_15
    :goto_15
    check-cast v2, Ljava/lang/Boolean;

    goto :goto_16

    :cond_16
    move-object v2, v1

    :goto_16
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 43
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_1a

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 157
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "giftAmount"

    .line 158
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_17

    :cond_17
    move-object v2, v1

    :goto_17
    if-nez v2, :cond_18

    :goto_18
    move-object v2, v1

    goto :goto_19

    .line 165
    :cond_18
    instance-of v5, v2, Ljava/lang/String;

    if-nez v5, :cond_19

    goto :goto_18

    .line 170
    :cond_19
    :goto_19
    check-cast v2, Ljava/lang/String;

    move-object v11, v2

    goto :goto_1a

    :cond_1a
    move-object v11, v1

    .line 45
    :goto_1a
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_1e

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 171
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "freeTrialEndDate"

    .line 172
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1b

    :cond_1b
    move-object v2, v1

    :goto_1b
    if-nez v2, :cond_1c

    :goto_1c
    move-object v2, v1

    goto :goto_1d

    .line 179
    :cond_1c
    instance-of v5, v2, Ljava/lang/String;

    if-nez v5, :cond_1d

    goto :goto_1c

    .line 184
    :cond_1d
    :goto_1d
    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    goto :goto_1e

    :cond_1e
    move-object v8, v1

    .line 46
    :goto_1e
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_22

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 185
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "email"

    .line 186
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1f

    :cond_1f
    move-object v2, v1

    :goto_1f
    if-nez v2, :cond_20

    :goto_20
    move-object v2, v1

    goto :goto_21

    .line 193
    :cond_20
    instance-of v5, v2, Ljava/lang/String;

    if-nez v5, :cond_21

    goto :goto_20

    .line 198
    :cond_21
    :goto_21
    check-cast v2, Ljava/lang/String;

    move-object v14, v2

    goto :goto_22

    :cond_22
    move-object v14, v1

    .line 47
    :goto_22
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_26

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 199
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "localizedPlanName"

    .line 200
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_23

    :cond_23
    move-object v2, v1

    :goto_23
    if-nez v2, :cond_24

    :goto_24
    move-object v2, v1

    goto :goto_25

    .line 207
    :cond_24
    instance-of v5, v2, Ljava/lang/String;

    if-nez v5, :cond_25

    goto :goto_24

    .line 212
    :cond_25
    :goto_25
    check-cast v2, Ljava/lang/String;

    move-object v15, v2

    goto :goto_26

    :cond_26
    move-object v15, v1

    .line 48
    :goto_26
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_2a

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 213
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "accountNumberDisplay"

    .line 214
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_27

    :cond_27
    move-object v2, v1

    :goto_27
    if-nez v2, :cond_28

    :goto_28
    move-object v2, v1

    goto :goto_29

    .line 221
    :cond_28
    instance-of v5, v2, Ljava/lang/String;

    if-nez v5, :cond_29

    goto :goto_28

    .line 226
    :cond_29
    :goto_29
    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v2

    goto :goto_2a

    :cond_2a
    move-object/from16 v16, v1

    .line 49
    :goto_2a
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_2e

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 227
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "cardType"

    .line 228
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2b

    :cond_2b
    move-object v2, v1

    :goto_2b
    if-nez v2, :cond_2c

    :goto_2c
    move-object v2, v1

    goto :goto_2d

    .line 235
    :cond_2c
    instance-of v5, v2, Ljava/lang/String;

    if-nez v5, :cond_2d

    goto :goto_2c

    .line 240
    :cond_2d
    :goto_2d
    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    goto :goto_2e

    :cond_2e
    move-object/from16 v17, v1

    .line 50
    :goto_2e
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_31

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v5, "countryCode"

    .line 242
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    .line 243
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    if-nez v2, :cond_2f

    :goto_2f
    move-object v2, v1

    goto :goto_30

    .line 249
    :cond_2f
    instance-of v5, v2, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v5, :cond_30

    goto :goto_2f

    .line 254
    :cond_30
    :goto_30
    check-cast v2, Lcom/netflix/android/moneyball/fields/StringField;

    move-object/from16 v18, v2

    goto :goto_31

    :cond_31
    move-object/from16 v18, v1

    .line 51
    :goto_31
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_34

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v5, "mobilePhone"

    .line 256
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    .line 257
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    if-nez v2, :cond_32

    :goto_32
    move-object v2, v1

    goto :goto_33

    .line 263
    :cond_32
    instance-of v5, v2, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v5, :cond_33

    goto :goto_32

    .line 268
    :cond_33
    :goto_33
    check-cast v2, Lcom/netflix/android/moneyball/fields/StringField;

    move-object/from16 v19, v2

    goto :goto_34

    :cond_34
    move-object/from16 v19, v1

    .line 52
    :goto_34
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_38

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 269
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "mopType"

    .line 270
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_35

    :cond_35
    move-object v2, v1

    :goto_35
    if-nez v2, :cond_36

    :goto_36
    move-object v2, v1

    goto :goto_37

    .line 277
    :cond_36
    instance-of v5, v2, Ljava/lang/String;

    if-nez v5, :cond_37

    goto :goto_36

    .line 282
    :cond_37
    :goto_37
    check-cast v2, Ljava/lang/String;

    move-object/from16 v20, v2

    goto :goto_38

    :cond_38
    move-object/from16 v20, v1

    .line 53
    :goto_38
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_3c

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 283
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "firstName"

    .line 284
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_39

    :cond_39
    move-object v2, v1

    :goto_39
    if-nez v2, :cond_3a

    :goto_3a
    move-object v2, v1

    goto :goto_3b

    .line 291
    :cond_3a
    instance-of v5, v2, Ljava/lang/String;

    if-nez v5, :cond_3b

    goto :goto_3a

    .line 296
    :cond_3b
    :goto_3b
    check-cast v2, Ljava/lang/String;

    move-object/from16 v21, v2

    goto :goto_3c

    :cond_3c
    move-object/from16 v21, v1

    .line 54
    :goto_3c
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_40

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 297
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "lastName"

    .line 298
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3d

    :cond_3d
    move-object v2, v1

    :goto_3d
    if-nez v2, :cond_3e

    :goto_3e
    move-object v2, v1

    goto :goto_3f

    .line 305
    :cond_3e
    instance-of v5, v2, Ljava/lang/String;

    if-nez v5, :cond_3f

    goto :goto_3e

    .line 310
    :cond_3f
    :goto_3f
    check-cast v2, Ljava/lang/String;

    move-object/from16 v22, v2

    goto :goto_40

    :cond_40
    move-object/from16 v22, v1

    .line 55
    :goto_40
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_44

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    .line 311
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "postalCode"

    .line 312
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_41

    :cond_41
    move-object v2, v1

    :goto_41
    if-nez v2, :cond_42

    :goto_42
    move-object v2, v1

    goto :goto_43

    .line 319
    :cond_42
    instance-of v5, v2, Ljava/lang/String;

    if-nez v5, :cond_43

    goto :goto_42

    .line 324
    :cond_43
    :goto_43
    check-cast v2, Ljava/lang/String;

    move-object/from16 v23, v2

    goto :goto_44

    :cond_44
    move-object/from16 v23, v1

    .line 56
    :goto_44
    iget-object v2, v0, Lo/ApkSigningBlockUtils;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_47

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v5, "smsConsent"

    .line 326
    invoke-interface {v2, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    .line 327
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    if-nez v2, :cond_45

    goto :goto_45

    .line 333
    :cond_45
    instance-of v5, v2, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez v5, :cond_46

    goto :goto_45

    :cond_46
    move-object v1, v2

    .line 338
    :goto_45
    check-cast v1, Lcom/netflix/android/moneyball/fields/BooleanField;

    :cond_47
    move-object/from16 v24, v1

    .line 34
    new-instance v1, Lo/XmlPullAttributes;

    move-object v2, v1

    move v5, v6

    move-object v6, v13

    move-object v9, v13

    invoke-direct/range {v2 .. v24}, Lo/XmlPullAttributes;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/BooleanField;)V

    return-object v1
.end method
