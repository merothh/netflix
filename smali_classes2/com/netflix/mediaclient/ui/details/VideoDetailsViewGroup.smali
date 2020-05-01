.class public Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;,
        Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;,
        Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Application;
    }
.end annotation


# static fields
.field private static final N:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected A:Landroid/view/ViewStub;

.field protected B:Landroid/view/View;

.field protected C:Landroid/view/ViewStub;

.field protected D:Landroid/view/ViewStub;

.field protected final E:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected F:Lo/ListView;

.field public final G:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected H:Lo/Bc;

.field protected I:Landroid/view/ViewGroup;

.field private final J:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/lang/String;

.field private L:I

.field private M:Landroid/view/View;

.field private P:Lo/StrictMode;

.field private final R:Landroid/content/BroadcastReceiver;

.field private final S:Landroid/content/BroadcastReceiver;

.field protected a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field protected b:Lo/DateTimeView;

.field protected c:Landroid/widget/TextView;

.field private final d:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/DC;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Application;

.field protected f:Landroid/view/View$OnClickListener;

.field protected g:Landroid/view/ViewGroup;

.field protected h:Lo/RemoteViewsListAdapter;

.field protected i:Lo/ListView;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/widget/TextView;

.field protected m:Lo/GridView;

.field protected n:Landroid/view/ViewGroup;

.field protected o:Landroid/widget/TextView;

.field protected p:Landroid/widget/ImageView;

.field protected q:Landroid/widget/TextView;

.field protected r:Lo/HorizontalScrollView;

.field protected s:Landroid/widget/ImageView;

.field protected t:Landroid/view/View;

.field protected u:Landroid/view/ViewStub;

.field protected v:Lo/SimpleClock;

.field protected w:Landroid/view/ViewGroup;

.field protected x:Landroid/widget/ImageView;

