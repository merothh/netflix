.class public final Lo/Pg;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Pg$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/Pg$Application;


# instance fields
.field private final f:Lo/UpdateEngine;

.field private h:Lo/Pd;

.field private i:Lo/Pl;

.field private j:Lo/Pj;

.field private m:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Pg$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Pg$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Pg;->b:Lo/Pg$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 29
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lo/Pg;->f:Lo/UpdateEngine;

    return-void
.end method


# virtual methods
.method public ad_()Z
    .locals 4

    .line 34
    invoke-virtual {p0}, Lo/Pg;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string v1, "requireNetflixActivity()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lo/Pg;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lo/Pg;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->lW:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lo/Pg;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lo/Pg;->d:I

    iget v1, p0, Lo/Pg;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lo/Pg;->g:I

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 103
    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 52
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lo/Pg;->b:Lo/Pg$Application;

    invoke-virtual {p3}, Lo/Pg$Application;->getLogTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " - Container is null: cannot create Notifications UI"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    new-instance p1, Lo/Pj;

    invoke-virtual {p0}, Lo/Pg;->requireActivity()Lo/Serializable;

    move-result-object p3

    const-string v0, "requireActivity()"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lo/UnicodeScript;

    invoke-direct {p1, p2, p3}, Lo/Pj;-><init>(Landroid/view/ViewGroup;Lo/UnicodeScript;)V

    iput-object p1, p0, Lo/Pg;->j:Lo/Pj;

    .line 59
    new-instance p1, Lo/Pd;

    invoke-direct {p1}, Lo/Pd;-><init>()V

    iput-object p1, p0, Lo/Pg;->h:Lo/Pd;

    .line 61
    new-instance p1, Lo/Pl;

    .line 62
    invoke-virtual {p0}, Lo/Pg;->requireActivity()Lo/Serializable;

    move-result-object p2

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/UnicodeScript;

    .line 63
    iget-object p3, p0, Lo/Pg;->j:Lo/Pj;

    const-string v0, "notificationsUIView"

    if-nez p3, :cond_1

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    .line 64
    :cond_1
    iget-object v1, p0, Lo/Pg;->h:Lo/Pd;

    if-nez v1, :cond_2

    const-string v2, "notificationsRepository"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    .line 65
    :cond_2
    iget-object v2, p0, Lo/Pg;->f:Lo/UpdateEngine;

    const-class v3, Lo/Ph;

    invoke-virtual {v2, v3}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    .line 61
    invoke-direct {p1, p2, p3, v1, v2}, Lo/Pl;-><init>(Lo/UnicodeScript;Lo/Pj;Lo/Pd;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/Pg;->i:Lo/Pl;

    .line 68
    iget-object p1, p0, Lo/Pg;->j:Lo/Pj;

    if-nez p1, :cond_3

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lo/Pj;->a()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    .line 69
    new-instance p2, Lo/Pg$StateListAnimator;

    invoke-direct {p2, p0}, Lo/Pg$StateListAnimator;-><init>(Lo/Pg;)V

    check-cast p2, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lo/Pg;->f:Lo/UpdateEngine;

    invoke-virtual {p2}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object p2

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 71
    new-instance p2, Lo/Pg$TaskDescription;

    invoke-direct {p2, p0}, Lo/Pg$TaskDescription;-><init>(Lo/Pg;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 90
    iget-object p1, p0, Lo/Pg;->j:Lo/Pj;

    if-nez p1, :cond_4

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lo/Pj;->b()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    invoke-virtual {p0}, Lo/Pg;->c()V

    return-void
.end method
