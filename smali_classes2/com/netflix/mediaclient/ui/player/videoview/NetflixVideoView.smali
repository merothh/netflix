.class public Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;
.implements Landroid/os/Handler$Callback;
.implements Lo/OverScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;,
        Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;,
        Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;,
        Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;,
        Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final aA:J = 0x20L

.field private static final aB:Z = false

# The value of this static final field might be set in the static constructor
.field private static final aC:Ljava/lang/String; = "3.5"

.field private static final aD:Z = false

# The value of this static final field might be set in the static constructor
.field private static final aE:I = 0x7d0

# The value of this static final field might be set in the static constructor
.field private static final aF:Ljava/lang/String; = "Playback start failed"

# The value of this static final field might be set in the static constructor
.field private static final aG:I = 0x64

# The value of this static final field might be set in the static constructor
.field private static final aH:I = 0xa

# The value of this static final field might be set in the static constructor
.field private static final aL:I = 0x4

.field private static av:Z = false

# The value of this static final field might be set in the static constructor
.field private static final ax:I = 0x1d4c0

# The value of this static final field might be set in the static constructor
.field private static final ay:F = 0.01f

# The value of this static final field might be set in the static constructor
.field private static final az:J = 0x1f4L

.field public static final d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;


# instance fields
.field private A:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

.field private B:Lo/Ya;

.field private C:Z

.field private D:Landroid/view/ViewGroup;

.field private E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

.field private F:Landroid/os/Handler;

.field private G:Lo/zJ;

.field private H:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

.field private I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

.field private J:Lo/UD;

.field private K:Z

.field private L:I

.field private M:Z

.field private N:Z

.field private O:I

.field private P:F

.field private Q:I

.field private R:I

.field private S:I

.field private T:Landroid/graphics/Rect;

.field private U:Z

.field private V:I

.field private W:F

.field private a:J

.field private aa:Z

.field private final ab:Landroid/graphics/Rect;

.field private ac:Lo/Ab;

.field private ad:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

.field private ae:Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;

.field private af:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private ag:Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

.field private ah:Z

.field private ai:Lcom/netflix/mediaclient/servicemgr/IPlayer$Activity;

.field private final aj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ak:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

.field private al:Z

.field private final am:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private an:Z

.field private ao:Z

.field private final ap:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;

.field private aq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ar:I

.field private final as:J

.field private final at:Ljava/lang/Runnable;

.field private final au:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final aw:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;

.field private b:J

.field protected c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:J

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Lo/Ya;

.field private l:Lcom/netflix/mediaclient/media/PreferredLanguageData;

.field private m:Z

.field private n:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Lo/Ts;

.field private q:Z

.field private r:Z

.field private s:J

.field private t:J

.field private u:Lo/Ya;

.field private final v:Lo/Yc;

.field private w:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;

.field private x:F

.field private final y:Z

