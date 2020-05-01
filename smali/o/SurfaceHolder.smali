.class public final Lo/SurfaceHolder;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final b:Lo/InputBinding;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/SurfaceHolder;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/SurfaceHolder;->b:Lo/InputBinding;

    return-void
.end method


# virtual methods
.method public final c()Lo/SubMenu;
    .locals 3

    .line 26
    new-instance v0, Lo/SubMenu;

    iget-object v1, p0, Lo/SurfaceHolder;->b:Lo/InputBinding;

    invoke-virtual {p0}, Lo/SurfaceHolder;->e()Lo/SoundEffectConstants;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/SubMenu;-><init>(Lo/InputBinding;Lo/SoundEffectConstants;)V

    return-object v0
.end method

.method public final e()Lo/SoundEffectConstants;
    .locals 4

    .line 20
    iget-object v0, p0, Lo/SurfaceHolder;->a:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "emailPreference"

    .line 30
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 31
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 37
    :cond_0
    instance-of v2, v0, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez v2, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    check-cast v0, Lcom/netflix/android/moneyball/fields/BooleanField;

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 21
    :goto_2
    iget-object v2, p0, Lo/SurfaceHolder;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_6

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 43
    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "emailConsentLabelId"

    .line 44
    invoke-interface {v2, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_4

    goto :goto_4

    .line 51
    :cond_4
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    move-object v1, v2

    .line 56
    :goto_4
    check-cast v1, Ljava/lang/String;

    .line 19
    :cond_6
    new-instance v2, Lo/SoundEffectConstants;

    invoke-direct {v2, v0, v1}, Lo/SoundEffectConstants;-><init>(Lcom/netflix/android/moneyball/fields/BooleanField;Ljava/lang/String;)V

    return-object v2
.end method
