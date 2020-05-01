.class public final Lo/MediaControlView2;
.super Lo/ImageButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaControlView2$StateListAnimator;,
        Lo/MediaControlView2$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/MediaControlView2$Application;


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/MediaControlView2$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private final f:Lo/MediaControlView2$StateListAnimator;

.field private final g:Lo/MediaControlView2$StateListAnimator;

.field private i:Ljava/lang/Integer;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/MediaControlView2$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/MediaControlView2$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/MediaControlView2;->b:Lo/MediaControlView2$Application;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/MediaControlView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/MediaControlView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13

    move-object v9, p0

    move-object v10, p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct/range {p0 .. p3}, Lo/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, v9, Lo/MediaControlView2;->c:Ljava/util/Map;

    const/4 v11, 0x1

    .line 41
    iput v11, v9, Lo/MediaControlView2;->d:I

    .line 49
    new-instance v12, Lo/MediaControlView2$StateListAnimator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v2, "nflx-playPause"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lo/MediaControlView2$StateListAnimator;-><init>(Lo/MediaControlView2;Ljava/lang/String;Ljava/lang/Integer;ZZLo/MediaControlView2$StateListAnimator;ILo/amc;)V

    iput-object v12, v9, Lo/MediaControlView2;->g:Lo/MediaControlView2$StateListAnimator;

    .line 50
    new-instance v12, Lo/MediaControlView2$StateListAnimator;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v2, "nflx-pausePlay"

    move-object v0, v12

    invoke-direct/range {v0 .. v8}, Lo/MediaControlView2$StateListAnimator;-><init>(Lo/MediaControlView2;Ljava/lang/String;Ljava/lang/Integer;ZZLo/MediaControlView2$StateListAnimator;ILo/amc;)V

    iput-object v12, v9, Lo/MediaControlView2;->f:Lo/MediaControlView2$StateListAnimator;

    .line 73
    sget-object v0, Lo/ImageButton;->a:Lo/ImageButton$TaskDescription;

    move-object v1, v9

    check-cast v1, Lo/ImageButton;

    const-string v2, "lottiefiles/play-pause.json"

    invoke-virtual {v0, p1, v2, v1}, Lo/ImageButton$TaskDescription;->b(Landroid/content/Context;Ljava/lang/String;Lo/ImageButton;)Lio/reactivex/Single;

    move-result-object v0

    .line 74
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "setCompositionFromFile(c\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/netflix/mediaclient/android/widget/PlayPauseButton$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/widget/PlayPauseButton$1;-><init>(Lo/MediaControlView2;)V

    check-cast v1, Lo/alA;

    .line 83
    new-instance v2, Lcom/netflix/mediaclient/android/widget/PlayPauseButton$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/widget/PlayPauseButton$2;-><init>(Lo/MediaControlView2;)V

    check-cast v2, Lo/alA;

    .line 75
    invoke-static {v0, v2, v1}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;

    .line 92
    new-instance v0, Lo/MediaControlView2$1;

    invoke-direct {v0, p0}, Lo/MediaControlView2$1;-><init>(Lo/MediaControlView2;)V

    check-cast v0, Lo/WebSyncManager;

    invoke-virtual {p0, v0}, Lo/MediaControlView2;->setTagAnimationListener(Lo/WebSyncManager;)V

    .line 114
    new-instance v0, Lo/MediaControlView2$2;

    invoke-direct {v0, p0}, Lo/MediaControlView2$2;-><init>(Lo/MediaControlView2;)V

    check-cast v0, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lo/MediaControlView2;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 23
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 24
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/MediaControlView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lo/MediaControlView2;)Ljava/lang/Integer;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/MediaControlView2;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic b(Lo/MediaControlView2;Ljava/lang/Integer;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/MediaControlView2;->i:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic c(Lo/MediaControlView2;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lo/MediaControlView2;->j:Z

    return-void
.end method

.method public static final synthetic d(Lo/MediaControlView2;)Ljava/util/Map;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/MediaControlView2;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic d(Lo/MediaControlView2;I)V
    .locals 0

    .line 21
    iput p1, p0, Lo/MediaControlView2;->d:I

    return-void
.end method

.method public static final synthetic e(Lo/MediaControlView2;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lo/MediaControlView2;->e:Z

    return-void
.end method


# virtual methods
.method public final g()I
    .locals 1

    .line 129
    iget-object v0, p0, Lo/MediaControlView2;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lo/MediaControlView2;->d:I

    :goto_0
    return v0
.end method

.method public final setState(I)V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lo/MediaControlView2;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/MediaControlView2;->j:Z

    if-nez v0, :cond_0

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/MediaControlView2;->i:Ljava/lang/Integer;

    return-void

    .line 137
    :cond_0
    iput p1, p0, Lo/MediaControlView2;->d:I

    .line 138
    iget p1, p0, Lo/MediaControlView2;->d:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    sget-object p1, Lo/MediaControlView2;->b:Lo/MediaControlView2$Application;

    check-cast p1, Lo/MessagePdu;

    .line 141
    iget-object p1, p0, Lo/MediaControlView2;->f:Lo/MediaControlView2$StateListAnimator;

    invoke-virtual {p1}, Lo/MediaControlView2$StateListAnimator;->a()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/android/lottie/FrameType;->a:Lcom/netflix/mediaclient/android/lottie/FrameType;

    invoke-virtual {p0, p1, v0}, Lo/MediaControlView2;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/lottie/FrameType;)Z

    .line 142
    invoke-virtual {p0}, Lo/MediaControlView2;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/IHwInterface$PendingIntent;->d:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/MediaControlView2;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_2
    sget-object p1, Lo/MediaControlView2;->b:Lo/MediaControlView2$Application;

    check-cast p1, Lo/MessagePdu;

    .line 146
    iget-object p1, p0, Lo/MediaControlView2;->g:Lo/MediaControlView2$StateListAnimator;

    invoke-virtual {p1}, Lo/MediaControlView2$StateListAnimator;->a()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/android/lottie/FrameType;->a:Lcom/netflix/mediaclient/android/lottie/FrameType;

    invoke-virtual {p0, p1, v0}, Lo/MediaControlView2;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/lottie/FrameType;)Z

    .line 147
    invoke-virtual {p0}, Lo/MediaControlView2;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/IHwInterface$PendingIntent;->b:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/MediaControlView2;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
