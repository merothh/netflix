.class public Lcom/netflix/android/mdxpanel/MdxPanelController;
.super Lcom/netflix/mediaclient/common/ui/LifecycleController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;,
        Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;,
        Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;,
        Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;,
        Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;,
        Lcom/netflix/android/mdxpanel/MdxPanelController$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/common/ui/LifecycleController<",
        "Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;

.field public static final c:Lcom/netflix/android/mdxpanel/MdxPanelController$Application;


# instance fields
.field private final A:Lo/HardwarePropertiesManager;

.field private final B:Lo/HandlerThread;

.field private C:Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

.field private final D:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/CommonClock;",
            ">;"
        }
    .end annotation
.end field

.field private G:Z

.field private final I:Landroid/view/View;

.field private final b:Lo/aka;

.field private final d:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Ljava/lang/Throwable;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private final l:Lo/ams;

.field private final m:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lo/Build;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lo/CommonClock;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lo/ams;

.field private final p:Lo/DeviceIdleManager;

.field private final q:Lo/CpuUsageInfo;

.field private final r:Lo/DeadObjectException;

.field private final s:Lo/Debug;

.field private final t:Lo/FileObserver;

.field private final u:Lo/CommonTimeUtils;

.field private final v:Lo/ConfigUpdate;

.field private final w:Lo/FactoryTest;

.field private final x:Lo/DropBoxManager;

.field private final y:Lo/FileUriExposedException;

.field private final z:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/android/mdxpanel/MdxPanelController;

    const/4 v1, 0x7

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "mdxPanelView"

    const-string v5, "getMdxPanelView()Landroidx/constraintlayout/widget/ConstraintLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "border"

    const-string v5, "getBorder()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "clickInterceptor"

    const-string v5, "getClickInterceptor()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "hiddenPart"

    const-string v5, "getHiddenPart()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "boundingLayout"

    const-string v5, "getBoundingLayout()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "skipIntroDoNotUse"

    const-string v5, "getSkipIntroDoNotUse()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "castDoNotUse"

    const-string v4, "getCastDoNotUse()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/android/mdxpanel/MdxPanelController;->a:[Lo/amT;

    new-instance v0, Lcom/netflix/android/mdxpanel/MdxPanelController$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/android/mdxpanel/MdxPanelController$Application;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$Application;

    return-void
.end method

