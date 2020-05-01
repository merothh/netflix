.class public final Lo/WifiBatteryStats;
.super Lcom/netflix/binder/generated/BinderSingletonComponent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WifiBatteryStats$ActionBar;,
        Lo/WifiBatteryStats$Activity;,
        Lo/WifiBatteryStats$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

.field private final b:Lcom/netflix/binder/generated/BinderApplicationModule;

.field private c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;

.field private final e:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/OffHostApduService;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/Rv;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/ZygoteProcess$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/aa;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/ai;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/bJ;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/bD;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/ViewSwitcher;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Lcom/netflix/binder/generated/BinderApplicationModule;)V
    .locals 0

    .line 382
    invoke-direct {p0}, Lcom/netflix/binder/generated/BinderSingletonComponent;-><init>()V

    .line 383
    iput-object p4, p0, Lo/WifiBatteryStats;->b:Lcom/netflix/binder/generated/BinderApplicationModule;

    .line 384
    iput-object p2, p0, Lo/WifiBatteryStats;->d:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;

    .line 385
    iput-object p1, p0, Lo/WifiBatteryStats;->a:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

    .line 386
    iput-object p3, p0, Lo/WifiBatteryStats;->e:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;

    .line 387
    invoke-direct {p0, p1, p2, p3, p4}, Lo/WifiBatteryStats;->b(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Lcom/netflix/binder/generated/BinderApplicationModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Lcom/netflix/binder/generated/BinderApplicationModule;Lo/WifiBatteryStats$5;)V
    .locals 0

    .line 342
    invoke-direct {p0, p1, p2, p3, p4}, Lo/WifiBatteryStats;-><init>(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Lcom/netflix/binder/generated/BinderApplicationModule;)V

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/NetflixApp;)Lcom/netflix/mediaclient/NetflixApp;
    .locals 1

    .line 519
    new-instance v0, Lo/agb;

    invoke-direct {v0}, Lo/agb;-><init>()V

    invoke-static {p1, v0}, Lo/DreamService;->b(Lcom/netflix/mediaclient/NetflixApp;Lo/agc;)V

    return-object p1
.end method

