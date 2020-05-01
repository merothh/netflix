.class public abstract Lo/acl;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/acl$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/acl$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/JM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    .line 31
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    iput-object v0, p0, Lo/acl;->b:Lo/JM;

    return-void
.end method

.method private final d(Landroid/content/Context;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 95
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 64
    invoke-static {v0}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Lo/acn;->d:Lo/acn;

    invoke-virtual {v1}, Lo/acn;->d()V

    .line 68
    new-instance v1, Lo/Ik;

    invoke-direct {v1, v0}, Lo/Ik;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 70
    iget-object v2, p0, Lo/acl;->b:Lo/JM;

    const-wide/32 v3, 0x36ee80

    invoke-virtual {v2, v3, v4}, Lo/JM;->a(J)Lio/reactivex/Observable;

    move-result-object v2

    .line 71
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {v2, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v2, 0x2710

    .line 72
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v5

    const-string v0, "userAgentRepository.crea\u2026S, TimeUnit.MILLISECONDS)"

    invoke-static {v5, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/planselect/FooterTextModel$openAccountSettings$1;

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/ui/ums/planselect/FooterTextModel$openAccountSettings$1;-><init>(Lo/Ik;Landroid/content/Context;)V

    move-object v8, v0

    check-cast v8, Lo/alA;

    const/4 v7, 0x0

    .line 81
    new-instance p1, Lcom/netflix/mediaclient/ui/ums/planselect/FooterTextModel$openAccountSettings$2;

    invoke-direct {p1, v1}, Lcom/netflix/mediaclient/ui/ums/planselect/FooterTextModel$openAccountSettings$2;-><init>(Lo/Ik;)V

    move-object v6, p1

    check-cast v6, Lo/alA;

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 73
    invoke-static/range {v5 .. v10}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static final synthetic e(Lo/acl;Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lo/acl;->d(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 33
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->dx:I

    return v0
.end method

.method public bridge synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 29
    check-cast p1, Lo/acl$TaskDescription;

    invoke-virtual {p0, p1}, Lo/acl;->c(Lo/acl$TaskDescription;)V

    return-void
.end method

.method public c(Lo/acl$TaskDescription;)V
    .locals 4

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lo/acl$ActionBar;

    invoke-direct {v0, p0, p1}, Lo/acl$ActionBar;-><init>(Lo/acl;Lo/acl$TaskDescription;)V

    .line 47
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 48
    invoke-virtual {p1}, Lo/acl$TaskDescription;->g()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ow:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, " "

    .line 49
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lo/acl$TaskDescription;->g()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ou:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v3, 0x21

    .line 50
    invoke-virtual {v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    .line 55
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lo/acl$TaskDescription;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ov:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, "SpannableStringBuilder()\u2026er_text_second_sentence))"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lo/acl$TaskDescription;->c()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 58
    invoke-virtual {p1}, Lo/acl$TaskDescription;->c()Landroid/widget/TextView;

    move-result-object p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lo/acl$TaskDescription;

    invoke-virtual {p0, p1}, Lo/acl;->c(Lo/acl$TaskDescription;)V

    return-void
.end method
