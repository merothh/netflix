.class public final Lo/AbsListView;
.super Lo/SynchronousResultReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AbsListView$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/SynchronousResultReceiver<",
        "Lo/AnalogClock<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final b:Lo/AbsListView$StateListAnimator;


# instance fields
.field private d:Ljava/lang/Long;

.field private e:Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Lio/reactivex/disposables/Disposable;

.field private h:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/AbsListView$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/AbsListView$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/AbsListView;->b:Lo/AbsListView$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v0, p0

    .line 32
    invoke-direct/range {v0 .. v8}, Lo/SynchronousResultReceiver;-><init>(JZLandroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;Ljava/lang/Integer;ILo/amc;)V

    return-void
.end method

.method public static final synthetic c(Lo/AbsListView;Ljava/lang/Long;[Lcom/netflix/cl/model/ShareInfo;)Lcom/netflix/cl/model/event/session/ShareEnded;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lo/AbsListView;->e(Ljava/lang/Long;[Lcom/netflix/cl/model/ShareInfo;)Lcom/netflix/cl/model/event/session/ShareEnded;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lo/AbsListView;)Ljava/lang/Long;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/AbsListView;->d:Ljava/lang/Long;

    return-object p0
.end method

.method private final e(Ljava/lang/Long;[Lcom/netflix/cl/model/ShareInfo;)Lcom/netflix/cl/model/event/session/ShareEnded;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 61
    :cond_0
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, p1}, Lcom/netflix/cl/Logger;->getSession(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/Session;

    move-result-object p1

    .line 62
    instance-of v1, p1, Lcom/netflix/cl/model/event/session/action/Share;

    if-eqz v1, :cond_1

    .line 63
    new-instance v0, Lcom/netflix/cl/model/event/session/ShareEnded;

    check-cast p1, Lcom/netflix/cl/model/event/session/action/Share;

    invoke-direct {v0, p1, p2}, Lcom/netflix/cl/model/event/session/ShareEnded;-><init>(Lcom/netflix/cl/model/event/session/action/Share;[Lcom/netflix/cl/model/ShareInfo;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 147
    invoke-super {p0}, Lo/SynchronousResultReceiver;->d()V

    .line 148
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/AbsListView;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->getSession(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/AbsListView;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 152
    :cond_0
    iget-object v0, p0, Lo/AbsListView;->f:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Shareable"

    .line 43
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;

    iput-object p2, p0, Lo/AbsListView;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;

    .line 44
    iget-object p2, p0, Lo/AbsListView;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;

    if-nez p2, :cond_0

    .line 46
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "ShareDialogFragment - shareable null"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lo/AbsListView;->dismiss()V

    goto :goto_0

    .line 49
    :cond_0
    check-cast p1, Lo/Serializable;

    invoke-interface {p2, p1}, Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;->a(Lo/Serializable;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p0, p1}, Lo/AbsListView;->c(Lio/reactivex/Observable;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type io.reactivex.Observable<com.netflix.android.widgetry.widget.menu.MenuController<com.netflix.mediaclient.android.sharing.impl.targets.ShareTarget<T>>>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lo/AbsListView;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/SynchronousResultReceiver;->onDestroyView()V

    invoke-virtual {p0}, Lo/AbsListView;->i()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1, p2}, Lo/SynchronousResultReceiver;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    iget-object p1, p0, Lo/AbsListView;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;

    if-nez p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lo/AbsListView;->dismiss()V

    return-void

    .line 78
    :cond_0
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/ShareCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ShareCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p2, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p2

    .line 79
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/Share;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/action/Share;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/AbsListView;->d:Ljava/lang/Long;

    .line 80
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 82
    invoke-virtual {p0}, Lo/AbsListView;->e()Lio/reactivex/Observable;

    move-result-object p2

    const-wide/16 v0, 0x1

    .line 83
    invoke-virtual {p2, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p2

    .line 84
    invoke-virtual {p0}, Lo/AbsListView;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v0

    .line 156
    new-instance v1, Lo/AbsListView$ActionBar;

    invoke-direct {v1, v0}, Lo/AbsListView$ActionBar;-><init>(Lo/UnicodeScript;)V

    check-cast v1, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.create { emit\u2026       }\n        })\n    }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/ObservableSource;

    .line 84
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p2

    .line 85
    new-instance v0, Lo/AbsListView$Application;

    invoke-direct {v0, p0, p1}, Lo/AbsListView$Application;-><init>(Lo/AbsListView;Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    .line 101
    new-instance v0, Lo/AbsListView$Activity;

    invoke-direct {v0, p0, p1}, Lo/AbsListView$Activity;-><init>(Lo/AbsListView;Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 132
    new-instance p1, Lo/AbsListView$TaskDescription;

    invoke-direct {p1, p0}, Lo/AbsListView$TaskDescription;-><init>(Lo/AbsListView;)V

    check-cast p1, Lio/reactivex/functions/Consumer;

    .line 100
    invoke-virtual {p2, v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/AbsListView;->f:Lio/reactivex/disposables/Disposable;

    return-void
.end method
