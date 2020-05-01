.class public final Lo/ZT;
.super Lo/ZN;
.source ""


# instance fields
.field private b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

.field private f:Lo/ZS;

.field private h:Ljava/util/HashMap;

.field private i:Lo/ZO;

.field private final j:Lo/UpdateEngine;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lo/ZN;-><init>()V

    .line 33
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lo/ZT;->j:Lo/UpdateEngine;

    return-void
.end method

.method public static final synthetic c(Lo/ZT;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lo/ZT;->d()V

    return-void
.end method

.method public static final synthetic d(Lo/ZT;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/ZT;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 109
    move-object v0, p0

    check-cast v0, Lo/ZT;

    iget-object v0, v0, Lo/ZT;->b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lo/ZT;->b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    if-nez v0, :cond_0

    const-string v1, "uiView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->b(Z)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lo/ZT;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
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

    .line 41
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "onCreateView container is null in PreQuerySearchFragment_19052"

    .line 42
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_0
    new-instance p1, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    sget-object p3, Lcom/netflix/cl/model/AppView;->preQuery:Lcom/netflix/cl/model/AppView;

    iget-object v0, p0, Lo/ZT;->j:Lo/UpdateEngine;

    invoke-direct {p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;-><init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;)V

    iput-object p1, p0, Lo/ZT;->b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    .line 47
    iget-object p1, p0, Lo/ZT;->b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    const-string p2, "uiView"

    if-nez p1, :cond_1

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->w()Lio/reactivex/Observable;

    move-result-object p1

    .line 48
    iget-object p3, p0, Lo/ZT;->j:Lo/UpdateEngine;

    invoke-virtual {p3}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object p3

    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 49
    new-instance p3, Lo/ZT$Application;

    invoke-direct {p3, p0}, Lo/ZT$Application;-><init>(Lo/ZT;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 97
    new-instance p1, Lo/ZS;

    invoke-virtual {p0}, Lo/ZT;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p3

    const-string v0, "requireNetflixActivity()"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/ZT;->j:Lo/UpdateEngine;

    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lo/ZS;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/ZT;->f:Lo/ZS;

    .line 98
    new-instance p1, Lo/ZO;

    .line 99
    iget-object p3, p0, Lo/ZT;->j:Lo/UpdateEngine;

    const-class v0, Lo/ZR;

    invoke-virtual {p3, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p3

    .line 100
    iget-object v0, p0, Lo/ZT;->b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    if-nez v0, :cond_2

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    .line 101
    iget-object p2, p0, Lo/ZT;->f:Lo/ZS;

    if-nez p2, :cond_3

    const-string v1, "uiRepo"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 102
    :cond_3
    iget-object v1, p0, Lo/ZT;->j:Lo/UpdateEngine;

    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    .line 98
    invoke-direct {p1, p3, v0, p2, v1}, Lo/ZO;-><init>(Lio/reactivex/Observable;Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;Lo/ZS;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/ZT;->i:Lo/ZO;

    .line 105
    invoke-virtual {p0}, Lo/ZT;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 115
    invoke-super {p0}, Lo/ZN;->onDestroyView()V

    .line 116
    iget-object v0, p0, Lo/ZT;->b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    if-nez v0, :cond_0

    const-string v1, "uiView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->p()V

    .line 117
    invoke-virtual {p0}, Lo/ZT;->c()V

    return-void
.end method
