.class public final Lo/Pair;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/lang/CharSequence;

.field private final f:Lo/TextClassificationSessionFactory;

.field private final g:Lo/TextClassificationSessionFactory;

.field private final h:Lo/MutableShort;

.field private final i:Lo/ForegroundColorSpan;

.field private final j:Lo/DigitsKeyListener;

.field private final l:Lo/NotificationStats;

.field private final n:Lo/PackageUtils;

.field private final o:Lo/AlignmentSpan;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/MutableShort;Lo/DigitsKeyListener;Lo/ForegroundColorSpan;Lo/AlignmentSpan;Lo/NotificationStats;Lo/PackageUtils;Lo/TextClassifierService;)V
    .locals 1

    const-string v0, "signupNetworkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMembershipRequestLogger"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanRequestLogger"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "giftCodeAppliedBannerViewModel"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touViewModel"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMembershipButtonViewModel"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanViewModel"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p12, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2, p12}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p3, p0, Lo/Pair;->f:Lo/TextClassificationSessionFactory;

    iput-object p4, p0, Lo/Pair;->g:Lo/TextClassificationSessionFactory;

    iput-object p6, p0, Lo/Pair;->h:Lo/MutableShort;

    iput-object p7, p0, Lo/Pair;->j:Lo/DigitsKeyListener;

    iput-object p8, p0, Lo/Pair;->i:Lo/ForegroundColorSpan;

    iput-object p9, p0, Lo/Pair;->o:Lo/AlignmentSpan;

    iput-object p10, p0, Lo/Pair;->l:Lo/NotificationStats;

    iput-object p11, p0, Lo/Pair;->n:Lo/PackageUtils;

    .line 49
    iget-object p1, p0, Lo/Pair;->n:Lo/PackageUtils;

    invoke-virtual {p1}, Lo/PackageUtils;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->di:I

    invoke-virtual {p2, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 52
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->dh:I

    invoke-virtual {p2, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    .line 49
    :goto_0
    iput-object p1, p0, Lo/Pair;->b:Ljava/lang/String;

    .line 55
    iget-object p1, p0, Lo/Pair;->o:Lo/AlignmentSpan;

    invoke-virtual {p1}, Lo/AlignmentSpan;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/Pair;->a:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lo/Pair;->n:Lo/PackageUtils;

    invoke-virtual {p1}, Lo/PackageUtils;->d()Z

    move-result p1

    iput-boolean p1, p0, Lo/Pair;->d:Z

    .line 59
    invoke-virtual {p5}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/Pair;->e:Ljava/lang/CharSequence;

    .line 61
    iget-object p1, p0, Lo/Pair;->n:Lo/PackageUtils;

    invoke-virtual {p1}, Lo/PackageUtils;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p2, p1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 61
    :goto_1
    iput-object p1, p0, Lo/Pair;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lo/Pair;->d:Z

    return v0
.end method

.method public final e()V
    .locals 3

    .line 35
    iget-object v0, p0, Lo/Pair;->n:Lo/PackageUtils;

    invoke-virtual {v0}, Lo/PackageUtils;->c()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/Pair;->h()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/Pair;->f:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/Pair;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 39
    iget-object v0, p0, Lo/Pair;->l:Lo/NotificationStats;

    invoke-virtual {v0}, Lo/NotificationStats;->c()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/Pair;->g()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/Pair;->g:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/Pair;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final g()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lo/Pair;->h:Lo/MutableShort;

    invoke-virtual {v0}, Lo/MutableShort;->b()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lo/Pair;->h:Lo/MutableShort;

    invoke-virtual {v0}, Lo/MutableShort;->e()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/Pair;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/Pair;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lo/ForegroundColorSpan;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/Pair;->i:Lo/ForegroundColorSpan;

    return-object v0
.end method

.method public final l()Lo/DigitsKeyListener;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/Pair;->j:Lo/DigitsKeyListener;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/Pair;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/CharSequence;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/Pair;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final o()Lo/AlignmentSpan;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/Pair;->o:Lo/AlignmentSpan;

    return-object v0
.end method

.method public final q()Lo/NotificationStats;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/Pair;->l:Lo/NotificationStats;

    return-object v0
.end method