.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Lo/UnicodeScript;Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "coordinatorLayout"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "lifecycleOwner"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "experience"

    move-object/from16 v4, p4

    invoke-static {v4, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 71
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;->a()I

    move-result v4

    .line 72
    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    .line 70
    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const-string v4, "LayoutInflater.from(coor\u2026          false\n        )"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/common/ui/LifecycleController;-><init>(Landroid/view/View;)V

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->I:Landroid/view/View;

    .line 141
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v2

    const-string v4, "PublishSubject.create<Int>()"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->d:Lio/reactivex/subjects/PublishSubject;

    .line 142
    new-instance v2, Lcom/netflix/android/mdxpanel/MdxPanelController$panelStates$2;

    invoke-direct {v2, p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$panelStates$2;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController;)V

    check-cast v2, Lo/alB;

    invoke-static {v2}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->b:Lo/aka;

    .line 146
    sget-object v2, Lcom/netflix/android/mdxpanel/MdxPanelController$onErrorHandler$1;->a:Lcom/netflix/android/mdxpanel/MdxPanelController$onErrorHandler$1;

    check-cast v2, Lo/alA;

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->i:Lo/alA;

    .line 153
    sget v2, Lo/CancellationSignal$Activity;->p:I

    invoke-static {p0, v2}, Lo/NfcV;->c(Lcom/netflix/mediaclient/common/ui/LifecycleController;I)Lo/ams;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->j:Lo/ams;

    .line 155
    sget v2, Lo/CancellationSignal$Activity;->c:I

    invoke-static {p0, v2}, Lo/NfcV;->c(Lcom/netflix/mediaclient/common/ui/LifecycleController;I)Lo/ams;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->g:Lo/ams;

    .line 156
    sget v2, Lo/CancellationSignal$Activity;->f:I

    invoke-static {p0, v2}, Lo/NfcV;->c(Lcom/netflix/mediaclient/common/ui/LifecycleController;I)Lo/ams;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->f:Lo/ams;

    .line 157
    sget v2, Lo/CancellationSignal$Activity;->k:I

    invoke-static {p0, v2}, Lo/NfcV;->c(Lcom/netflix/mediaclient/common/ui/LifecycleController;I)Lo/ams;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->h:Lo/ams;

    .line 158
    sget v2, Lo/CancellationSignal$Activity;->h:I

    invoke-static {p0, v2}, Lo/NfcV;->c(Lcom/netflix/mediaclient/common/ui/LifecycleController;I)Lo/ams;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->k:Lo/ams;

    .line 161
    sget v2, Lo/CancellationSignal$Activity;->I:I

    invoke-static {p0, v2}, Lo/NfcV;->c(Lcom/netflix/mediaclient/common/ui/LifecycleController;I)Lo/ams;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->l:Lo/ams;

    .line 162
    sget v2, Lo/CancellationSignal$Activity;->g:I

    invoke-static {p0, v2}, Lo/NfcV;->c(Lcom/netflix/mediaclient/common/ui/LifecycleController;I)Lo/ams;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->o:Lo/ams;

    .line 650
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/subjects/PublishSubject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object v2

    const-string v4, "PublishSubject.create<T>().toSerialized()"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    invoke-interface/range {p3 .. p3}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    const-string v5, "this.lifecycle"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v4, v5, :cond_0

    .line 652
    invoke-virtual {v2}, Lio/reactivex/subjects/Subject;->onComplete()V

    goto :goto_0

    .line 654
    :cond_0
    invoke-interface/range {p3 .. p3}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    new-instance v4, Lcom/netflix/android/mdxpanel/MdxPanelController$$special$$inlined$createSafeManagedStateEventSubject$1;

    invoke-direct {v4, v2}, Lcom/netflix/android/mdxpanel/MdxPanelController$$special$$inlined$createSafeManagedStateEventSubject$1;-><init>(Lio/reactivex/subjects/Subject;)V

    check-cast v4, Lo/ClassCircularityError;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    .line 662
    :goto_0
    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->m:Lio/reactivex/subjects/Subject;

    .line 169
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/subjects/PublishSubject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object v2

    const-string v3, "PublishSubject.create<MdxUIEvent>().toSerialized()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->n:Lio/reactivex/subjects/Subject;

    .line 172
    new-instance v2, Lo/FileObserver;

    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k()Lo/MenuInflater;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v2, v3}, Lo/FileObserver;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->t:Lo/FileObserver;

    .line 173
    new-instance v2, Lo/DeadObjectException;

    iget-object v3, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->t:Lo/FileObserver;

    check-cast v3, Lo/FileBridge;

    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->m:Lio/reactivex/subjects/Subject;

    check-cast v4, Lio/reactivex/Observable;

    invoke-direct {v2, v3, v4}, Lo/DeadObjectException;-><init>(Lo/FileBridge;Lio/reactivex/Observable;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->r:Lo/DeadObjectException;

    .line 174
    new-instance v2, Lo/Debug;

    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k()Lo/MenuInflater;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v2, v3}, Lo/Debug;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->s:Lo/Debug;

    .line 175
    new-instance v2, Lo/CpuUsageInfo;

    iget-object v3, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->s:Lo/Debug;

    check-cast v3, Lo/ConditionVariable;

    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->m:Lio/reactivex/subjects/Subject;

    check-cast v4, Lio/reactivex/Observable;

    invoke-direct {v2, v3, v4}, Lo/CpuUsageInfo;-><init>(Lo/ConditionVariable;Lio/reactivex/Observable;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->q:Lo/CpuUsageInfo;

    .line 176
    new-instance v2, Lo/DeviceIdleManager;

    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k()Lo/MenuInflater;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v2, v3}, Lo/DeviceIdleManager;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->p:Lo/DeviceIdleManager;

    .line 177
    new-instance v2, Lo/DropBoxManager;

    iget-object v3, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->p:Lo/DeviceIdleManager;

    check-cast v3, Lo/DeadSystemException;

    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->m:Lio/reactivex/subjects/Subject;

    check-cast v4, Lio/reactivex/Observable;

    invoke-direct {v2, v3, v4}, Lo/DropBoxManager;-><init>(Lo/DeadSystemException;Lio/reactivex/Observable;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->x:Lo/DropBoxManager;

    .line 178
    new-instance v2, Lo/ConfigUpdate;

    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k()Lo/MenuInflater;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v2, v3}, Lo/ConfigUpdate;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->v:Lo/ConfigUpdate;

    .line 179
    new-instance v2, Lo/CommonTimeUtils;

    iget-object v3, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->v:Lo/ConfigUpdate;

    check-cast v3, Lo/CountDownTimer;

    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->m:Lio/reactivex/subjects/Subject;

    check-cast v4, Lio/reactivex/Observable;

    invoke-direct {v2, v3, v4}, Lo/CommonTimeUtils;-><init>(Lo/CountDownTimer;Lio/reactivex/Observable;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->u:Lo/CommonTimeUtils;

    .line 180
    new-instance v2, Lo/FactoryTest;

    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k()Lo/MenuInflater;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v2, v3}, Lo/FactoryTest;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->w:Lo/FactoryTest;

    .line 181
    new-instance v2, Lo/FileUriExposedException;

    iget-object v3, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->w:Lo/FactoryTest;

    check-cast v3, Lo/FileUtils;

    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->b()Lio/reactivex/Observable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lo/FileUriExposedException;-><init>(Lo/FileUtils;Lio/reactivex/Observable;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->y:Lo/FileUriExposedException;

    .line 182
    new-instance v2, Lo/HandlerThread;

    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k()Lo/MenuInflater;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-instance v4, Lcom/netflix/android/mdxpanel/MdxPanelController$mdxSkipIntroUIView$1;

    invoke-direct {v4, p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$mdxSkipIntroUIView$1;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController;)V

    check-cast v4, Lo/alB;

    invoke-direct {v2, v3, v4}, Lo/HandlerThread;-><init>(Landroid/view/View;Lo/alB;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->B:Lo/HandlerThread;

    .line 185
    new-instance v2, Lo/HardwarePropertiesManager;

    iget-object v3, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->B:Lo/HandlerThread;

    check-cast v3, Lo/GraphicsEnvironment;

    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->m:Lio/reactivex/subjects/Subject;

    check-cast v4, Lio/reactivex/Observable;

    invoke-direct {v2, v3, v4}, Lo/HardwarePropertiesManager;-><init>(Lo/GraphicsEnvironment;Lio/reactivex/Observable;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->A:Lo/HardwarePropertiesManager;

    const/4 v2, 0x7

    new-array v2, v2, [Lio/reactivex/ObservableSource;

    .line 190
    iget-object v3, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->n:Lio/reactivex/subjects/Subject;

    check-cast v3, Lio/reactivex/ObservableSource;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    .line 191
    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->t:Lo/FileObserver;

    invoke-virtual {v4}, Lo/FileObserver;->w()Lio/reactivex/Observable;

    move-result-object v4

    check-cast v4, Lio/reactivex/ObservableSource;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 192
    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->w:Lo/FactoryTest;

    invoke-virtual {v4}, Lo/FactoryTest;->w()Lio/reactivex/Observable;

    move-result-object v4

    check-cast v4, Lio/reactivex/ObservableSource;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 193
    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->s:Lo/Debug;

    invoke-virtual {v4}, Lo/Debug;->w()Lio/reactivex/Observable;

    move-result-object v4

    check-cast v4, Lio/reactivex/ObservableSource;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 194
    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->p:Lo/DeviceIdleManager;

    invoke-virtual {v4}, Lo/DeviceIdleManager;->w()Lio/reactivex/Observable;

    move-result-object v4

    check-cast v4, Lio/reactivex/ObservableSource;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 195
    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->B:Lo/HandlerThread;

    invoke-virtual {v4}, Lo/HandlerThread;->w()Lio/reactivex/Observable;

    move-result-object v4

    check-cast v4, Lio/reactivex/ObservableSource;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 196
    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->v:Lo/ConfigUpdate;

    invoke-virtual {v4}, Lo/ConfigUpdate;->w()Lio/reactivex/Observable;

    move-result-object v4

    check-cast v4, Lio/reactivex/ObservableSource;

    aput-object v4, v2, v3

    .line 189
    invoke-static {v2}, Lio/reactivex/subjects/PublishSubject;->mergeArray([Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v3, "PublishSubject.mergeArra\u2026atNeedsToBeDisposed\n    )"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->D:Lio/reactivex/Observable;

    .line 199
    new-instance v2, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-direct {v2, p0, v1}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->z:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    .line 227
    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->l()Lio/reactivex/Observable;

    move-result-object v1

    .line 228
    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->o()Lio/reactivex/Observable;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "activates()\n            .takeUntil(destroy())"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v1, Lcom/netflix/android/mdxpanel/MdxPanelController$1;

    invoke-direct {v1, p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$1;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    const/4 v5, 0x0

    .line 237
    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->i:Lo/alA;

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 229
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 239
    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->m()Lio/reactivex/Observable;

    move-result-object v1

    .line 240
    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->o()Lio/reactivex/Observable;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "deactivates()\n            .takeUntil(destroy())"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    new-instance v1, Lcom/netflix/android/mdxpanel/MdxPanelController$2;

    invoke-direct {v1, p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$2;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    .line 244
    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->i:Lo/alA;

    .line 241
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 246
    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->o()Lio/reactivex/Observable;

    move-result-object v9

    new-instance v1, Lcom/netflix/android/mdxpanel/MdxPanelController$3;

    invoke-direct {v1, p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$3;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController;)V

    move-object v12, v1

    check-cast v12, Lo/alA;

    const/4 v11, 0x0

    .line 249
    iget-object v10, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->i:Lo/alA;

    const/4 v13, 0x2

    const/4 v14, 0x0

    .line 246
    invoke-static/range {v9 .. v14}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 251
    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->b()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->o()Lio/reactivex/Observable;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "stateEvents.takeUntil(destroy())"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    new-instance v1, Lcom/netflix/android/mdxpanel/MdxPanelController$4;

    invoke-direct {v1, p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$4;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    .line 261
    iget-object v4, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->i:Lo/alA;

    .line 252
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 264
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v2, 0x0

    check-cast v2, Lio/reactivex/subjects/PublishSubject;

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    .line 265
    iget-object v2, v0, Lcom/netflix/android/mdxpanel/MdxPanelController;->D:Lio/reactivex/Observable;

    .line 266
    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->o()Lio/reactivex/Observable;

    move-result-object v3

    check-cast v3, Lio/reactivex/ObservableSource;

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v4

    const-string v2, "uiEvents\n            .takeUntil(destroy())"

    invoke-static {v4, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    new-instance v2, Lcom/netflix/android/mdxpanel/MdxPanelController$5;

    invoke-direct {v2, p0, v1}, Lcom/netflix/android/mdxpanel/MdxPanelController$5;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object v7, v2

    check-cast v7, Lo/alA;

    const/4 v6, 0x0

    .line 295
    new-instance v1, Lcom/netflix/android/mdxpanel/MdxPanelController$6;

    invoke-direct {v1, p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$6;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController;)V

    move-object v5, v1

    check-cast v5, Lo/alA;

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 267
    invoke-static/range {v4 .. v9}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k()Lo/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/netflix/android/mdxpanel/MdxPanelController;Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->C:Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->s()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/netflix/android/mdxpanel/MdxPanelController;ZZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 307
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/android/mdxpanel/MdxPanelController;->d(ZZ)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setVisible"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic c(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->z:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    return-object p0
.end method

.method public static final synthetic d(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/alA;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->i:Lo/alA;

    return-object p0
.end method

.method private final d(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 309
    :goto_0
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k()Lo/MenuInflater;

    move-result-object v1

    invoke-virtual {v1}, Lo/MenuInflater;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k()Lo/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/MenuInflater;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 312
    iget-object p2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->m:Lio/reactivex/subjects/Subject;

    new-instance v0, Lo/Build$Canvas;

    invoke-direct {v0, p1}, Lo/Build$Canvas;-><init>(Z)V

    invoke-virtual {p2, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final synthetic e(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->r()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final e(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    .line 322
    invoke-direct {p0, v0, v1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->d(ZZ)V

    .line 323
    iput-boolean p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->G:Z

    return-void
.end method

.method public static final synthetic f(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->y()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lio/reactivex/subjects/Subject;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->n:Lio/reactivex/subjects/Subject;

    return-object p0
.end method

.method public static final synthetic h(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->q()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->d:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic j(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->I:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic k(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->p()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final k()Lo/MenuInflater;
    .locals 3

    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->j:Lo/ams;

    sget-object v1, Lcom/netflix/android/mdxpanel/MdxPanelController;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuInflater;

    return-object v0
.end method

.method public static final synthetic l(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lio/reactivex/Observable;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->m()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->t()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final p()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->g:Lo/ams;

    sget-object v1, Lcom/netflix/android/mdxpanel/MdxPanelController;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final q()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->l:Lo/ams;

    sget-object v1, Lcom/netflix/android/mdxpanel/MdxPanelController;->a:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final r()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->h:Lo/ams;

    sget-object v1, Lcom/netflix/android/mdxpanel/MdxPanelController;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final s()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->f:Lo/ams;

    sget-object v1, Lcom/netflix/android/mdxpanel/MdxPanelController;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final t()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->k:Lo/ams;

    sget-object v1, Lcom/netflix/android/mdxpanel/MdxPanelController;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final y()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->o:Lo/ams;

    sget-object v1, Lcom/netflix/android/mdxpanel/MdxPanelController;->a:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/CommonClock;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->D:Lio/reactivex/Observable;

    return-object v0
.end method

.method protected final b()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/Build;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->m:Lio/reactivex/subjects/Subject;

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method

.method public final c()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method

.method public final c(Z)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->z:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-virtual {v0, p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->a(Z)V

    return-void
.end method

.method public final d()Landroid/content/Context;
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "controllerView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Lo/Build;)V
    .locals 1

    const-string v0, "stateEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->m:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Z)V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->C:Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    if-eqz v0, :cond_6

    .line 330
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k()Lo/MenuInflater;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 647
    invoke-virtual {v0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 332
    :goto_2
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k()Lo/MenuInflater;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 648
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 334
    invoke-direct {p0, v2}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e(Z)V

    goto :goto_5

    .line 336
    :cond_4
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k()Lo/MenuInflater;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 649
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_6

    iget-boolean v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->G:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    .line 338
    invoke-direct {p0, v3}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e(Z)V

    :cond_6
    :goto_5
    return-void
.end method

.method public final e()Landroid/content/res/Resources;
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "controllerView.resources"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->u:Lo/CommonTimeUtils;

    invoke-virtual {v0, p1}, Lo/CommonTimeUtils;->e(Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;)V

    return-void
.end method

.method public final f()I
    .locals 2

    .line 219
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->k()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/CancellationSignal$TaskDescription;->n:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->z:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-virtual {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d()Z

    move-result v0

    return v0
.end method

.method public final h()Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->C:Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    return-object v0
.end method

.method public final i()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->z:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-virtual {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->e()V

    return-void
.end method

.method public final j()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController;->z:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-virtual {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->a()Z

    move-result v0

    return v0
.end method
