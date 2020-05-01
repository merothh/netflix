.class public abstract Lo/MathUtils;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Lo/InputBinding;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lo/TextClassificationSessionFactory;

.field private final j:Z

.field private final k:Lo/NotificationStats;

.field private final l:Lo/MalformedJsonException;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lo/MutableBoolean;

.field private final o:Lo/LocaleSpan;

.field private final p:Lo/DigitsKeyListener;

.field private final s:Lo/TextClassificationSessionFactory;

.field private final t:Lo/TextClassificationSessionFactory;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/MalformedJsonException;Lo/MutableBoolean;Lo/NotificationStats;Lo/LocaleSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassifierService;Lo/DigitsKeyListener;Lo/AlignmentSpan;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TextClassifierImpl;",
            "Lo/InputBinding;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/DynamicDrawableSpan;",
            "Lo/MalformedJsonException;",
            "Lo/MutableBoolean;",
            "Lo/NotificationStats;",
            "Lo/LocaleSpan;",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/TextClassifierService;",
            "Lo/DigitsKeyListener;",
            "Lo/AlignmentSpan;",
            ")V"
        }
    .end annotation

    const-string v0, "signupNetworkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanRequestLogger"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanViewModel"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touViewModel"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFields"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMembershipRequestLogger"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePaymentRequestLogger"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p12, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "giftCodeAppliedViewModel"

    invoke-static {p13, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMembershipViewModel"

    invoke-static {p14, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1, p2, p12}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p2, p0, Lo/MathUtils;->f:Lo/InputBinding;

    iput-object p3, p0, Lo/MathUtils;->i:Lo/TextClassificationSessionFactory;

    iput-object p5, p0, Lo/MathUtils;->l:Lo/MalformedJsonException;

    iput-object p6, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    iput-object p7, p0, Lo/MathUtils;->k:Lo/NotificationStats;

    iput-object p8, p0, Lo/MathUtils;->o:Lo/LocaleSpan;

    iput-object p9, p0, Lo/MathUtils;->m:Ljava/util/List;

    iput-object p10, p0, Lo/MathUtils;->t:Lo/TextClassificationSessionFactory;

    iput-object p11, p0, Lo/MathUtils;->s:Lo/TextClassificationSessionFactory;

    iput-object p13, p0, Lo/MathUtils;->p:Lo/DigitsKeyListener;

    .line 70
    invoke-virtual {p4}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/MathUtils;->c:Ljava/lang/CharSequence;

    .line 77
    iget-object p1, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {p1}, Lo/MutableBoolean;->h()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/MathUtils;->f:Lo/InputBinding;

    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ko:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/MathUtils;->d:Ljava/lang/String;

    .line 79
    iget-object p1, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {p1}, Lo/MutableBoolean;->b()Z

    move-result p1

    iput-boolean p1, p0, Lo/MathUtils;->b:Z

    .line 81
    iget-object p1, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {p1}, Lo/MutableBoolean;->d()Z

    move-result p1

    iput-boolean p1, p0, Lo/MathUtils;->a:Z

    .line 83
    iget-object p1, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {p1}, Lo/MutableBoolean;->e()Z

    move-result p1

    iput-boolean p1, p0, Lo/MathUtils;->e:Z

    .line 94
    iget-object p1, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {p1}, Lo/MutableBoolean;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lo/MathUtils;->f:Lo/InputBinding;

    invoke-virtual {p2, p1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lo/MathUtils;->g:Ljava/lang/String;

    .line 113
    invoke-virtual {p14}, Lo/AlignmentSpan;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/MathUtils;->h:Ljava/lang/String;

    .line 117
    iget-object p1, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {p1}, Lo/MutableBoolean;->m()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {p1}, Lo/MutableBoolean;->i()I

    move-result p1

    if-le p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lo/MathUtils;->j:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lo/MathUtils;->b:Z

    return v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public final f()V
    .locals 3

    .line 64
    iget-object v0, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {v0}, Lo/MutableBoolean;->m()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lo/MathUtils;->t()Lo/Cloneable;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lo/MathUtils;->s:Lo/TextClassificationSessionFactory;

    .line 63
    invoke-virtual {p0, v0, v1, v2}, Lo/MathUtils;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public abstract g()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/MathUtils;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final i()V
    .locals 3

    .line 56
    iget-object v0, p0, Lo/MathUtils;->k:Lo/NotificationStats;

    invoke-virtual {v0}, Lo/NotificationStats;->c()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lo/MathUtils;->n()Lo/Cloneable;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lo/MathUtils;->i:Lo/TextClassificationSessionFactory;

    .line 55
    invoke-virtual {p0, v0, v1, v2}, Lo/MathUtils;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final j()V
    .locals 3

    .line 46
    iget-object v0, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {v0}, Lo/MutableBoolean;->c()Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {v1}, Lo/MutableBoolean;->g()Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->setOption(Lcom/netflix/android/moneyball/fields/OptionField;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {v0}, Lo/MutableBoolean;->l()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lo/MathUtils;->m()Lo/Cloneable;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lo/MathUtils;->t:Lo/TextClassificationSessionFactory;

    .line 47
    invoke-virtual {p0, v0, v1, v2}, Lo/MathUtils;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/MathUtils;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lo/MathUtils;->a:Z

    return v0
.end method

.method public final m()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lo/MathUtils;->l:Lo/MalformedJsonException;

    invoke-virtual {v0}, Lo/MalformedJsonException;->c()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lo/MathUtils;->l:Lo/MalformedJsonException;

    invoke-virtual {v0}, Lo/MalformedJsonException;->a()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lo/MathUtils;->e:Z

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lo/MathUtils;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/MathUtils;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 4

    .line 97
    iget-object v0, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {v0}, Lo/MutableBoolean;->k()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    iget-object v2, p0, Lo/MathUtils;->f:Lo/InputBinding;

    invoke-virtual {v2, v0}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Lo/MathUtils;->h:Ljava/lang/String;

    const-string v3, "BUTTON_TEXT"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v2, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {v2}, Lo/MutableBoolean;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MIN_AGE"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v2, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {v2}, Lo/MutableBoolean;->n()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PRICE"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v2, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    invoke-virtual {v2}, Lo/MutableBoolean;->q()Ljava/lang/String;

    move-result-object v2

    const-string v3, "planBillingFrequency"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v2, p0, Lo/MathUtils;->f:Lo/InputBinding;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qz:I

    invoke-virtual {v2, v3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TERMS_URL"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v2, p0, Lo/MathUtils;->f:Lo/InputBinding;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->pb:I

    invoke-virtual {v2, v3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PRIVACY_URL"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lo/MathUtils;->p:Lo/DigitsKeyListener;

    invoke-virtual {v0}, Lo/DigitsKeyListener;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lo/MathUtils;->l:Lo/MalformedJsonException;

    invoke-virtual {v0}, Lo/MalformedJsonException;->d()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lo/MathUtils;->j:Z

    return v0
.end method

.method public final v()Lo/MutableBoolean;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/MathUtils;->n:Lo/MutableBoolean;

    return-object v0
.end method

.method public final w()Lo/LocaleSpan;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/MathUtils;->o:Lo/LocaleSpan;

    return-object v0
.end method

.method public final x()Lo/NotificationStats;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/MathUtils;->k:Lo/NotificationStats;

    return-object v0
.end method

.method public final y()Lo/InputBinding;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/MathUtils;->f:Lo/InputBinding;

    return-object v0
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lo/MathUtils;->m:Ljava/util/List;

    return-object v0
.end method
