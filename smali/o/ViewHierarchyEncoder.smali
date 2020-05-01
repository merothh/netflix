.class public final Lo/ViewHierarchyEncoder;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final b:Lo/InputBinding;

.field private final c:Lo/DrawableMarginSpan;

.field private final e:Lcom/netflix/android/moneyball/FlowMode;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/DrawableMarginSpan;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModelInitializer"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/ViewHierarchyEncoder;->e:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/ViewHierarchyEncoder;->b:Lo/InputBinding;

    iput-object p4, p0, Lo/ViewHierarchyEncoder;->c:Lo/DrawableMarginSpan;

    return-void
.end method


# virtual methods
.method public final a()Lo/TextureView;
    .locals 6

    .line 23
    iget-object v0, p0, Lo/ViewHierarchyEncoder;->e:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v3, "recognizedFormerMember"

    .line 20
    move-object v4, v1

    check-cast v4, Lorg/json/JSONObject;

    .line 41
    invoke-interface {v0, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 45
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    const-string v2, "SignupNativeFieldError"

    invoke-virtual {v0, v2, v3, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 48
    :cond_1
    instance-of v5, v0, Ljava/lang/Boolean;

    if-nez v5, :cond_2

    .line 49
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    const-string v2, "SignupNativeDataManipulationError"

    invoke-virtual {v0, v2, v3, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 53
    :cond_2
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 24
    iget-object v3, p0, Lo/ViewHierarchyEncoder;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_4

    const-string v4, "registrationContextCopy"

    invoke-virtual {p0, v3, v4, v2}, Lo/ViewHierarchyEncoder;->c(Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    .line 28
    :goto_4
    iget-object v3, p0, Lo/ViewHierarchyEncoder;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_8

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, p0

    check-cast v4, Lo/TextClassificationSessionId;

    .line 54
    move-object v4, v1

    check-cast v4, Lorg/json/JSONObject;

    const-string v4, "registrationImageType"

    .line 55
    invoke-interface {v3, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_5

    :cond_5
    move-object v3, v1

    :goto_5
    if-nez v3, :cond_6

    goto :goto_6

    .line 62
    :cond_6
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    move-object v1, v3

    .line 67
    :goto_6
    check-cast v1, Ljava/lang/String;

    .line 19
    :cond_8
    new-instance v3, Lo/TextureView;

    invoke-direct {v3, v0, v2, v1}, Lo/TextureView;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public final b()Lo/ViewConfiguration;
    .locals 6

    .line 33
    new-instance v0, Lo/ViewConfiguration;

    .line 34
    iget-object v1, p0, Lo/ViewHierarchyEncoder;->b:Lo/InputBinding;

    .line 35
    iget-object v2, p0, Lo/ViewHierarchyEncoder;->c:Lo/DrawableMarginSpan;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lo/DrawableMarginSpan;->c(Lo/DrawableMarginSpan;ZILjava/lang/Object;)Lo/DynamicDrawableSpan;

    move-result-object v2

    .line 36
    invoke-virtual {p0}, Lo/ViewHierarchyEncoder;->a()Lo/TextureView;

    move-result-object v3

    .line 33
    invoke-direct {v0, v1, v2, v3}, Lo/ViewConfiguration;-><init>(Lo/InputBinding;Lo/DynamicDrawableSpan;Lo/TextureView;)V

    return-object v0
.end method