.field protected y:Landroid/widget/TextView;

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 161
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$1;

    const-class v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->N:Ljava/util/EnumMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d:Lio/reactivex/subjects/PublishSubject;

    .line 117
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->J:Lio/reactivex/subjects/PublishSubject;

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Application;

    .line 247
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->E:Lio/reactivex/subjects/PublishSubject;

    .line 248
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->E:Lio/reactivex/subjects/PublishSubject;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->G:Lio/reactivex/Observable;

    .line 1164
    new-instance p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$10;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$10;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->R:Landroid/content/BroadcastReceiver;

    .line 1184
    new-instance p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$9;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$9;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->S:Landroid/content/BroadcastReceiver;

    .line 253
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d:Lio/reactivex/subjects/PublishSubject;

    .line 117
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->J:Lio/reactivex/subjects/PublishSubject;

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Application;

    .line 247
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->E:Lio/reactivex/subjects/PublishSubject;

    .line 248
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->E:Lio/reactivex/subjects/PublishSubject;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->G:Lio/reactivex/Observable;

    .line 1164
    new-instance p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$10;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$10;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->R:Landroid/content/BroadcastReceiver;

    .line 1184
    new-instance p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$9;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$9;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->S:Landroid/content/BroadcastReceiver;

    .line 258
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d:Lio/reactivex/subjects/PublishSubject;

    .line 117
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->J:Lio/reactivex/subjects/PublishSubject;

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Application;

    .line 247
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->E:Lio/reactivex/subjects/PublishSubject;

    .line 248
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->E:Lio/reactivex/subjects/PublishSubject;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->G:Lio/reactivex/Observable;

    .line 1164
    new-instance p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$10;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$10;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->R:Landroid/content/BroadcastReceiver;

    .line 1184
    new-instance p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$9;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$9;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->S:Landroid/content/BroadcastReceiver;

    .line 263
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 1076
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private a(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/EnumMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Bc;",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ")",
            "Ljava/util/EnumMap<",
            "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1110
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-static {v0}, Lo/Mn;->b(Lo/Am;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    invoke-interface {v0}, Lo/zN;->j()Lo/kC;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1118
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d(Lo/Am;)Lo/zD;

    move-result-object v0

    .line 1121
    :cond_1
    new-instance p2, Ljava/util/EnumMap;

    const-class v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-direct {p2, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1122
    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->d:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v0, p1}, Lo/adq;->a(Lo/zD;Lo/AF;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    invoke-static {v0, p1}, Lo/adq;->e(Lo/zD;Lo/AF;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1125
    sget-object p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1126
    :cond_2
    invoke-static {v0, p1}, Lo/adq;->c(Lo/zD;Lo/AF;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1127
    sget-object p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1128
    :cond_3
    invoke-static {v0, p1}, Lo/adq;->d(Lo/zD;Lo/AF;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1129
    sget-object p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1130
    :cond_4
    invoke-static {v0, p1}, Lo/adq;->b(Lo/zD;Lo/AF;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1131
    sget-object p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-object p2
.end method

.method private a()V
    .locals 6

    .line 276
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 277
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setOrientation(I)V

    .line 280
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->M:Landroid/view/View;

    .line 281
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->M:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addView(Landroid/view/View;I)V

    .line 283
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i()V

    .line 285
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->f()V

    .line 287
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 288
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->y:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 289
    sget v2, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->l:I

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    new-instance v1, Lo/StrictMode;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->y:Landroid/widget/TextView;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->pB:I

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->pz:I

    const v5, 0x10104ce

    .line 291
    invoke-static {v0, v5}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lo/StrictMode;-><init>(Landroid/widget/TextView;III)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->P:Lo/StrictMode;

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->L:I

    .line 296
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->c()V

    .line 298
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;IZ)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e(IZ)V

    return-void
.end method

.method private synthetic a(Lo/Bc;Landroid/view/View;)V
    .locals 2

    .line 1230
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p2, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 1231
    invoke-static {p2}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p2, Lo/CY;

    if-eqz v0, :cond_0

    .line 1232
    move-object v0, p2

    check-cast v0, Lo/CY;

    invoke-interface {v0}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    .line 1233
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->c:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    .line 1237
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    .line 1238
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    .line 1235
    invoke-static {p2, v1, p1, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :cond_0
    return-void
.end method

.method private a(Lo/Bc;Z)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 795
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 799
    instance-of v0, p1, Lo/AX;

    if-eqz v0, :cond_1

    .line 800
    move-object v0, p1

    check-cast v0, Lo/AX;

    invoke-interface {v0}, Lo/AX;->x()Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-interface {v0}, Lo/AX;->C()I

    move-result v0

    goto :goto_1

    .line 802
    :cond_1
    instance-of v0, p1, Lo/Bb;

    if-eqz v0, :cond_2

    .line 803
    move-object v0, p1

    check-cast v0, Lo/Bb;

    invoke-interface {v0}, Lo/Bb;->at()Ljava/lang/String;

    move-result-object v1

    .line 804
    invoke-interface {v0}, Lo/Bb;->av()I

    move-result v0

    :goto_1
    move v6, v0

    move-object v5, v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    move-object v5, v0

    const/4 v6, 0x0

    :goto_2
    if-eqz p2, :cond_3

    .line 811
    instance-of p2, p1, Lo/Bb;

    if-eqz p2, :cond_3

    .line 813
    move-object p2, p1

    check-cast p2, Lo/Bb;

    invoke-interface {p2}, Lo/Bb;->l()Ljava/lang/String;

    move-result-object p2

    .line 816
    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    move v8, v2

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    .line 819
    :goto_3
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d:Lio/reactivex/subjects/PublishSubject;

    new-instance v0, Lo/DC$Intent;

    invoke-interface {p1}, Lo/Bc;->aH()Ljava/lang/String;

    move-result-object v4

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lo/DC$Intent;-><init>(Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual {p2, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected static b(Landroid/view/View;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 544
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 546
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 548
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 549
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 550
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->u()V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->K:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 625
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->k()V

    .line 626
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$2;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 1138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1139
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->L:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private d(Lo/Bc;Z)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 828
    invoke-interface {p1}, Lo/Bc;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 829
    instance-of p2, p1, Lo/Bb;

    if-eqz p2, :cond_0

    .line 830
    check-cast p1, Lo/Bb;

    invoke-interface {p1}, Lo/Bb;->az()Ljava/lang/String;

    move-result-object p1

    .line 832
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 834
    :cond_0
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lo/aev;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private d(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;)V
    .locals 3

    .line 310
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p1, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    invoke-direct {p1, v2}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 311
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 312
    invoke-static {p1}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lo/CY;

    if-eqz v0, :cond_0

    .line 313
    move-object v0, p1

    check-cast v0, Lo/CY;

    invoke-interface {v0}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    .line 314
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    .line 315
    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->c(Ljava/lang/String;)V

    .line 316
    new-instance p2, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-direct {p2}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>()V

    .line 317
    sget-object p3, Lcom/netflix/cl/model/AppView;->movieDetails:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e(Lcom/netflix/cl/model/AppView;)V

    .line 318
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->H:Lo/Bc;

    .line 320
    invoke-interface {p3}, Lo/Bc;->bb()Lo/AK;

    move-result-object p3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->H:Lo/Bc;

    .line 321
    invoke-interface {v1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    .line 318
    invoke-static {p1, p3, v1, v0, p2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lo/Bc;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a(Lo/Bc;Landroid/view/View;)V

    return-void
.end method

.method private d(Ljava/lang/String;III)V
    .locals 6

    const-string v0, "VideoDetailsViewGroup"

    .line 771
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "requestId"

    .line 774
    invoke-virtual {v1, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "trackId"

    .line 775
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "row"

    .line 776
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "rank"

    .line 777
    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "videoId"

    .line 778
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->K:Ljava/lang/String;

    const/16 p3, 0xa

    invoke-static {p2, p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "imageKey"

    .line 779
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->H:Lo/Bc;

    invoke-interface {p2}, Lo/Bc;->getBoxartId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 783
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p4, v3, [Ljava/lang/Object;

    aput-object v0, p4, v4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->K:Ljava/lang/String;

    aput-object v0, p4, v2

    const-string v0, "%s: Invalid videoId %s"

    invoke-static {p3, v0, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 781
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p4, v3, [Ljava/lang/Object;

    aput-object v0, p4, v4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->K:Ljava/lang/String;

    aput-object v0, p4, v2

    const-string v0, "%s: Couldn\'t add tagTrackingInfo for videoId %s."

    invoke-static {p3, v0, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 786
    :goto_0
    sget-object p1, Lcom/netflix/cl/model/AppView;->storyArt:Lcom/netflix/cl/model/AppView;

    invoke-static {v1}, Lo/acG;->d(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {v4, p1, p2, p3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V

    :cond_0
    return-void
.end method

.method private e()I
    .locals 2

    .line 1089
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private e(IZ)V
    .locals 3

    .line 971
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->P:Lo/StrictMode;

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->H:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->isPreRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->P:Lo/StrictMode;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0, v0}, Lo/StrictMode;->a(IIZZ)V

    goto :goto_0

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->P:Lo/StrictMode;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->H:Lo/Bc;

    invoke-interface {v1}, Lo/Bc;->getMatchPercentage()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->H:Lo/Bc;

    invoke-interface {v2}, Lo/Bc;->isNewForPvr()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lo/StrictMode;->a(IIZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private h(Lo/Bc;)V
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->t:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 882
    invoke-interface {p1}, Lo/Bc;->isPreRelease()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 883
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->t:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 885
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->t:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 886
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->t:Landroid/view/View;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;)V

    .line 887
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->t:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 888
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private j(Lo/Bc;)V
    .locals 3

    .line 838
    invoke-interface {p1}, Lo/Bc;->bo()Lcom/netflix/model/leafs/originals/ContentWarning;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cO:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->B:Landroid/view/View;

    .line 842
    invoke-interface {p1}, Lo/Bc;->bo()Lcom/netflix/model/leafs/originals/ContentWarning;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 844
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/ContentWarning;->url()Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/ContentWarning;->message()Ljava/lang/String;

    move-result-object p1

    .line 847
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->B:Landroid/view/View;

    new-instance v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private o(Lo/Bc;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1072
    invoke-interface {p1}, Lo/Bc;->aT()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic u()V
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i:Lo/ListView;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->sQ:I

    invoke-virtual {v0, v1}, Lo/ListView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i:Lo/ListView;

    invoke-virtual {v1}, Lo/ListView;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 381
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i:Lo/ListView;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->sQ:I

    invoke-virtual {v2, v3, v1}, Lo/ListView;->setTag(ILjava/lang/Object;)V

    .line 382
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->j()V

    :cond_0
    return-void
.end method

.method private x()Ljava/lang/String;
    .locals 1

    const-string v0, "  "

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 6

    .line 391
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uw:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 393
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 395
    :goto_0
    sget-object v3, Lo/fx;->e:Lo/fx$ActionBar;

    .line 396
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getLayoutDirection()I

    move-result v5

    .line 395
    invoke-virtual {v3, v1, v4, v5}, Lo/fx$ActionBar;->a(ZZI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->gc:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->gd:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 398
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 399
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->us:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/SimpleClock;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->v:Lo/SimpleClock;

    .line 400
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->v:Lo/SimpleClock;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lo/SimpleClock;->setDark(Z)V

    .line 401
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->v:Lo/SimpleClock;

    invoke-static {p1}, Lo/afw;->a(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected a(Lo/Bc;)Z
    .locals 2

    .line 565
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 566
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->P()I

    move-result v0

    if-lez v0, :cond_0

    .line 568
    invoke-interface {p1}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->resetUserState()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected b()I
    .locals 1

    .line 272
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->gg:I

    return v0
.end method

.method protected b(ZLo/Bc;)V
    .locals 2

    .line 354
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->z:Z

    if-nez v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->C:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->u:Landroid/view/ViewStub;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 360
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    move-object p1, p0

    .line 362
    :goto_2
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uC:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/DateTimeView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b:Lo/DateTimeView;

    .line 363
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->la:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i:Lo/ListView;

    .line 364
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->va:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 365
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vj:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->F:Lo/ListView;

    .line 366
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a(Landroid/view/View;)V

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->c(Landroid/view/View;Lo/Bc;)V

    .line 368
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->j()V

    const/4 p1, 0x1

    .line 369
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->z:Z

    .line 371
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b:Lo/DateTimeView;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 372
    invoke-virtual {p1, p2}, Lo/DateTimeView;->setVisibility(I)V

    .line 376
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i:Lo/ListView;

    if-eqz p1, :cond_4

    .line 377
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->sQ:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i:Lo/ListView;

    invoke-virtual {v0}, Lo/ListView;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lo/ListView;->setTag(ILjava/lang/Object;)V

    .line 378
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i:Lo/ListView;

    invoke-virtual {p1}, Lo/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lo/Em;

    invoke-direct {p2, p0}, Lo/Em;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    return-void
.end method

.method protected b(Lo/Bc;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 581
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v1, :cond_2

    .line 588
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 589
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v2

    invoke-virtual {v2}, Lo/Am;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 590
    invoke-static {v1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 594
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v2, :cond_2

    .line 595
    invoke-static {v1}, Lo/RL;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 596
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    invoke-interface {p1}, Lo/AK;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method protected c(Landroid/view/View;Lo/Bc;)V
    .locals 2

    .line 328
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->F:Lo/ListView;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a(Lo/Bc;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lo/CY;

    invoke-static {p1, v0}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CY;

    if-eqz p1, :cond_1

    .line 331
    invoke-interface {p1}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p1

    .line 332
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->n:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    .line 333
    new-instance v0, Lo/Fb;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->F:Lo/ListView;

    invoke-direct {v0, v1, p2, p1}, Lo/Fb;-><init>(Lo/ListView;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 334
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_0

    .line 336
    new-instance p1, Lo/Ew;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d:Lio/reactivex/subjects/PublishSubject;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->J:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {p1, v0, p2, v1}, Lo/Ew;-><init>(Lo/Fv;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d:Lio/reactivex/subjects/PublishSubject;

    new-instance p2, Lo/DC$FragmentManager;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lo/DC$FragmentManager;-><init>(Z)V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public c(Lo/Bc;)V
    .locals 9

    .line 761
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->o(Lo/Bc;)Z

    move-result v5

    .line 762
    invoke-direct {p0, p1, v5}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d(Lo/Bc;Z)Ljava/lang/String;

    move-result-object v1

    .line 763
    instance-of v0, p1, Lo/Bb;

    const-string v2, ""

    if-eqz v0, :cond_0

    move-object v3, p1

    check-cast v3, Lo/Bb;

    invoke-interface {v3}, Lo/Bb;->aB()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 764
    move-object v0, p1

    check-cast v0, Lo/Bb;

    invoke-interface {v0}, Lo/Bb;->l()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 766
    :goto_1
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d:Lio/reactivex/subjects/PublishSubject;

    new-instance v8, Lo/DC$DialogInterface;

    invoke-interface {p1}, Lo/Bc;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lo/Bc;->aM()I

    move-result v6

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lo/DC$DialogInterface;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v7, v8}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected c(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 3

    .line 1036
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/EnumMap;

    move-result-object p1

    .line 1037
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, ""

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1038
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget-object v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->N:Ljava/util/EnumMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->x()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1042
    :cond_1
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected final d(Lo/Am;)Lo/zD;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1254
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lo/Am;)V

    return-object v0
.end method

.method protected d()V
    .locals 1

    .line 407
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ve:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->y:Landroid/widget/TextView;

    .line 409
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uS:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->j:Landroid/widget/TextView;

    .line 410
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uV:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->o:Landroid/widget/TextView;

    .line 411
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uR:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->m:Lo/GridView;

    .line 412
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uU:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->k:Landroid/widget/TextView;

    .line 413
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->M:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->l:Landroid/widget/TextView;

    return-void
.end method

.method public d(Lo/Bc;)V
    .locals 6

    .line 714
    invoke-interface {p1}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->K:Ljava/lang/String;

    .line 715
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->H:Lo/Bc;

    .line 717
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b(ZLo/Bc;)V

    .line 719
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 720
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->i:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 722
    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->g(Lo/Bc;)V

    .line 725
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->f(Lo/Bc;)V

    .line 726
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->c(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 728
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i(Lo/Bc;)V

    .line 730
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->h(Lo/Bc;)V

    .line 732
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->j(Lo/Bc;)V

    .line 734
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->o(Lo/Bc;)Z

    move-result v0

    .line 736
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->c(Lo/Bc;)V

    .line 738
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lo/CY;

    invoke-static {v1, v2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CY;

    const/16 v2, -0x122

    if-eqz v1, :cond_1

    .line 748
    invoke-interface {v1}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getRequestId()Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-interface {v1}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v1

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 752
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a(Lo/Bc;Z)V

    .line 755
    invoke-direct {p0, v1, v2, v3, v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d(Ljava/lang/String;III)V

    return-void
.end method

.method protected d(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 1081
    invoke-interface {p1}, Lo/Bc;->isPreRelease()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1084
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->h:Lo/RemoteViewsListAdapter;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;)V

    .line 1085
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->h:Lo/RemoteViewsListAdapter;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/RemoteViewsListAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected e(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 539
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public e(Lo/Bc;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 601
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b(Lo/Bc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    .line 604
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 605
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->j()V

    :cond_0
    return-void
.end method

.method protected e(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 3

    .line 1052
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->h:Lo/RemoteViewsListAdapter;

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 1053
    invoke-interface {p1}, Lo/Bc;->aX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    sget-object v2, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    .line 1052
    invoke-virtual {v0, v1}, Lo/RemoteViewsListAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 1054
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->h:Lo/RemoteViewsListAdapter;

    invoke-virtual {v0, p3}, Lo/RemoteViewsListAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1056
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1058
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->p:Landroid/widget/ImageView;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1059
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1062
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->s:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 1063
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected f()V
    .locals 3

    .line 450
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uM:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->D:Landroid/view/ViewStub;

    .line 453
    new-instance v0, Lo/Fq;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->D:Landroid/view/ViewStub;

    invoke-direct {v0, v1}, Lo/Fq;-><init>(Landroid/view/ViewStub;)V

    .line 455
    new-instance v1, Lo/EF;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {v1, v0, v2}, Lo/EF;-><init>(Lo/Fx;Lio/reactivex/Observable;)V

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uG:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->A:Landroid/view/ViewStub;

    .line 463
    new-instance v0, Lo/Fi;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->A:Landroid/view/ViewStub;

    invoke-direct {v0, v1}, Lo/Fi;-><init>(Landroid/view/ViewStub;)V

    .line 465
    new-instance v1, Lo/EG;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {v1, v0, v2}, Lo/EG;-><init>(Lo/Fz;Lio/reactivex/Observable;)V

    :cond_1
    return-void
.end method

.method protected f(Lo/Bc;)V
    .locals 6

    if-eqz p1, :cond_8

    .line 984
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->j:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 985
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lo/Bc;->aI()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->m:Lo/GridView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 994
    invoke-interface {p1}, Lo/Bc;->bj()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 996
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/model/leafs/advisory/Advisory;

    .line 997
    instance-of v5, v4, Lcom/netflix/model/leafs/advisory/ContentAdvisory;

    if-eqz v5, :cond_1

    .line 998
    check-cast v4, Lcom/netflix/model/leafs/advisory/ContentAdvisory;

    .line 999
    invoke-interface {v4}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getBoard()Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getRatingIconValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1000
    const-class v0, Lo/l;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/l;

    invoke-interface {v0, v4, v1}, Lo/l;->d(Lcom/netflix/model/leafs/advisory/RatingDetails;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1001
    invoke-interface {v4}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getI18nRating()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    const/16 v1, 0x8

    if-eqz v3, :cond_3

    .line 1009
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->m:Lo/GridView;

    invoke-virtual {v4, v3}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1010
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->m:Lo/GridView;

    invoke-virtual {v4, v2}, Lo/GridView;->setVisibility(I)V

    .line 1011
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->m:Lo/GridView;

    invoke-virtual {v4, v0}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1012
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1014
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->o:Landroid/widget/TextView;

    invoke-interface {p1}, Lo/Bc;->aQ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->m:Lo/GridView;

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    .line 1018
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->o:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    const/16 v4, 0x8

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1019
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->m:Lo/GridView;

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    .line 1022
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    instance-of v0, p1, Lo/Bb;

    if-eqz v0, :cond_8

    .line 1023
    move-object v0, p1

    check-cast v0, Lo/Bb;

    invoke-interface {v0}, Lo/Bb;->aG()Ljava/lang/String;

    move-result-object v0

    .line 1024
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1025
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1027
    :cond_7
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    invoke-interface {p1}, Lo/AK;->S()I

    move-result p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lo/aeD;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1028
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    return-void
.end method

.method protected g(Lo/Bc;)V
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1047
    invoke-interface {p1}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .locals 1

    .line 419
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kZ:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->C:Landroid/view/ViewStub;

    .line 420
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kY:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->u:Landroid/view/ViewStub;

    .line 422
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d()V

    .line 424
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vr:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/RemoteViewsListAdapter;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->h:Lo/RemoteViewsListAdapter;

    .line 425
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vm:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->c:Landroid/widget/TextView;

    .line 426
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vz:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->g:Landroid/view/ViewGroup;

    .line 427
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->G:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->x:Landroid/widget/ImageView;

    .line 428
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hA:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->p:Landroid/widget/ImageView;

    .line 429
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hB:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->s:Landroid/widget/ImageView;

    .line 431
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rA:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->q:Landroid/widget/TextView;

    .line 432
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vd:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->w:Landroid/view/ViewGroup;

    .line 434
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uY:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->n:Landroid/view/ViewGroup;

    .line 435
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vv:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->t:Landroid/view/View;

    .line 437
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vl:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->I:Landroid/view/ViewGroup;

    return-void
.end method

.method public i(Lo/Bc;)V
    .locals 5

    .line 907
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->v:Lo/SimpleClock;

    if-eqz v0, :cond_1

    .line 908
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lo/CY;

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CY;

    .line 909
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 910
    invoke-static {v1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 911
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->cT:I

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v2, :cond_0

    return-void

    .line 915
    :cond_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->v:Lo/SimpleClock;

    invoke-interface {p1}, Lo/Bc;->getUserThumbRating()I

    move-result v4

    invoke-virtual {v3, v4}, Lo/SimpleClock;->setRating(I)V

    .line 916
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->v:Lo/SimpleClock;

    new-instance v4, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lo/CY;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bc;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v2, v4, v0, v0}, Lo/SimpleClock;->setOnRateListener(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/SimpleClock$Activity;ZI)V

    .line 961
    invoke-interface {p1}, Lo/Bc;->getUserThumbRating()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e(IZ)V

    :cond_1
    return-void
.end method

.method protected j()V
    .locals 6

    .line 490
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b:Lo/DateTimeView;

    if-eqz v0, :cond_5

    .line 491
    invoke-virtual {v0}, Lo/DateTimeView;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4

    .line 496
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e(Landroid/view/View;)V

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->v:Lo/SimpleClock;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e(Landroid/view/View;)V

    .line 498
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i:Lo/ListView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e(Landroid/view/View;)V

    .line 499
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->F:Lo/ListView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e(Landroid/view/View;)V

    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getMeasuredWidth()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->v:Lo/SimpleClock;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 505
    :cond_1
    invoke-virtual {v2}, Lo/SimpleClock;->getMeasuredWidth()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i:Lo/ListView;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    .line 507
    :cond_2
    invoke-virtual {v3}, Lo/ListView;->getMeasuredWidth()I

    move-result v3

    .line 508
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aR:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 506
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 504
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 502
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 517
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getMeasuredWidth()I

    move-result v2

    const/4 v3, 0x4

    div-int/2addr v2, v3

    .line 516
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 520
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aY:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 515
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 524
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b:Lo/DateTimeView;

    if-eqz v2, :cond_3

    .line 525
    :goto_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b:Lo/DateTimeView;

    invoke-virtual {v2}, Lo/DateTimeView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 526
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b:Lo/DateTimeView;

    invoke-virtual {v2, v1}, Lo/DateTimeView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 530
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b(Landroid/view/View;I)V

    .line 531
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->v:Lo/SimpleClock;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b(Landroid/view/View;I)V

    .line 532
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i:Lo/ListView;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b(Landroid/view/View;I)V

    .line 533
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->F:Lo/ListView;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b(Landroid/view/View;I)V

    goto :goto_4

    .line 492
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "At least 3 buttons expected in the video actions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_4
    return-void
.end method

.method protected k()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->h:Lo/RemoteViewsListAdapter;

    invoke-virtual {v0}, Lo/RemoteViewsListAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->o()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public l()Landroid/view/ViewGroup;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->w:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public m()Lo/BaseAdapter;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->h:Lo/RemoteViewsListAdapter;

    return-object v0
.end method

.method public n()Landroid/widget/ImageView;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->x:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected o()I
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1146
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1148
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->R:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.netflix.falkor.ACTION_NOTIFY_OF_RATINGS_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1151
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->S:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.netflix.mediaclient.intent.action.UPDATE_CAPABILITIES_BADGES"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1158
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1160
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->R:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 1161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public p()Lo/ListView;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i:Lo/ListView;

    return-object v0
.end method

.method public q()V
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 685
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->M:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 701
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->M:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public s()Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    return-object v0
.end method

.method public setCopyright(Lo/Bc;)V
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 895
    invoke-interface {p1}, Lo/Bc;->aU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->n:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 898
    new-instance v0, Lo/Dy;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->n:Landroid/view/ViewGroup;

    invoke-direct {v0, p1, v1, v2}, Lo/Dy;-><init>(Lo/Bc;Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 900
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->n:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFooterViewGroupVisiblity(Z)V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->w:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setMyListVisibility(I)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i:Lo/ListView;

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0, p1}, Lo/ListView;->setVisibility(I)V

    .line 557
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->j()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1199
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setupAndShowPreReleaseTrailerButton(Lo/Bc;)V
    .locals 2

    .line 1217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->r:Lo/HorizontalScrollView;

    if-nez v0, :cond_0

    .line 1220
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->oj:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 1222
    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->eQ:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 1223
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1224
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->oh:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->r:Lo/HorizontalScrollView;

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->r:Lo/HorizontalScrollView;

    if-eqz v0, :cond_1

    .line 1229
    new-instance v1, Lo/En;

    invoke-direct {v1, p0, p1}, Lo/En;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lo/Bc;)V

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1244
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->r:Lo/HorizontalScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 1245
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->r:Lo/HorizontalScrollView;

    invoke-virtual {p1}, Lo/HorizontalScrollView;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public setupDownloadButton(Lo/Bc;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 612
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b(Lo/Bc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 614
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Z)V

    .line 615
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->j()V

    goto :goto_0

    .line 617
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 679
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 2

    .line 1286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->J:Lio/reactivex/subjects/PublishSubject;

    sget-object v1, Lo/akj;->a:Lo/akj;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 1287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->J:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method public w()V
    .locals 2

    .line 1203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->I:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->w:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1208
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1211
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1212
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public y()V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->h:Lo/RemoteViewsListAdapter;

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0}, Lo/RemoteViewsListAdapter;->f()V

    :cond_0
    return-void
.end method