.method static synthetic a(Lo/WifiBatteryStats;)Lo/ViewSwitcher;
    .locals 0

    .line 342
    invoke-direct {p0}, Lo/WifiBatteryStats;->u()Lo/ViewSwitcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;
    .locals 0

    .line 342
    invoke-direct {p0}, Lo/WifiBatteryStats;->w()Lo/StrikethroughSpan;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Lcom/netflix/binder/generated/BinderApplicationModule;)V
    .locals 1

    .line 421
    invoke-static {p4}, Lo/HealthKeys;->e(Lcom/netflix/binder/generated/BinderApplicationModule;)Lo/HealthKeys;

    move-result-object p1

    iput-object p1, p0, Lo/WifiBatteryStats;->c:Ljavax/inject/Provider;

    .line 422
    invoke-static {}, Lo/IsoDep;->e()Lo/IsoDep;

    move-result-object p1

    invoke-static {p1}, Lo/ajV;->d(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lo/WifiBatteryStats;->g:Ljavax/inject/Provider;

    .line 423
    iget-object p1, p0, Lo/WifiBatteryStats;->c:Ljavax/inject/Provider;

    invoke-static {}, Lo/GE;->a()Lo/GE;

    move-result-object p4

    iget-object v0, p0, Lo/WifiBatteryStats;->g:Ljavax/inject/Provider;

    invoke-static {p1, p4, v0}, Lo/NfcFCardEmulation;->e(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lo/NfcFCardEmulation;

    move-result-object p1

    invoke-static {p1}, Lo/ajV;->d(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lo/WifiBatteryStats;->f:Ljavax/inject/Provider;

    .line 424
    invoke-static {}, Lo/TimePicker;->a()Lo/TimePicker;

    move-result-object p1

    invoke-static {p1}, Lo/ZoomButton;->e(Ljavax/inject/Provider;)Lo/ZoomButton;

    move-result-object p1

    invoke-static {p1}, Lo/ajV;->d(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lo/WifiBatteryStats;->j:Ljavax/inject/Provider;

    .line 425
    iget-object p1, p0, Lo/WifiBatteryStats;->c:Ljavax/inject/Provider;

    iget-object p4, p0, Lo/WifiBatteryStats;->f:Ljavax/inject/Provider;

    invoke-static {p1, p4}, Lo/Ru;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lo/Ru;

    move-result-object p1

    invoke-static {p1}, Lo/ajV;->d(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lo/WifiBatteryStats;->i:Ljavax/inject/Provider;

    .line 426
    iget-object p1, p0, Lo/WifiBatteryStats;->c:Ljavax/inject/Provider;

    iget-object p4, p0, Lo/WifiBatteryStats;->f:Ljavax/inject/Provider;

    invoke-static {p1, p4}, Lo/RO;->b(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lo/RO;

    move-result-object p1

    invoke-static {p1}, Lo/ajV;->d(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lo/WifiBatteryStats;->h:Ljavax/inject/Provider;

    .line 427
    invoke-static {}, Lo/ad;->e()Lo/ad;

    move-result-object p1

    invoke-static {p1}, Lo/ajV;->d(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lo/WifiBatteryStats;->l:Ljavax/inject/Provider;

    .line 428
    invoke-static {}, Lo/af;->d()Lo/af;

    move-result-object p1

    invoke-static {p1}, Lo/ajV;->d(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lo/WifiBatteryStats;->m:Ljavax/inject/Provider;

    .line 429
    invoke-static {}, Lo/bK;->c()Lo/bK;

    move-result-object p1

    invoke-static {p1}, Lo/ajV;->d(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lo/WifiBatteryStats;->n:Ljavax/inject/Provider;

    .line 430
    invoke-static {}, Lo/bF;->e()Lo/bF;

    move-result-object p1

    invoke-static {p1}, Lo/ajV;->d(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lo/WifiBatteryStats;->o:Ljavax/inject/Provider;

    .line 431
    new-instance p1, Lo/WifiBatteryStats$5;

    invoke-direct {p1, p0}, Lo/WifiBatteryStats$5;-><init>(Lo/WifiBatteryStats;)V

    iput-object p1, p0, Lo/WifiBatteryStats;->k:Ljavax/inject/Provider;

    .line 436
    iget-object p1, p0, Lo/WifiBatteryStats;->j:Ljavax/inject/Provider;

    invoke-static {p2, p1}, Lo/f;->d(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Ljavax/inject/Provider;)Lo/f;

    move-result-object p1

    iput-object p1, p0, Lo/WifiBatteryStats;->s:Ljavax/inject/Provider;

    .line 437
    iget-object p1, p0, Lo/WifiBatteryStats;->s:Ljavax/inject/Provider;

    iget-object p2, p0, Lo/WifiBatteryStats;->c:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lo/e;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lo/e;

    move-result-object p1

    iput-object p1, p0, Lo/WifiBatteryStats;->t:Ljavax/inject/Provider;

    .line 438
    iget-object p1, p0, Lo/WifiBatteryStats;->t:Ljavax/inject/Provider;

    invoke-static {p3, p1}, Lo/i;->c(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Ljavax/inject/Provider;)Lo/i;

    move-result-object p1

    iput-object p1, p0, Lo/WifiBatteryStats;->r:Ljavax/inject/Provider;

    return-void
.end method

.method static synthetic c(Lo/WifiBatteryStats;)Lcom/netflix/binder/generated/BinderApplicationModule;
    .locals 0

    .line 342
    iget-object p0, p0, Lo/WifiBatteryStats;->b:Lcom/netflix/binder/generated/BinderApplicationModule;

    return-object p0
.end method

.method static synthetic d(Lo/WifiBatteryStats;)Lo/EntityConfidence;
    .locals 0

    .line 342
    invoke-direct {p0}, Lo/WifiBatteryStats;->y()Lo/EntityConfidence;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lo/WifiBatteryStats$TaskDescription;
    .locals 2

    .line 391
    new-instance v0, Lo/WifiBatteryStats$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/WifiBatteryStats$TaskDescription;-><init>(Lo/WifiBatteryStats$5;)V

    return-object v0
.end method

.method static synthetic e(Lo/WifiBatteryStats;)Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;
    .locals 0

    .line 342
    iget-object p0, p0, Lo/WifiBatteryStats;->a:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

    return-object p0
.end method

.method static synthetic h(Lo/WifiBatteryStats;)Ljavax/inject/Provider;
    .locals 0

    .line 342
    iget-object p0, p0, Lo/WifiBatteryStats;->r:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic j(Lo/WifiBatteryStats;)Ljava/lang/String;
    .locals 0

    .line 342
    invoke-direct {p0}, Lo/WifiBatteryStats;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private r()Lo/Jq;
    .locals 3

    .line 398
    new-instance v0, Lo/Jq;

    iget-object v1, p0, Lo/WifiBatteryStats;->b:Lcom/netflix/binder/generated/BinderApplicationModule;

    invoke-static {v1}, Lo/HealthKeys;->d(Lcom/netflix/binder/generated/BinderApplicationModule;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lo/ThemedSpinnerAdapter;

    invoke-direct {v2}, Lo/ThemedSpinnerAdapter;-><init>()V

    invoke-direct {v0, v1, v2}, Lo/Jq;-><init>(Landroid/content/Context;Lo/TimePickerClockDelegate;)V

    return-object v0
.end method

.method private t()Lo/ApduServiceInfo;
    .locals 2

    .line 395
    new-instance v0, Lo/ApduServiceInfo;

    iget-object v1, p0, Lo/WifiBatteryStats;->b:Lcom/netflix/binder/generated/BinderApplicationModule;

    invoke-static {v1}, Lo/HealthKeys;->d(Lcom/netflix/binder/generated/BinderApplicationModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ApduServiceInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private u()Lo/ViewSwitcher;
    .locals 2

    .line 404
    iget-object v0, p0, Lo/WifiBatteryStats;->e:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;

    iget-object v1, p0, Lo/WifiBatteryStats;->t:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lo/i;->e(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Ljavax/inject/Provider;)Lo/ViewSwitcher;

    move-result-object v0

    return-object v0
.end method

.method private v()Ljava/lang/String;
    .locals 2

    .line 414
    iget-object v0, p0, Lo/WifiBatteryStats;->a:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

    iget-object v1, p0, Lo/WifiBatteryStats;->b:Lcom/netflix/binder/generated/BinderApplicationModule;

    invoke-static {v1}, Lo/HealthKeys;->d(Lcom/netflix/binder/generated/BinderApplicationModule;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lo/CircularPropagation;->d(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private w()Lo/StrikethroughSpan;
    .locals 2

    .line 411
    new-instance v0, Lo/StrikethroughSpan;

    invoke-direct {p0}, Lo/WifiBatteryStats;->x()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/StrikethroughSpan;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private x()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lo/Enum;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lo/Enum;",
            ">;>;"
        }
    .end annotation

    const/16 v0, 0x19

    .line 408
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/Singleton;

    invoke-static {}, Lo/RecurrenceRule;->b()Lo/RecurrenceRule;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/DisplayInfo;

    invoke-static {}, Lo/FrameMetrics;->b()Lo/FrameMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/MutableInt;

    invoke-static {}, Lo/MutableByte;->a()Lo/MutableByte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/MutableShort;

    invoke-static {}, Lo/NoSuchPropertyException;->d()Lo/NoSuchPropertyException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/DisplayAdjustments;

    invoke-static {}, Lo/CollapsibleActionView;->c()Lo/CollapsibleActionView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/AndroidException;

    invoke-static {}, Lo/TransitionValuesMaps;->e()Lo/TransitionValuesMaps;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/AccessibilityWindowInfo;

    invoke-static {}, Lo/AccessibilityCache;->e()Lo/AccessibilityCache;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/VerbatimX509Certificate;

    invoke-static {}, Lo/DataSource;->a()Lo/DataSource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/DisplayMetrics;

    invoke-static {}, Lo/ExceptionUtils;->c()Lo/ExceptionUtils;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/ZipUtils;

    invoke-static {}, Lo/StrictJarFile;->c()Lo/StrictJarFile;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/MalformedJsonException;

    invoke-static {}, Lo/MapCollections;->c()Lo/MapCollections;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/Interpolator;

    invoke-static {}, Lo/DecelerateInterpolator;->e()Lo/DecelerateInterpolator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/ViewPropertyAnimatorRT;

    invoke-static {}, Lo/WindowCallbackWrapper;->d()Lo/WindowCallbackWrapper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/InputEventConsistencyVerifier;

    invoke-static {}, Lo/InputDevice;->c()Lo/InputDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/SurfaceSession;

    invoke-static {}, Lo/SurfaceControl;->a()Lo/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/Recolor;

    invoke-static {}, Lo/PathMotion;->e()Lo/PathMotion;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/AccelerateInterpolator;

    invoke-static {}, Lo/CaptioningManager;->b()Lo/CaptioningManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/Spline;

    invoke-static {}, Lo/TimeUtils;->e()Lo/TimeUtils;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/Pools;

    invoke-static {}, Lo/Printer;->a()Lo/Printer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/JsonToken;

    invoke-static {}, Lo/JsonReader;->c()Lo/JsonReader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/ApkSignatureSchemeV2Verifier;

    invoke-static {}, Lo/ApkSignatureVerifier;->d()Lo/ApkSignatureVerifier;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/SpellCheckerSession;

    invoke-static {}, Lo/CacheManager;->b()Lo/CacheManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/ProtoOutputStream;

    invoke-static {}, Lo/AccessibilityInteractionController;->e()Lo/AccessibilityInteractionController;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/ByteStringUtils;

    invoke-static {}, Lo/Base64InputStream;->a()Lo/Base64InputStream;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lo/TransitionPropagation;

    invoke-static {}, Lo/TransitionValues;->b()Lo/TransitionValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private y()Lo/EntityConfidence;
    .locals 2

    .line 401
    iget-object v0, p0, Lo/WifiBatteryStats;->a:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

    iget-object v1, p0, Lo/WifiBatteryStats;->b:Lcom/netflix/binder/generated/BinderApplicationModule;

    invoke-static {v1}, Lo/HealthKeys;->d(Lcom/netflix/binder/generated/BinderApplicationModule;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChangeImageTransform;->b(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;Landroid/content/Context;)Lo/EntityConfidence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/netflix/android/imageloader/api/BlurProcessor;
    .locals 1

    .line 443
    invoke-direct {p0}, Lo/WifiBatteryStats;->t()Lo/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "Lo/ZygoteProcess$ActionBar;",
            ">;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lo/WifiBatteryStats;->k:Ljavax/inject/Provider;

    return-object v0
.end method

.method public c()Lo/FormatException;
    .locals 1

    .line 447
    iget-object v0, p0, Lo/WifiBatteryStats;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FormatException;

    return-object v0
.end method

.method public c(Lcom/netflix/mediaclient/NetflixApp;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lo/WifiBatteryStats;->a(Lcom/netflix/mediaclient/NetflixApp;)Lcom/netflix/mediaclient/NetflixApp;

    return-void
.end method

.method public e()Lo/ErrorCodes;
    .locals 1

    .line 451
    iget-object v0, p0, Lo/WifiBatteryStats;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ErrorCodes;

    return-object v0
.end method

.method public f()Lo/Rv;
    .locals 1

    .line 471
    iget-object v0, p0, Lo/WifiBatteryStats;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Rv;

    return-object v0
.end method

.method public g()Lo/Jp;
    .locals 4

    .line 455
    new-instance v0, Lo/Jp;

    iget-object v1, p0, Lo/WifiBatteryStats;->b:Lcom/netflix/binder/generated/BinderApplicationModule;

    invoke-static {v1}, Lo/HealthKeys;->d(Lcom/netflix/binder/generated/BinderApplicationModule;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lo/agd;

    invoke-direct {v2}, Lo/agd;-><init>()V

    invoke-direct {p0}, Lo/WifiBatteryStats;->r()Lo/Jq;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/Jp;-><init>(Landroid/content/Context;Lo/aga;Lo/Jq;)V

    return-object v0
.end method

.method public h()Lo/afZ;
    .locals 1

    .line 467
    new-instance v0, Lo/age;

    invoke-direct {v0}, Lo/age;-><init>()V

    return-object v0
.end method

.method public i()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/BD;",
            ">;"
        }
    .end annotation

    .line 463
    new-instance v0, Lo/aeZ;

    invoke-direct {v0}, Lo/aeZ;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;
    .locals 2

    .line 459
    iget-object v0, p0, Lo/WifiBatteryStats;->d:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;

    iget-object v1, p0, Lo/WifiBatteryStats;->j:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lo/f;->e(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Ljavax/inject/Provider;)Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    move-result-object v0

    return-object v0
.end method

.method public k()Lo/ab;
    .locals 1

    .line 483
    iget-object v0, p0, Lo/WifiBatteryStats;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ab;

    return-object v0
.end method

.method public l()Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;
    .locals 1

    .line 475
    iget-object v0, p0, Lo/WifiBatteryStats;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    return-object v0
.end method

.method public m()Lo/bH;
    .locals 1

    .line 495
    iget-object v0, p0, Lo/WifiBatteryStats;->n:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bH;

    return-object v0
.end method

.method public n()Lo/agc;
    .locals 1

    .line 487
    new-instance v0, Lo/agb;

    invoke-direct {v0}, Lo/agb;-><init>()V

    return-object v0
.end method

.method public o()Lo/WebViewProviderInfo;
    .locals 1

    .line 491
    new-instance v0, Lo/WebViewZygote;

    invoke-direct {v0}, Lo/WebViewZygote;-><init>()V

    return-object v0
.end method

.method public p()Lo/AbsSeekBar;
    .locals 1

    .line 503
    new-instance v0, Lo/AbsSeekBar;

    invoke-direct {v0}, Lo/AbsSeekBar;-><init>()V

    return-object v0
.end method

.method public q()Lo/bw;
    .locals 1

    .line 507
    iget-object v0, p0, Lo/WifiBatteryStats;->o:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bw;

    return-object v0
.end method

.method public s()Lo/Ze;
    .locals 1

    .line 499
    new-instance v0, Lo/Zl;

    invoke-direct {v0}, Lo/Zl;-><init>()V

    return-object v0
.end method
