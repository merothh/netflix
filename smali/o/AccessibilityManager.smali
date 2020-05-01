.class public final Lo/AccessibilityManager;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Ljava/lang/CharSequence;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/netflix/cl/model/TrackingInfo;

.field private final g:Lo/TextClassificationSessionFactory;

.field private final h:Lo/AccessibilityInteractionClient;

.field private final i:Ljava/lang/String;

.field private final j:Lo/AccessibilityWindowInfo;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/InputBinding;Lo/DynamicDrawableSpan;Lo/AccessibilityWindowInfo;Lo/AccessibilityInteractionClient;Ljava/util/List;Lo/TextClassificationSessionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TextClassifierImpl;",
            "Lo/TextClassifierService;",
            "Lo/InputBinding;",
            "Lo/DynamicDrawableSpan;",
            "Lo/AccessibilityWindowInfo;",
            "Lo/AccessibilityInteractionClient;",
            "Ljava/util/List<",
            "Lo/TransformationMethod2;",
            ">;",
            "Lo/TextClassificationSessionFactory;",
            ")V"
        }
    .end annotation

    const-string v0, "signupNetworkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentOptionViewModels"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePaymentRequestLogger"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p3, p2}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p5, p0, Lo/AccessibilityManager;->j:Lo/AccessibilityWindowInfo;

    iput-object p6, p0, Lo/AccessibilityManager;->h:Lo/AccessibilityInteractionClient;

    iput-object p8, p0, Lo/AccessibilityManager;->g:Lo/TextClassificationSessionFactory;

    .line 31
    iget-object p1, p0, Lo/AccessibilityManager;->h:Lo/AccessibilityInteractionClient;

    invoke-virtual {p1}, Lo/AccessibilityInteractionClient;->b()Z

    move-result p1

    iput-boolean p1, p0, Lo/AccessibilityManager;->c:Z

    .line 37
    invoke-virtual {p4}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/AccessibilityManager;->d:Ljava/lang/CharSequence;

    .line 39
    iget-object p1, p0, Lo/AccessibilityManager;->h:Lo/AccessibilityInteractionClient;

    invoke-virtual {p1}, Lo/AccessibilityInteractionClient;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lo/AccessibilityManager;->h:Lo/AccessibilityInteractionClient;

    invoke-virtual {p1}, Lo/AccessibilityInteractionClient;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    iput-object p1, p0, Lo/AccessibilityManager;->e:Ljava/lang/String;

    .line 43
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qM:I

    invoke-virtual {p3, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/AccessibilityManager;->a:Ljava/lang/String;

    .line 48
    iget-object p1, p0, Lo/AccessibilityManager;->h:Lo/AccessibilityInteractionClient;

    invoke-virtual {p1}, Lo/AccessibilityInteractionClient;->h()Z

    move-result p1

    const/4 p2, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/AccessibilityManager;->h:Lo/AccessibilityInteractionClient;

    invoke-virtual {p1}, Lo/AccessibilityInteractionClient;->j()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string p5, "carrier"

    const/4 p6, 0x2

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    .line 53
    sget p8, Lcom/netflix/mediaclient/ui/R$AssistContent;->qj:I

    invoke-virtual {p3, p8}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p8

    .line 54
    iget-object v0, p0, Lo/AccessibilityManager;->h:Lo/AccessibilityInteractionClient;

    invoke-virtual {v0}, Lo/AccessibilityInteractionClient;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, p5, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p5

    .line 55
    invoke-virtual {p5}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p1, p4

    .line 57
    sget p4, Lcom/netflix/mediaclient/ui/R$AssistContent;->eI:I

    invoke-virtual {p3, p4}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p4

    .line 58
    iget-object p5, p0, Lo/AccessibilityManager;->h:Lo/AccessibilityInteractionClient;

    invoke-virtual {p5}, Lo/AccessibilityInteractionClient;->j()Ljava/lang/String;

    move-result-object p5

    const-string p8, "endDate"

    invoke-virtual {p4, p8, p5}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p4

    .line 59
    invoke-virtual {p4}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p1, p2

    .line 60
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->eh:I

    invoke-virtual {p3, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p6

    const/4 p2, 0x3

    .line 61
    sget p4, Lcom/netflix/mediaclient/ui/R$AssistContent;->qg:I

    invoke-virtual {p3, p4}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    .line 51
    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/AccessibilityManager;->b:Ljava/util/List;

    goto :goto_2

    :cond_2
    new-array p1, p6, [Ljava/lang/String;

    .line 66
    sget p6, Lcom/netflix/mediaclient/ui/R$AssistContent;->qj:I

    invoke-static {p6}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p6

    .line 67
    iget-object p8, p0, Lo/AccessibilityManager;->h:Lo/AccessibilityInteractionClient;

    invoke-virtual {p8}, Lo/AccessibilityInteractionClient;->c()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p6, p5, p8}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p5

    .line 68
    invoke-virtual {p5}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p1, p4

    .line 69
    sget p4, Lcom/netflix/mediaclient/ui/R$AssistContent;->qg:I

    invoke-virtual {p3, p4}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    .line 64
    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/AccessibilityManager;->b:Ljava/util/List;

    .line 75
    :goto_2
    new-instance p1, Lo/AccessibilityManager$ActionBar;

    invoke-direct {p1, p7}, Lo/AccessibilityManager$ActionBar;-><init>(Ljava/util/List;)V

    check-cast p1, Lcom/netflix/cl/model/TrackingInfo;

    iput-object p1, p0, Lo/AccessibilityManager;->f:Lcom/netflix/cl/model/TrackingInfo;

    .line 84
    iget-object p1, p0, Lo/AccessibilityManager;->h:Lo/AccessibilityInteractionClient;

    invoke-virtual {p1}, Lo/AccessibilityInteractionClient;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/AccessibilityManager;->i:Ljava/lang/String;

    return-void
.end method

.method private final o()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lo/AccessibilityManager;->j:Lo/AccessibilityWindowInfo;

    invoke-virtual {v0}, Lo/AccessibilityWindowInfo;->d()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lo/AccessibilityManager;->c:Z

    return v0
.end method

.method public final e()V
    .locals 3

    .line 34
    iget-object v0, p0, Lo/AccessibilityManager;->h:Lo/AccessibilityInteractionClient;

    invoke-virtual {v0}, Lo/AccessibilityInteractionClient;->a()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-direct {p0}, Lo/AccessibilityManager;->o()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/AccessibilityManager;->g:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/AccessibilityManager;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/AccessibilityManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lo/AccessibilityManager;->b:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/AccessibilityManager;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/AccessibilityManager;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/CharSequence;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/AccessibilityManager;->d:Ljava/lang/CharSequence;

    return-object v0
.end method