.field private z:Lo/XQ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    const-wide/16 v0, 0x1f4

    .line 271
    sput-wide v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->az:J

    const-wide/16 v0, 0x20

    .line 272
    sput-wide v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aA:J

    const v0, 0x1d4c0

    .line 273
    sput v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ax:I

    const v0, 0x3c23d70a    # 0.01f

    .line 274
    sput v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ay:F

    const/16 v0, 0x64

    .line 275
    sput v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aG:I

    const/16 v0, 0x7d0

    .line 276
    sput v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aE:I

    const-string v0, "Playback start failed"

    .line 278
    sput-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aF:Ljava/lang/String;

    const-string v0, "3.5"

    .line 279
    sput-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aC:Ljava/lang/String;

    const/16 v0, 0xa

    .line 280
    sput v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aH:I

    const/4 v0, 0x4

    .line 294
    sput v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    sget-object p4, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->n:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    .line 96
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    sget-wide v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->az:J

    iput-wide v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->s:J

    .line 105
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p4

    const-string v1, "playback_brightness_preference"

    const/high16 v2, -0x40800000    # -1.0f

    .line 104
    invoke-static {p4, v1, v2}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;F)F

    move-result p4

    iput p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x:F

    .line 110
    new-instance p4, Lo/Yc;

    invoke-direct {p4}, Lo/Yc;-><init>()V

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v:Lo/Yc;

    .line 112
    new-instance p4, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;

    invoke-direct {p4, p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->w:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;

    .line 166
    sget-object p4, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->A:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    .line 180
    sget-object p4, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    .line 182
    sget-object p4, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    const-string v1, "PlaybackExperience.DEFAULT_PLAYBACK"

    invoke-static {p4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    const/high16 p4, 0x3f800000    # 1.0f

    .line 201
    iput p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P:F

    const/4 v1, 0x1

    .line 208
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->U:Z

    .line 210
    iput p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->W:F

    .line 225
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ah:Z

    .line 233
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 234
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 235
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 237
    sget p4, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aE:I

    iput p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ar:I

    .line 238
    new-instance p4, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;

    invoke-direct {p4, p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ap:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;

    .line 240
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->au:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    sget-object p4, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->be:[I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 247
    sget p2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->y:Z

    .line 248
    sget-object p2, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    const-string p3, "attributes"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->ordinal()I

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;->e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;Landroid/content/res/TypedArray;I)Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->n:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    .line 249
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    move-object p3, p0

    check-cast p3, Landroid/os/Handler$Callback;

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    .line 251
    new-instance p1, Lo/Ts;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lo/Ts;-><init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->p:Lo/Ts;

    .line 252
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    .line 253
    invoke-direct {p0, p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->p(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/UD;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    .line 254
    sget-object p1, Lo/dI;->e:Lo/dI$StateListAnimator;

    invoke-virtual {p1}, Lo/dI$StateListAnimator;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ah()Z

    .line 257
    :cond_0
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/context/MediaPlayer;

    invoke-direct {p2}, Lcom/netflix/cl/model/context/MediaPlayer;-><init>()V

    check-cast p2, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->as:J

    .line 380
    new-instance p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aw:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;

    .line 435
    new-instance p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Application;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Application;-><init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->at:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    .line 55
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 57
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->L:I

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/UD;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/zJ;Lo/XH;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lo/zJ;Lo/XH;)V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->al:Z

    return p0
.end method

.method private final aA()V
    .locals 5

    .line 1297
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->y:Z

    if-eqz v0, :cond_1

    .line 1298
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1302
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->D:Landroid/view/ViewGroup;

    .line 1303
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ab:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 1305
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 1306
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ab:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1307
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ab:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 1308
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ab:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1304
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1311
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->D:Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    :cond_1
    sget-boolean v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aD:Z

    if-eqz v0, :cond_4

    .line 1314
    new-instance v0, Lo/XQ;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/XQ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->z:Lo/XQ;

    .line 1315
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->z:Lo/XQ;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->addView(Landroid/view/View;)V

    .line 1317
    sget-boolean v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->av:Z

    if-eqz v0, :cond_4

    .line 1318
    new-instance v0, Lo/XN;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

    invoke-direct {v0, v1, v2}, Lo/XN;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;)V

    .line 1319
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "(context as Activity).window"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroid/view/ViewGroup;

    .line 1321
    check-cast v0, Landroid/view/View;

    .line 1322
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x53

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 1320
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1319
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void
.end method

.method private final aB()V
    .locals 2

    const/4 v0, 0x1

    .line 1766
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setKeepScreenOn(Z)V

    .line 1767
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->at:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic ao()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aF:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic ap()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aC:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic ar()F
    .locals 1

    .line 53
    sget v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ay:F

    return v0
.end method

.method public static final synthetic as()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aB:Z

    return v0
.end method

.method private final at()Z
    .locals 2

    .line 441
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "(context as Activity).window"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final au()V
    .locals 8

    .line 939
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Q:I

    if-lez v0, :cond_2

    .line 940
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->M()Lcom/netflix/mediaclient/servicemgr/IPlayer$Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 941
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getMeasuredWidth()I

    move-result v2

    .line 942
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getMeasuredHeight()I

    move-result v3

    .line 943
    iget v4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->R:I

    .line 944
    iget v5, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Q:I

    .line 945
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->A:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    sget-object v6, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    if-ne v0, v6, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->O:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->R:I

    :goto_0
    move v6, v0

    .line 946
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->A:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    sget-object v7, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    if-ne v0, v7, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->S:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Q:I

    :goto_1
    move v7, v0

    .line 940
    invoke-interface/range {v1 .. v7}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Activity;->c(IIIIII)V

    :cond_2
    return-void
.end method

.method private final av()Lo/Ya;
    .locals 3

    .line 1238
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v:Lo/Yc;

    invoke-virtual {v0}, Lo/Yc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1244
    :cond_0
    new-instance v0, Lo/XW;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ap:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;

    check-cast v2, Lo/XX;

    invoke-direct {v0, v1, v2}, Lo/XW;-><init>(Landroid/content/Context;Lo/XX;)V

    check-cast v0, Lo/Ya;

    goto :goto_1

    .line 1242
    :cond_1
    :goto_0
    new-instance v0, Lo/XZ;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ap:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;

    check-cast v2, Lo/XX;

    invoke-direct {v0, v1, v2}, Lo/XZ;-><init>(Landroid/content/Context;Lo/XX;)V

    check-cast v0, Lo/Ya;

    :goto_1
    return-object v0
.end method

.method public static final aw()J
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private final ax()V
    .locals 1

    .line 1497
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 1498
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    return-void
.end method

.method private final az()V
    .locals 4

    .line 1771
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->at:Ljava/lang/Runnable;

    sget v2, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ax:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final b(F)V
    .locals 2

    .line 1809
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    .line 1810
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1811
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1812
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    .line 1809
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ax()V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ao:Z

    return-void
.end method

.method private final b(Lo/zJ;Lo/XH;)V
    .locals 0

    .line 1778
    invoke-virtual {p2}, Lo/XH;->b()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/zJ;->a(Landroid/view/View;)V

    return-void
.end method

.method private final b(Ljava/lang/String;ZZ)Z
    .locals 15

    move-object v12, p0

    .line 1349
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 1350
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->b()Lo/pz;

    move-result-object v0

    const/4 v13, 0x0

    if-eqz v0, :cond_19

    .line 1351
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ac:Lo/Ab;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/Ab;->c()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_18

    .line 1353
    iget-object v1, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->af:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {v1}, Lo/Tw;->e(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 1355
    invoke-interface {v0}, Lo/pz;->e()Lo/Ah;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1358
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "VideoView - svcManager.getPlaybackSessionManager is null"

    .line 1359
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return v13

    .line 1362
    :cond_1
    iget-object v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    if-nez v0, :cond_2

    .line 1363
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    return v13

    .line 1368
    :cond_2
    iget-wide v1, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->j:J

    .line 1370
    iget-object v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->w:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;

    move-object v4, v0

    check-cast v4, Lo/Af;

    .line 1371
    iget-object v5, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ac:Lo/Ab;

    const-string v14, "Required value was null."

    if-eqz v5, :cond_17

    .line 1372
    iget-object v6, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    .line 1373
    iget-object v7, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->af:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 1374
    iget-boolean v8, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->U:Z

    .line 1375
    iget-object v9, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->f:Ljava/lang/String;

    move-object v0, p0

    move/from16 v10, p3

    move-object/from16 v11, p1

    .line 1367
    invoke-virtual/range {v0 .. v11}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(JLo/Ah;Lo/Af;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZLjava/lang/String;ZLjava/lang/String;)Lo/zJ;

    move-result-object v0

    iput-object v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    .line 1379
    iget-object v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_4

    if-nez v0, :cond_3

    .line 1380
    invoke-static {}, Lo/amh;->c()V

    :cond_3
    invoke-interface {v0}, Lo/zJ;->f()J

    move-result-wide v0

    iput-wide v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->h:J

    .line 1383
    :cond_4
    iget-object v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1384
    iget-object v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-nez v0, :cond_5

    .line 1385
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    return v13

    :cond_5
    if-eqz v0, :cond_7

    .line 1388
    iget-object v1, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    if-nez v1, :cond_6

    invoke-static {}, Lo/amh;->c()V

    :cond_6
    invoke-interface {v1}, Lo/Ya;->b()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/zJ;->a(Landroid/view/View;)V

    .line 1389
    :cond_7
    iget-object v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_8

    iget-object v1, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->n:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Lo/zJ;->a(I)V

    .line 1390
    :cond_8
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->X()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1392
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getVideoProfileTag()Ljava/lang/String;

    .line 1393
    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 1394
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPrimarySurface$NetflixApp_release(Lcom/netflix/mediaclient/media/PlayerManifestData;)V

    .line 1395
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;->aspectRatioDimension:Landroid/graphics/Point;

    if-eqz v1, :cond_9

    .line 1396
    iget v2, v1, Landroid/graphics/Point;->x:I

    if-eqz v2, :cond_9

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-eqz v2, :cond_9

    .line 1397
    sget-object v2, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v2, Lo/MessagePdu;

    .line 1398
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setVideoSize(II)V

    .line 1401
    :cond_9
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;->croppedAspectRatioDimension:Landroid/graphics/Point;

    if-eqz v0, :cond_a

    .line 1402
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_a

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_a

    .line 1403
    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 1404
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(II)V

    .line 1407
    :cond_a
    iget-object v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-nez v0, :cond_b

    .line 1408
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 1409
    invoke-direct {p0, p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->p(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/UD;

    move-result-object v0

    iput-object v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    .line 1411
    :cond_b
    iget-object v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-eqz v0, :cond_c

    iget-object v1, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    invoke-virtual {v0, v1}, Lo/UD;->d(Lo/zJ;)V

    .line 1412
    :cond_c
    iget-object v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-eqz v0, :cond_d

    iget-object v1, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->T:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lo/UD;->e(Landroid/graphics/Rect;)V

    :cond_d
    const/4 v0, 0x1

    .line 1414
    iput-boolean v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->al:Z

    .line 1415
    iget-object v1, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    if-eqz v1, :cond_10

    instance-of v2, v1, Lo/XH;

    if-eqz v2, :cond_10

    iget-object v2, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v2, :cond_10

    if-eqz v2, :cond_f

    if-eqz v1, :cond_e

    .line 1418
    check-cast v1, Lo/XH;

    .line 1416
    invoke-direct {p0, v2, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lo/zJ;Lo/XH;)V

    goto :goto_1

    .line 1418
    :cond_e
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.videoview.AV1SurfaceViewWrapper"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1417
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1421
    :cond_10
    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 1423
    :goto_1
    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    iput-object v1, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    if-eqz p2, :cond_11

    .line 1426
    iput-boolean v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->M:Z

    .line 1428
    :cond_11
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->g()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v2, :cond_14

    invoke-interface {v2}, Lo/zJ;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1432
    iget-object v1, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v1, :cond_13

    invoke-interface {v1}, Lo/zJ;->p()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v5

    .line 1433
    iget-object v6, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-nez v6, :cond_12

    const-string v1, "videoType"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 1434
    :cond_12
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->j()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v7, v3

    div-long/2addr v1, v7

    long-to-int v7, v1

    .line 1435
    iget-object v1, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->c()Lo/Aq;

    move-result-object v8

    const-string v3, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    .line 1429
    invoke-static/range {v3 .. v8}, Lo/Ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILo/Aq;)Landroid/content/Intent;

    move-result-object v1

    .line 1437
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v2

    .line 1438
    invoke-virtual {v2, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    goto :goto_2

    .line 1432
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1431
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1440
    :cond_15
    :goto_2
    iput-boolean v0, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->N:Z

    if-eqz p3, :cond_16

    .line 1444
    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    iput-object v1, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    goto :goto_3

    .line 1446
    :cond_16
    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    iput-object v1, v12, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    :goto_3
    return v0

    .line 1371
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1450
    :cond_18
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 1451
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ax()V

    :cond_19
    return v13
.end method

.method private final c(II)V
    .locals 2

    .line 958
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->O:I

    .line 959
    iget v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->S:I

    .line 961
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->O:I

    .line 962
    iput p2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->S:I

    .line 964
    iget p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->O:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->S:I

    if-eq v1, p1, :cond_1

    .line 965
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->au()V

    :cond_1
    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V
    .locals 2

    .line 1731
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zJ;->l()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v0, 0x1

    .line 1732
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aa:Z

    .line 1733
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lo/zJ;->l()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ad:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 1734
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setSubtitleTrack(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V

    .line 1735
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->au:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1736
    sget-object p1, Lo/akj;->a:Lo/akj;

    :goto_1
    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 1

    .line 1502
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-eq v0, p1, :cond_0

    .line 1503
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    .line 1504
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1505
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->f()Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;->b(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->w:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;

    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->al:Z

    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->g()Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Ljava/lang/String;)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/UD;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    return-object p0
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K:Z

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Ljava/lang/String;ZZILjava/lang/Object;)Z
    .locals 0

    if-nez p5, :cond_3

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    .line 1345
    check-cast p1, Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 1347
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0

    .line 0
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadVideo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final d(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1333
    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ar:I

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(II)V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/Ya;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->C:Z

    return p0
.end method

.method public static final synthetic f(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ah:Z

    return p0
.end method

.method public static final synthetic g(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/Ts;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->p:Lo/Ts;

    return-object p0
.end method

.method private final g()Z
    .locals 2

    .line 118
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->M:Z

    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->M:Z

    return v0
.end method

.method public static final synthetic h(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->au:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic i(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)F
    .locals 0

    .line 53
    iget p0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P:F

    return p0
.end method

.method public static final synthetic j(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->az()V

    return-void
.end method

.method public static final synthetic k(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->o()Z

    move-result p0

    return p0
.end method

.method public static final synthetic l(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aB()V

    return-void
.end method

.method public static final synthetic m(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->w:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;

    return-object p0
.end method

.method private final m()Z
    .locals 2

    .line 378
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P:F

    const/4 v1, 0x0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ay:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic n(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic o(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->as:J

    return-wide v0
.end method

.method private final o()Z
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v0}, Lo/zJ;->p()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final p(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/UD;
    .locals 1

    .line 1749
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-nez v0, :cond_0

    .line 1750
    new-instance v0, Lo/UD;

    invoke-direct {v0, p1}, Lo/UD;-><init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 1751
    invoke-static {}, Lo/amh;->c()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final synthetic q(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/Ya;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    return-object p0
.end method

.method public static final synthetic r(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic s(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/Ya;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->k:Lo/Ya;

    return-object p0
.end method

.method public static final setSEnablePlayerDebugControl(Z)V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    sput-boolean p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->av:Z

    return-void
.end method


# virtual methods
.method protected final A()Landroid/os/Handler;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    return-object v0
.end method

.method public final B()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    return-object v0
.end method

.method protected final C()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    return-object v0
.end method

.method protected final D()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->N:Z

    return v0
.end method

.method public final E()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->S:I

    return v0
.end method

.method public final F()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->O:I

    return v0
.end method

.method public final G()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Q:I

    return v0
.end method

.method public final H()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->R:I

    return v0
.end method

.method protected final I()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-nez v0, :cond_0

    const-string v1, "videoType"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final J()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->af:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public final K()Landroid/graphics/Rect;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->T:Landroid/graphics/Rect;

    return-object v0
.end method

.method public L()Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ae:Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;

    return-object v0
.end method

.method public M()Lcom/netflix/mediaclient/servicemgr/IPlayer$Activity;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ai:Lcom/netflix/mediaclient/servicemgr/IPlayer$Activity;

    return-object v0
.end method

.method protected final N()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method protected final O()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->an:Z

    return v0
.end method

.method public final P()Z
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Q()Z
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final R()Z
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->a:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final S()Z
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->j:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final T()Z
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final U()Z
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final V()F
    .locals 3

    .line 449
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "playback_brightness_preference"

    const/high16 v2, -0x40800000    # -1.0f

    .line 448
    invoke-static {v0, v1, v2}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final W()Z
    .locals 1

    .line 459
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->X()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->isHDR10Profile()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final X()Lcom/netflix/mediaclient/media/PlayerManifestData;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zJ;->s()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final Y()V
    .locals 2

    .line 756
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aq()V

    .line 757
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/UD;->d(Lo/zJ;)V

    .line 759
    :cond_0
    invoke-direct {p0, p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->p(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/UD;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    .line 760
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->T:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lo/UD;->e(Landroid/graphics/Rect;)V

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    invoke-virtual {v0, v1}, Lo/UD;->d(Lo/zJ;)V

    :cond_2
    return-void
.end method

.method public Z()V
    .locals 11

    .line 858
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 859
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 860
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->an:Z

    .line 861
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setKeepScreenOn(Z)V

    .line 862
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->at:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 864
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aq()V

    .line 865
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lo/zJ;->i()V

    .line 866
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->w:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$StateListAnimator;

    check-cast v3, Lo/Af;

    invoke-interface {v1, v3}, Lo/zJ;->e(Lo/Af;)V

    .line 867
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 868
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lo/zJ;->v()V

    .line 870
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Lo/UD;->d(Lo/zJ;)V

    .line 872
    :cond_4
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->N:Z

    if-eqz v1, :cond_8

    .line 873
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->N:Z

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    const-string v4, "Required value was null."

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lo/zJ;->d()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 877
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lo/zJ;->p()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v7

    .line 878
    iget-object v8, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-nez v8, :cond_5

    const-string v1, "videoType"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 879
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x()J

    move-result-wide v3

    const/16 v1, 0x3e8

    int-to-long v9, v1

    div-long/2addr v3, v9

    long-to-int v9, v3

    .line 880
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->c()Lo/Aq;

    move-result-object v10

    const-string v5, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    .line 874
    invoke-static/range {v5 .. v10}, Lo/Ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILo/Aq;)Landroid/content/Intent;

    move-result-object v1

    .line 882
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v3

    .line 883
    invoke-virtual {v3, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 877
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 876
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 887
    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->p:Lo/Ts;

    invoke-virtual {v1}, Lo/Ts;->d()V

    .line 888
    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    .line 889
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lo/Ya;->d()V

    .line 890
    :cond_9
    move-object v1, v2

    check-cast v1, Lo/Ya;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    .line 891
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->k:Lo/Ya;

    if-eqz v3, :cond_a

    invoke-interface {v3}, Lo/Ya;->d()V

    .line 892
    :cond_a
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->k:Lo/Ya;

    .line 893
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->al:Z

    .line 894
    move-object v1, v2

    check-cast v1, Lo/zJ;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    .line 895
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    .line 896
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 897
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-eqz v0, :cond_b

    .line 898
    check-cast v2, Lo/UD;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    .line 900
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->p:Lo/Ts;

    invoke-virtual {v0}, Lo/Ts;->d()V

    return-void
.end method

.method public a(JLo/Ah;Lo/Af;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZLjava/lang/String;ZLjava/lang/String;)Lo/zJ;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v5, p5

    const-string v2, "playbackSessionManager"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sessionPlayerListener"

    move-object/from16 v4, p4

    invoke-static {v4, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "videoGroup"

    invoke-static {v5, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "playbackExperience"

    move-object/from16 v6, p6

    invoke-static {v6, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1625
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->j()J

    move-result-wide v2

    .line 1626
    sget-object v7, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    move-object v8, v7

    check-cast v8, Lo/MessagePdu;

    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    if-gez v10, :cond_0

    .line 1628
    check-cast v7, Lo/MessagePdu;

    goto :goto_0

    :cond_0
    move-wide v8, v2

    :goto_0
    if-eqz p10, :cond_1

    .line 1633
    sget-object v2, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v2, Lo/MessagePdu;

    .line 1634
    invoke-interface {v1, v5}, Lo/Ah;->d(Lo/Ab;)V

    .line 1637
    :cond_1
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->i:Ljava/lang/String;

    const/16 v2, 0x3e8

    if-eqz v7, :cond_3

    if-nez p7, :cond_2

    .line 1644
    invoke-static {}, Lo/amh;->c()V

    :cond_2
    int-to-long v2, v2

    mul-long v9, v8, v2

    .line 1646
    iget-object v12, v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->g:[B

    move-object/from16 v1, p3

    move-wide/from16 v2, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v11, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p11

    .line 1638
    invoke-interface/range {v1 .. v14}, Lo/Ah;->e(JLo/Af;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;JZ[BLjava/lang/String;Ljava/lang/String;)Lo/zJ;

    move-result-object v1

    goto :goto_1

    .line 1654
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->n()J

    move-result-wide v10

    if-nez p7, :cond_4

    .line 1655
    invoke-static {}, Lo/amh;->c()V

    :cond_4
    int-to-long v2, v2

    mul-long v12, v8, v2

    .line 1658
    iget-boolean v14, v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->m:Z

    .line 1661
    iget-object v15, v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->l:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    move-object/from16 v1, p3

    move-wide/from16 v2, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide v7, v10

    move-object/from16 v9, p7

    move-wide v10, v12

    move/from16 v12, p8

    move v13, v14

    move-object/from16 v14, p9

    move-object/from16 v16, v15

    move-object/from16 v15, p11

    .line 1649
    invoke-interface/range {v1 .. v16}, Lo/Ah;->a(JLo/Af;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;JLcom/netflix/mediaclient/servicemgr/PlayContext;JZZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)Lo/zJ;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public final a(IIII)V
    .locals 1

    .line 983
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->T:Landroid/graphics/Rect;

    .line 984
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->T:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lo/UD;->e(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected final a(J)V
    .locals 0

    .line 78
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->j:J

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->f:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected final a(Lo/Ya;)Z
    .locals 3

    const-string v0, "surface"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1282
    invoke-interface {p1}, Lo/Ya;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->A:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    invoke-interface {p1, v0}, Lo/Ya;->e(Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;)V

    .line 1284
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1289
    invoke-interface {p1}, Lo/Ya;->b()Landroid/view/View;

    move-result-object p1

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public aa()V
    .locals 1

    const/4 v0, 0x0

    .line 1036
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(I)V

    return-void
.end method

.method public ab()V
    .locals 1

    const/4 v0, 0x0

    .line 1014
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->e(I)V

    return-void
.end method

.method public final ac()Lo/Ya;
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    return-object v0
.end method

.method protected ad()Lo/Ya;
    .locals 3

    .line 1249
    new-instance v0, Lo/XH;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aw:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;

    check-cast v2, Lo/XX;

    invoke-direct {v0, v1, v2}, Lo/XH;-><init>(Landroid/content/Context;Lo/XX;)V

    check-cast v0, Lo/Ya;

    return-object v0
.end method

.method public ae()Lcom/netflix/mediaclient/media/Watermark;
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zJ;->m()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected final af()V
    .locals 2

    .line 1597
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1598
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zJ;->i()V

    :cond_0
    const/4 v0, 0x0

    .line 1600
    iput v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->L:I

    .line 1602
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1603
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->q:Z

    .line 1604
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lo/zJ;->j()V

    goto :goto_0

    .line 1606
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 1607
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Z()V

    :cond_2
    :goto_0
    return-void
.end method

.method public ag()V
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zJ;->g()V

    :cond_0
    return-void
.end method

.method public final ah()Z
    .locals 2

    .line 1255
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->removeAllViewsInLayout()V

    .line 1258
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    if-nez v0, :cond_0

    .line 1259
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->av()Lo/Ya;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    instance-of v0, v0, Lo/XH;

    if-nez v0, :cond_1

    .line 1262
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ad()Lo/Ya;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->k:Lo/Ya;

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->k:Lo/Ya;

    if-eqz v0, :cond_4

    if-nez v0, :cond_2

    .line 1265
    invoke-static {}, Lo/amh;->c()V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(Lo/Ya;)Z

    .line 1266
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->k:Lo/Ya;

    if-nez v0, :cond_3

    invoke-static {}, Lo/amh;->c()V

    :cond_3
    invoke-interface {v0}, Lo/Ya;->b()Landroid/view/View;

    move-result-object v0

    const-string v1, "av1Surface!!.view"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const/4 v0, 0x0

    .line 1268
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPrimarySurface$NetflixApp_release(Lcom/netflix/mediaclient/media/PlayerManifestData;)V

    .line 1269
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->an:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 1270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1272
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    if-eqz v0, :cond_7

    if-nez v0, :cond_6

    invoke-static {}, Lo/amh;->c()V

    :cond_6
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(Lo/Ya;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1273
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    .line 1274
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aA()V

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method protected final ai()V
    .locals 2

    .line 1756
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1757
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final aj()Z
    .locals 1

    .line 1698
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ak()V
    .locals 2

    .line 1711
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->h()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_5

    .line 1712
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/aek;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1714
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->i()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->e:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zJ;->l()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/zJ;->l()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    invoke-interface {v1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isForcedNarrativeOrNone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1716
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    invoke-static {v0, v1}, Lo/aex;->a(Landroid/content/Context;Lo/zJ;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "it"

    .line 1717
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V

    goto :goto_1

    .line 1721
    :cond_4
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aa:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 1722
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aa:Z

    .line 1723
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ad:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setSubtitleTrack(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V

    .line 1724
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->au:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected final al()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final am()Z
    .locals 10

    .line 1670
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    .line 1671
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->an:Z

    .line 1672
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K:Z

    const-string v3, "Required value was null."

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    if-eqz v2, :cond_5

    .line 1673
    sget-object v2, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    .line 1674
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K:Z

    .line 1675
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v1, :cond_4

    const-wide/16 v4, 0x0

    invoke-interface {v1, v4, v5}, Lo/zJ;->e(J)V

    .line 1676
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    if-nez v2, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    invoke-interface {v2}, Lo/Ya;->b()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/zJ;->a(Landroid/view/View;)V

    .line 1677
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-eqz v1, :cond_2

    if-nez v1, :cond_1

    .line 1678
    invoke-static {}, Lo/amh;->c()V

    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    invoke-virtual {v1, v2}, Lo/UD;->d(Lo/zJ;)V

    :cond_2
    return v0

    .line 1676
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1675
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1682
    :cond_5
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K:Z

    .line 1683
    sget-object v2, Lo/dI;->e:Lo/dI$StateListAnimator;

    invoke-virtual {v2}, Lo/dI$StateListAnimator;->d()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    if-eqz v2, :cond_9

    .line 1684
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1685
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ao:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->d()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Ljava/lang/String;ZZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1686
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lo/Ya;->b()Landroid/view/View;

    move-result-object v2

    const-string v3, "requireNotNull(surface).view"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1687
    sget-object v2, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    goto :goto_0

    .line 1686
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1689
    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lo/Ya;->b()Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 1691
    :cond_9
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ah()Z

    move-result v0

    return v0
.end method

.method public final an()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 1816
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(F)V

    return-void
.end method

.method protected final aq()V
    .locals 2

    .line 1761
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1762
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public b(J)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lo/zJ;->c(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b()V
    .locals 1

    .line 1082
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 1083
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Z()V

    .line 1084
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->removeAllViewsInLayout()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 1041
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    if-nez p1, :cond_0

    .line 1043
    sget p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aL:I

    const/4 p1, 0x0

    .line 1044
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->L:I

    goto :goto_0

    .line 1046
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->L:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->L:I

    .line 1048
    :goto_0
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 1049
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1050
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    if-eqz p1, :cond_3

    .line 1051
    iget p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->L:I

    if-nez p1, :cond_2

    .line 1052
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 1053
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo/zJ;->h()V

    .line 1055
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ai()V

    goto :goto_1

    .line 1057
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    goto :goto_1

    .line 1060
    :cond_3
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    goto :goto_1

    .line 1063
    :cond_4
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    :goto_1
    return-void
.end method

.method public final b(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V
    .locals 2

    const-string v0, "resolutionRange"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1225
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->b()Lo/pz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1226
    invoke-interface {v0, p1}, Lo/pz;->b(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V

    :cond_0
    return-void
.end method

.method public b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z
    .locals 14

    move-object v8, p0

    move-object/from16 v0, p4

    move-object/from16 v9, p8

    const-string v1, "group"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "playableString"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoType"

    move-object/from16 v4, p5

    invoke-static {v4, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "experience"

    move-object/from16 v10, p6

    invoke-static {v10, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "playContext"

    move-object/from16 v6, p7

    invoke-static {v6, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bookmark"

    invoke-static {v9, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p10

    .line 788
    iput-object v1, v8, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->f:Ljava/lang/String;

    .line 789
    iget-object v1, v8, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    .line 790
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->n()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v8, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 793
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    goto :goto_1

    .line 791
    :cond_1
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    :goto_1
    move-wide v1, p1

    .line 795
    iput-wide v1, v8, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->j:J

    return v11

    :cond_2
    move-wide v1, p1

    .line 799
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v7, "uri"

    .line 800
    invoke-static {v5, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 801
    iput-object v0, v8, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->i:Ljava/lang/String;

    goto :goto_2

    .line 803
    :cond_3
    invoke-static/range {p4 .. p4}, Lo/aev;->i(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {p0, v12, v13}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setInitialPlayableId(J)V

    :goto_2
    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p9

    .line 806
    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(JLo/Ab;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Z)Z

    move-result v0

    if-nez v0, :cond_4

    return v11

    .line 818
    :cond_4
    iget-wide v0, v9, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(J)V

    .line 819
    invoke-interface/range {p6 .. p6}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 820
    iput v0, v8, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P:F

    .line 822
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->am()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 1822
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->V:I

    return v0
.end method

.method public c(J)V
    .locals 3

    .line 1068
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->g:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    const-wide/16 v1, 0x0

    .line 1071
    invoke-static {v1, v2, p1, p2}, Lo/amG;->d(JJ)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lo/zJ;->e(J)V

    :cond_0
    return-void
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/ExitPipAction;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/zJ;->a(Lcom/netflix/mediaclient/servicemgr/ExitPipAction;)V

    :cond_0
    return-void
.end method

.method protected final c(Lo/zJ;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    return-void
.end method

.method public d()F
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zJ;->w()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method protected d(J)V
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a:J

    return-void
.end method

.method protected final d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    return-void
.end method

.method protected final d(Z)V
    .locals 0

    .line 190
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->M:Z

    return-void
.end method

.method protected final d(JLo/Ab;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Z)Z
    .locals 2

    const-string v0, "group"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experience"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-nez v0, :cond_0

    .line 836
    invoke-direct {p0, p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->p(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/UD;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    .line 837
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->T:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lo/UD;->e(Landroid/graphics/Rect;)V

    .line 839
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    if-ne p5, v0, :cond_1

    .line 840
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->p:Lo/Ts;

    invoke-virtual {v0}, Lo/Ts;->e()Z

    :cond_1
    if-eqz p4, :cond_2

    if-eqz p6, :cond_2

    .line 847
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ac:Lo/Ab;

    .line 848
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->j:J

    .line 849
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    .line 850
    invoke-virtual {p0, p6}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlayContext(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 851
    iput-boolean p7, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->U:Z

    .line 852
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->H:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    .line 853
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 p1, 0x1

    return p1

    .line 843
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 844
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "attachPlaybackSession videoType="

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " playContext="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " group="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 1852
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final e(I)V
    .locals 1

    .line 1019
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    if-nez p1, :cond_0

    .line 1021
    sget p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aL:I

    .line 1023
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->L:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->L:I

    .line 1024
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 1025
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz p1, :cond_2

    .line 1026
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1027
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 1028
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo/zJ;->i()V

    .line 1029
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aq()V

    .line 1030
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->az()V

    .line 1031
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    :cond_2
    return-void
.end method

.method public final e(J)V
    .locals 2

    .line 914
    sget-wide v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aA:J

    .line 913
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 917
    sget-wide v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->az:J

    .line 912
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->s:J

    return-void
.end method

.method protected final e(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->N:Z

    return-void
.end method

.method public f()Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ak:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    return-object v0
.end method

.method public h()Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ag:Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, "message"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1457
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return v2

    .line 1480
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-nez p1, :cond_1

    .line 1481
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    return v2

    :cond_1
    if-eqz p1, :cond_4

    .line 1484
    invoke-interface {p1}, Lo/zJ;->e()J

    move-result-wide v2

    .line 1485
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    .line 1486
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->L()Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;->a(J)V

    .line 1487
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->s:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return v0

    .line 1484
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1463
    :cond_5
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-nez p1, :cond_6

    .line 1464
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    return v2

    .line 1468
    :cond_6
    sget-boolean v2, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aD:Z

    if-eqz v2, :cond_7

    .line 1469
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->z:Lo/XQ;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Lo/XQ;->e(Lo/zJ;)V

    .line 1471
    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1472
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    .line 1474
    sget-wide v2, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->az:J

    .line 1472
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    return v0

    .line 1459
    :cond_9
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->requestLayout()V

    return v0
.end method

.method public i()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->k:Lo/Ya;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected j()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b:J

    return-wide v0
.end method

.method public final l()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->h:J

    return-wide v0
.end method

.method public n()J
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zJ;->d()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->k()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 952
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 954
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->au()V

    return-void
.end method

.method public final p()Lcom/netflix/mediaclient/media/PreferredLanguageData;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->l:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    return-object v0
.end method

.method public final q()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->n:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    return-object v0
.end method

.method public final r()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->q:Z

    return v0
.end method

.method public final s()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->m:Z

    return v0
.end method

.method public final setAudioDuck(Z)V
    .locals 1

    .line 1702
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->q:Z

    if-nez v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/zJ;->a(Z)V

    :cond_0
    return-void
.end method

.method public setAudioTrack(Lcom/netflix/mediaclient/media/AudioSource;)V
    .locals 1

    const-string v0, "audioTrack"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1148
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lo/zJ;->c(Lcom/netflix/mediaclient/media/AudioSource;)Z

    :cond_1
    return-void
.end method

.method public final setCurrentPlayPositionMs(J)V
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->t:J

    return-void
.end method

.method public setCurrentPlayableId(J)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->e:J

    return-void
.end method

.method public setErrorListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ag:Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    return-void
.end method

.method public final setExperience(Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    return-void
.end method

.method public final setForceStreamingEnabled(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->m:Z

    return-void
.end method

.method public setInitialPlayableId(J)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b:J

    return-void
.end method

.method public setLanguage(Lcom/netflix/mediaclient/media/Language;)V
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/zJ;->d(Lcom/netflix/mediaclient/media/Language;)V

    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1831
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 1829
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->a:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    goto :goto_0

    .line 1828
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->d:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    goto :goto_0

    .line 1827
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    .line 1826
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setScaleType(Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1835
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->W:F

    .line 1836
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->requestLayout()V

    return-void
.end method

.method public final setPlayContext(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 2

    .line 221
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->af:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {v0, v1, p1}, Lo/zJ;->e(Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :cond_0
    return-void
.end method

.method public setPlayProgressListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ae:Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;

    return-void
.end method

.method public final setPlaybackBackgroundable(Z)V
    .locals 0

    .line 1217
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->r:Z

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-interface {v0, p1}, Lo/zJ;->b(F)V

    :cond_0
    return-void
.end method

.method public final setPlayerBackgroundedStatus(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->q:Z

    return-void
.end method

.method public final setPlayerId(J)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->h:J

    return-void
.end method

.method public setPlayerStatusChangeListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ak:Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    return-void
.end method

.method public final setPreferredLanguage(Lcom/netflix/mediaclient/media/PreferredLanguageData;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->l:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    return-void
.end method

.method public final setPrimarySurface$NetflixApp_release(Lcom/netflix/mediaclient/media/PlayerManifestData;)V
    .locals 2

    if-eqz p1, :cond_5

    .line 472
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->isAV1Profile()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->k:Lo/Ya;

    if-eq p1, v0, :cond_5

    if-eqz v0, :cond_5

    .line 473
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    .line 474
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    const-string v0, "Required value was null."

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lo/Ya;->b()Landroid/view/View;

    move-result-object p1

    const-string v1, "requireNotNull(surface).view"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lo/Ya;->b()Landroid/view/View;

    move-result-object p1

    const-string v1, "requireNotNull(primarySurface).view"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    .line 479
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    if-eqz v0, :cond_0

    check-cast v0, Lo/XH;

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lo/zJ;Lo/XH;)V

    .line 481
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Y()V

    .line 482
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 479
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.videoview.AV1SurfaceViewWrapper"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 478
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 484
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 475
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 474
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 486
    :cond_5
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u:Lo/Ya;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    :goto_1
    return-void
.end method

.method public final setRepeatMode(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->n:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x3

    .line 1841
    iput v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->V:I

    .line 1842
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->W:F

    .line 1843
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setScaleX(F)V

    .line 1844
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setScaleY(F)V

    .line 1845
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->requestLayout()V

    goto :goto_0

    .line 1847
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    :goto_0
    return-void
.end method

.method public final setScaleType(Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;)V
    .locals 2

    const-string v0, "scaleType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->A:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    .line 169
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lo/Ya;->e(Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;)V

    :cond_0
    const/4 v1, 0x1

    .line 170
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->C:Z

    if-eq v0, p1, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->au()V

    :cond_1
    return-void
.end method

.method public final setScreenBrightnessIfNeeded()V
    .locals 2

    .line 1801
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    instance-of v0, v0, Lo/zw;

    if-eqz v0, :cond_0

    .line 1802
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 1803
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(F)V

    :cond_0
    return-void
.end method

.method public final setScreenBrightnessValue(F)V
    .locals 2

    .line 1786
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ay:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1787
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x:F

    .line 1789
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "playback_brightness_preference"

    .line 1788
    invoke-static {v0, v1, p1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;F)V

    .line 1793
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(F)V

    :cond_0
    return-void
.end method

.method public final setStartPlay(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->U:Z

    return-void
.end method

.method public final setSubtitleDisplayArea(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "display"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 994
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->y:Z

    if-eqz v0, :cond_0

    .line 995
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->D:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Y()V

    .line 1000
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->F:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1006
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->D:Landroid/view/ViewGroup;

    .line 1007
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->D:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1008
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->D:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 1009
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    :cond_3
    return-void
.end method

.method public setSubtitleTrack(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V
    .locals 2

    if-nez p1, :cond_1

    .line 1155
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/zJ;->b(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V

    :cond_0
    const/4 p1, 0x0

    .line 1158
    check-cast p1, Lo/UD;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    return-void

    .line 1161
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aq()V

    .line 1162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->au:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1164
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setSubtitleVisibility(Z)V

    .line 1165
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Y()V

    .line 1166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lo/zJ;->b(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V

    .line 1167
    :cond_2
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ah:Z

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setSubtitleVisibility(Z)V

    .line 1169
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ai()V

    return-void
.end method

.method public final setSubtitleVisibility(Z)V
    .locals 2

    .line 1194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->i()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->a:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    if-ne v0, v1, :cond_0

    .line 1195
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->J:Lo/UD;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1208
    :cond_1
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ah:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 2

    .line 927
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->R:I

    .line 928
    iget v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Q:I

    .line 930
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->R:I

    .line 931
    iput p2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Q:I

    if-ne v0, p1, :cond_0

    if-eq v1, p2, :cond_1

    .line 934
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->au()V

    :cond_1
    return-void
.end method

.method public setVideoSizeChangedListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$Activity;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ai:Lcom/netflix/mediaclient/servicemgr/IPlayer$Activity;

    return-void
.end method

.method public setViewInFocus(Z)V
    .locals 1

    .line 355
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1095
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P:F

    .line 1096
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-nez v0, :cond_0

    return-void

    .line 1099
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ay:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->p:Lo/Ts;

    invoke-virtual {v0}, Lo/Ts;->e()Z

    .line 1102
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lo/zJ;->e(F)V

    .line 1105
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->I:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->i()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->e:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->m()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lo/zJ;->l()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lo/zJ;->l()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isForcedNarrativeOrNone()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1106
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    invoke-static {p1, v0}, Lo/aex;->a(Landroid/content/Context;Lo/zJ;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "it"

    .line 1107
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V

    :cond_5
    return-void
.end method

.method public setZoom(Z)V
    .locals 4

    .line 1173
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    .line 1174
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1175
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    sget-object v2, Lo/eZ;->a:Lo/eZ$ActionBar;

    invoke-virtual {v2}, Lo/eZ$ActionBar;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 1176
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->at()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1178
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1181
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1183
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 1185
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->d:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setScaleType(Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;)V

    return-void

    .line 1173
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final t()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->j:J

    return-wide v0
.end method

.method protected final u()Lo/Ya;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B:Lo/Ya;

    return-object v0
.end method

.method protected final v()Lo/zJ;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    return-object v0
.end method

.method public w()Lcom/netflix/mediaclient/media/Language;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zJ;->o()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final x()J
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->G:Lo/zJ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zJ;->e()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final y()Landroid/view/ViewGroup;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->D:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->D:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final z()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->E:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    return-object v0
.end method
