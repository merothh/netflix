.class public final Lo/DrawableMarginSpan;
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

    .line 16
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/DrawableMarginSpan;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/DrawableMarginSpan;->b:Lo/InputBinding;

    return-void
.end method

.method public static synthetic c(Lo/DrawableMarginSpan;ZILjava/lang/Object;)Lo/DynamicDrawableSpan;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lo/DrawableMarginSpan;->e(Z)Lo/DynamicDrawableSpan;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Z)Lo/AccessibilityURLSpan;
    .locals 5

    .line 20
    iget-object v0, p0, Lo/DrawableMarginSpan;->a:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v3, "steps"

    .line 33
    invoke-interface {v0, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 34
    move-object v4, v1

    check-cast v4, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 37
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object p1

    const-string v0, "SignupNativeFieldError"

    invoke-virtual {p1, v0, v3, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_2

    const-string p1, "currentStep"

    .line 21
    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/Field;->getAttr(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    instance-of v2, p1, Ljava/lang/Number;

    if-nez v2, :cond_3

    move-object p1, v1

    :cond_3
    check-cast p1, Ljava/lang/Number;

    if-eqz v0, :cond_4

    const-string v2, "totalSteps"

    .line 22
    invoke-virtual {v0, v2}, Lcom/netflix/android/moneyball/fields/Field;->getAttr(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    instance-of v2, v0, Ljava/lang/Number;

    if-nez v2, :cond_5

    move-object v0, v1

    :cond_5
    check-cast v0, Ljava/lang/Number;

    .line 24
    new-instance v2, Lo/AccessibilityURLSpan;

    if-eqz p1, :cond_6

    .line 25
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, v1

    :goto_2
    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 24
    :cond_7
    invoke-direct {v2, p1, v1}, Lo/AccessibilityURLSpan;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v2
.end method

.method public final e(Z)Lo/DynamicDrawableSpan;
    .locals 2

    .line 30
    new-instance v0, Lo/DynamicDrawableSpan;

    iget-object v1, p0, Lo/DrawableMarginSpan;->b:Lo/InputBinding;

    invoke-virtual {p0, p1}, Lo/DrawableMarginSpan;->a(Z)Lo/AccessibilityURLSpan;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lo/DynamicDrawableSpan;-><init>(Lo/InputBinding;Lo/AccessibilityURLSpan;)V

    return-object v0
.end method
