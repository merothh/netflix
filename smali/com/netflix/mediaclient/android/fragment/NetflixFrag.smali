.class public abstract Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.super Lo/WebMessage;
.source ""

# interfaces
.implements Lo/JsDialogHelper;
.implements Lo/zT;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:I

.field public e:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field protected g:I

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lo/JsDialogHelper$Activity;

.field public uiLatencyTrackerFluent:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lo/ViewSwitcher;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lo/WebMessage;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->b:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->j:Ljava/util/Set;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->i:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->h:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->m:Z

    return p1
.end method

.method private c()V
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public U_()Lo/Am;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .line 418
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 419
    iget-object p2, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 1

    .line 455
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->n:Lo/JsDialogHelper$Activity;

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v0, p1}, Lo/JsDialogHelper$Activity;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->uiLatencyTrackerFluent:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ViewSwitcher;

    .line 269
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    invoke-interface {v0, v1}, Lo/ViewSwitcher;->b(Z)Lo/ViewAnimator;

    move-result-object v0

    .line 270
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/ViewAnimator;->a(Ljava/lang/String;)Lo/ViewAnimator;

    move-result-object p1

    .line 271
    invoke-interface {p1}, Lo/ViewAnimator;->a()Lo/YearPickerView;

    move-result-object p1

    .line 273
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->w()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    invoke-interface {p1, v0}, Lo/YearPickerView;->a(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/YearPickerView;->e(Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->requireActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public ac_()Lo/Am;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->U_()Lo/Am;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Am;

    return-object v0
.end method

.method public ad_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected ae_()V
    .locals 0

    return-void
.end method

.method protected af_()Z
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->m:Z

    return v0
.end method

.method protected ag_()V
    .locals 0

    .line 366
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->ae_()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 324
    iput p1, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->g:I

    .line 325
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->c()V

    return-void
.end method

.method public c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 464
    iget-object p2, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->h:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 1

    .line 438
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->e(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public d(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 430
    iget-object p2, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->j:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e(III)V
    .locals 0

    .line 307
    iput p1, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->d:I

    .line 308
    iput p2, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->c:I

    .line 309
    iput p3, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->g:I

    .line 310
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->c()V

    return-void
.end method

.method public e(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 447
    iget-object p2, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->i:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lo/WebMessage;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "NetflixFragHidden"

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->getFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    invoke-virtual {p1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/UnsupportedEncodingException;->c(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    move-result-object p1

    invoke-virtual {p1}, Lo/UnsupportedEncodingException;->d()I

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Lo/WebMessage;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lo/WebMessage;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->uiLatencyTrackerFluent:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ViewSwitcher;

    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->t()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lo/ViewSwitcher;->d(Lcom/netflix/cl/model/AppView;Lo/UnicodeScript;)Lo/WrapperListAdapter;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 83
    :goto_0
    invoke-interface {v0, p1}, Lo/WrapperListAdapter;->c(Z)Lo/WrapperListAdapter;

    move-result-object p1

    .line 84
    invoke-interface {p1}, Lo/WrapperListAdapter;->a()V

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->e:Lio/reactivex/Observable;

    if-eqz p1, :cond_2

    .line 88
    sget-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    .line 90
    :cond_2
    invoke-static {p0}, Lo/BatteryProperties;->a(Lo/UnicodeScript;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->e:Lio/reactivex/Observable;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 193
    invoke-super {p0}, Lo/WebMessage;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 200
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 205
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->f:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 178
    invoke-super {p0}, Lo/WebMessage;->onDestroyView()V

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 181
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 186
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 155
    invoke-super {p0}, Lo/WebMessage;->onDetach()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 302
    invoke-super {p0, p1}, Lo/WebMessage;->onHiddenChanged(Z)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHiddenChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetflixFrag"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Lo/WebMessage;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->isHidden()Z

    move-result v0

    const-string v1, "NetflixFragHidden"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Lo/WebMessage;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->d(Landroid/view/View;)V

    return-void
.end method

.method public s()V
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->exit()V

    :cond_0
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 1

    .line 371
    invoke-super {p0, p1}, Lo/WebMessage;->setEnterTransition(Ljava/lang/Object;)V

    .line 372
    instance-of v0, p1, Lo/CharsetDecoder;

    if-eqz v0, :cond_0

    .line 373
    check-cast p1, Lo/CharsetDecoder;

    new-instance v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag$2;-><init>(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)V

    invoke-virtual {p1, v0}, Lo/CharsetDecoder;->addListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    :cond_0
    return-void
.end method

.method public setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 253
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lo/JsDialogHelper$Activity;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 255
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->n:Lo/JsDialogHelper$Activity;

    :goto_0
    return-void
.end method

.method public t()Lcom/netflix/cl/model/AppView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
