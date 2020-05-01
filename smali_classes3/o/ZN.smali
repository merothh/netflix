.class public Lo/ZN;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZN$Activity;
    }
.end annotation


# instance fields
.field private final b:Lo/UpdateEngine;

.field private f:Lo/ZS;

.field private h:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

.field private i:Lo/ZN$Activity;

.field private j:Lo/ZO;

.field private l:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 39
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lo/ZN;->b:Lo/UpdateEngine;

    return-void
.end method

.method public static final synthetic a(Lo/ZN;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;
    .locals 1

    .line 36
    iget-object p0, p0, Lo/ZN;->h:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    if-nez p0, :cond_0

    const-string v0, "uiView"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic c(Lo/ZN;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lo/ZN;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public static final synthetic d(Lo/ZN;Lo/ZN$Activity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lo/ZN;->i:Lo/ZN$Activity;

    return-void
.end method

.method private final g()V
    .locals 2

    .line 192
    invoke-virtual {p0}, Lo/ZN;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string v1, "requireNetflixActivity()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getKeyboardState()Lo/RecoverySystem;

    move-result-object v0

    new-instance v1, Lo/ZN$StateListAnimator;

    invoke-direct {v1, p0}, Lo/ZN$StateListAnimator;-><init>(Lo/ZN;)V

    check-cast v1, Lo/RecoverySystem$ActionBar;

    invoke-virtual {v0, v1}, Lo/RecoverySystem;->d(Lo/RecoverySystem$ActionBar;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 205
    move-object v0, p0

    check-cast v0, Lo/ZN;

    iget-object v0, v0, Lo/ZN;->h:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lo/ZN;->h:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    if-nez v0, :cond_0

    const-string v1, "uiView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->b(Z)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lo/ZN;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lo/ZN;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Serializable;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 199
    :goto_0
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {p0}, Lo/ZN;->getActivity()Lo/Serializable;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lo/adq;->d(Landroid/app/Activity;Landroid/widget/EditText;)V

    :cond_1
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 57
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "onCreateView container is null in PreQuerySearchFragment"

    .line 58
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lo/ZN;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p0}, Lo/ZN;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    new-instance p3, Lo/ZN$ActionBar;

    invoke-direct {p3, p0}, Lo/ZN$ActionBar;-><init>(Lo/ZN;)V

    check-cast p3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    .line 68
    :cond_1
    new-instance p1, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    sget-object p3, Lcom/netflix/cl/model/AppView;->preQuery:Lcom/netflix/cl/model/AppView;

    invoke-direct {p1, p2, p3}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;-><init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;)V

    iput-object p1, p0, Lo/ZN;->h:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    .line 69
    iget-object p1, p0, Lo/ZN;->h:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    const-string p2, "uiView"

    if-nez p1, :cond_2

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->w()Lio/reactivex/Observable;

    move-result-object p1

    .line 70
    iget-object p3, p0, Lo/ZN;->b:Lo/UpdateEngine;

    invoke-virtual {p3}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object p3

    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 71
    new-instance p3, Lo/ZN$Application;

    invoke-direct {p3, p0}, Lo/ZN$Application;-><init>(Lo/ZN;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 169
    new-instance p1, Lo/ZS;

    invoke-virtual {p0}, Lo/ZN;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p3

    const-string v0, "requireNetflixActivity()"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/ZN;->b:Lo/UpdateEngine;

    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lo/ZS;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/ZN;->f:Lo/ZS;

    .line 171
    new-instance p1, Lo/ZO;

    .line 172
    iget-object p3, p0, Lo/ZN;->b:Lo/UpdateEngine;

    const-class v0, Lo/ZR;

    invoke-virtual {p3, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p3

    .line 173
    iget-object v0, p0, Lo/ZN;->h:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    if-nez v0, :cond_3

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    .line 174
    :cond_3
    iget-object p2, p0, Lo/ZN;->f:Lo/ZS;

    if-nez p2, :cond_4

    const-string v1, "uiRepo"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 175
    :cond_4
    iget-object v1, p0, Lo/ZN;->b:Lo/UpdateEngine;

    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    .line 171
    invoke-direct {p1, p3, v0, p2, v1}, Lo/ZO;-><init>(Lio/reactivex/Observable;Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;Lo/ZS;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/ZN;->j:Lo/ZO;

    .line 178
    invoke-direct {p0}, Lo/ZN;->g()V

    const/4 p1, 0x0

    const-string p2, ""

    .line 179
    invoke-static {p2, p1}, Lo/Zy;->b(Ljava/lang/String;Z)V

    .line 180
    invoke-virtual {p0}, Lo/ZN;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    .line 212
    invoke-static {}, Lo/Zy;->e()V

    .line 213
    iget-object v0, p0, Lo/ZN;->i:Lo/ZN$Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ZN$Activity;->a()V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lo/ZN;->c()V

    return-void
.end method

.method public t()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 184
    sget-object v0, Lcom/netflix/cl/model/AppView;->preQuery:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 188
    sget-object v0, Lo/gG;->c:Lo/gG$Application;

    invoke-virtual {v0}, Lo/gG$Application;->e()Z

    move-result v0

    return v0
.end method

.method public w()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;
    .locals 1

    .line 217
    iget-object v0, p0, Lo/ZN;->i:Lo/ZN$Activity;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    return-object v0
.end method
