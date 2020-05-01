.class public Lo/CameraDeviceImpl$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field private A:I

.field private B:Lo/PackageUserState;

.field private C:Z

.field private final D:Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;

.field private a:Lo/SensorEventCallback$Application;

.field private final b:Landroid/content/Context;

.field private c:Lo/SensorEventListener;

.field private d:Landroid/graphics/Bitmap$Config;

.field private e:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Lo/SystemSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/SyntheticKey;

.field private g:Lo/SerialPort;

.field private h:Lo/CaptureRequest;

.field private i:Z

.field private j:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Lo/SystemSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lo/PackageBackwardCompatibility;

.field private l:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Integer;

.field private n:Lo/NanoAppInstanceInfo;

.field private o:Lo/RuntimePermissionPresenter;

.field private p:Lo/MarshalQueryableStreamConfiguration;

.field private q:Lo/Camera;

.field private r:Ljava/lang/Integer;

.field private s:Lo/CameraDeviceState;

.field private t:Lo/HdmiRecordListener;

.field private u:Lo/PublicKey;

.field private v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/PerfMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lo/PackageBackwardCompatibility;

.field private x:Lo/CaptureFailure;

.field private y:Z

.field private z:Lo/GetCommand;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 440
    iput-boolean v0, p0, Lo/CameraDeviceImpl$ActionBar;->i:Z

    const/4 v0, 0x0

    .line 446
    iput-object v0, p0, Lo/CameraDeviceImpl$ActionBar;->m:Ljava/lang/Integer;

    .line 450
    iput-object v0, p0, Lo/CameraDeviceImpl$ActionBar;->r:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 456
    iput-boolean v0, p0, Lo/CameraDeviceImpl$ActionBar;->y:Z

    const/4 v1, -0x1

    .line 460
    iput v1, p0, Lo/CameraDeviceImpl$ActionBar;->A:I

    .line 461
    new-instance v1, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;

    invoke-direct {v1, p0}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;-><init>(Lo/CameraDeviceImpl$ActionBar;)V

    iput-object v1, p0, Lo/CameraDeviceImpl$ActionBar;->D:Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;

    .line 463
    iput-boolean v0, p0, Lo/CameraDeviceImpl$ActionBar;->C:Z

    .line 465
    new-instance v0, Lo/BurstHolder;

    invoke-direct {v0}, Lo/BurstHolder;-><init>()V

    iput-object v0, p0, Lo/CameraDeviceImpl$ActionBar;->z:Lo/GetCommand;

    .line 470
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lo/CameraDeviceImpl$ActionBar;->b:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lo/CameraDeviceImpl$5;)V
    .locals 0

    .line 433
    invoke-direct {p0, p1}, Lo/CameraDeviceImpl$ActionBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lo/CameraDeviceImpl$ActionBar;)Lo/NanoAppInstanceInfo;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->n:Lo/NanoAppInstanceInfo;

    return-object p0
.end method

.method static synthetic B(Lo/CameraDeviceImpl$ActionBar;)Ljava/lang/Integer;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->r:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic C(Lo/CameraDeviceImpl$ActionBar;)Lo/GetCommand;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->z:Lo/GetCommand;

    return-object p0
.end method

.method static synthetic D(Lo/CameraDeviceImpl$ActionBar;)Lo/PackageUserState;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->B:Lo/PackageUserState;

    return-object p0
.end method

.method static synthetic a(Lo/CameraDeviceImpl$ActionBar;)Lo/SensorEventCallback$Application;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->a:Lo/SensorEventCallback$Application;

    return-object p0
.end method

.method static synthetic b(Lo/CameraDeviceImpl$ActionBar;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->d:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static synthetic c(Lo/CameraDeviceImpl$ActionBar;)Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->D:Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;

    return-object p0
.end method

.method static synthetic d(Lo/CameraDeviceImpl$ActionBar;)Landroid/content/Context;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lo/CameraDeviceImpl$ActionBar;)Lo/UserInfo;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->e:Lo/UserInfo;

    return-object p0
.end method

.method static synthetic f(Lo/CameraDeviceImpl$ActionBar;)Lo/CaptureFailure;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->x:Lo/CaptureFailure;

    return-object p0
.end method

.method static synthetic g(Lo/CameraDeviceImpl$ActionBar;)Lo/SensorEventListener;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->c:Lo/SensorEventListener;

    return-object p0
.end method

.method static synthetic h(Lo/CameraDeviceImpl$ActionBar;)Z
    .locals 0

    .line 433
    iget-boolean p0, p0, Lo/CameraDeviceImpl$ActionBar;->i:Z

    return p0
.end method

.method static synthetic i(Lo/CameraDeviceImpl$ActionBar;)Lo/UserInfo;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->j:Lo/UserInfo;

    return-object p0
.end method

.method static synthetic j(Lo/CameraDeviceImpl$ActionBar;)Lo/SerialPort;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->g:Lo/SerialPort;

    return-object p0
.end method

.method static synthetic k(Lo/CameraDeviceImpl$ActionBar;)Lo/RuntimePermissionPresenter;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->o:Lo/RuntimePermissionPresenter;

    return-object p0
.end method

.method static synthetic l(Lo/CameraDeviceImpl$ActionBar;)Lo/SyntheticKey;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->f:Lo/SyntheticKey;

    return-object p0
.end method

.method static synthetic m(Lo/CameraDeviceImpl$ActionBar;)Ljava/lang/Integer;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->m:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic n(Lo/CameraDeviceImpl$ActionBar;)Lo/UserInfo;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->l:Lo/UserInfo;

    return-object p0
.end method

.method static synthetic o(Lo/CameraDeviceImpl$ActionBar;)Lo/PackageBackwardCompatibility;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->k:Lo/PackageBackwardCompatibility;

    return-object p0
.end method

.method static synthetic p(Lo/CameraDeviceImpl$ActionBar;)Lo/Camera;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->q:Lo/Camera;

    return-object p0
.end method

.method static synthetic q(Lo/CameraDeviceImpl$ActionBar;)I
    .locals 0

    .line 433
    iget p0, p0, Lo/CameraDeviceImpl$ActionBar;->A:I

    return p0
.end method

.method static synthetic r(Lo/CameraDeviceImpl$ActionBar;)Lo/CameraDeviceState;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->s:Lo/CameraDeviceState;

    return-object p0
.end method

.method static synthetic s(Lo/CameraDeviceImpl$ActionBar;)Lo/MarshalQueryableStreamConfiguration;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->p:Lo/MarshalQueryableStreamConfiguration;

    return-object p0
.end method

.method static synthetic t(Lo/CameraDeviceImpl$ActionBar;)Lo/HdmiRecordListener;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->t:Lo/HdmiRecordListener;

    return-object p0
.end method

.method static synthetic u(Lo/CameraDeviceImpl$ActionBar;)Lo/PackageBackwardCompatibility;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->w:Lo/PackageBackwardCompatibility;

    return-object p0
.end method

.method static synthetic v(Lo/CameraDeviceImpl$ActionBar;)Ljava/util/Set;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->v:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic w(Lo/CameraDeviceImpl$ActionBar;)Lo/PublicKey;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->u:Lo/PublicKey;

    return-object p0
.end method

.method static synthetic x(Lo/CameraDeviceImpl$ActionBar;)Z
    .locals 0

    .line 433
    iget-boolean p0, p0, Lo/CameraDeviceImpl$ActionBar;->y:Z

    return p0
.end method

.method static synthetic y(Lo/CameraDeviceImpl$ActionBar;)Lo/CaptureRequest;
    .locals 0

    .line 433
    iget-object p0, p0, Lo/CameraDeviceImpl$ActionBar;->h:Lo/CaptureRequest;

    return-object p0
.end method

.method static synthetic z(Lo/CameraDeviceImpl$ActionBar;)Z
    .locals 0

    .line 433
    iget-boolean p0, p0, Lo/CameraDeviceImpl$ActionBar;->C:Z

    return p0
.end method


# virtual methods
.method public a(Lo/PackageBackwardCompatibility;)Lo/CameraDeviceImpl$ActionBar;
    .locals 0

    .line 568
    iput-object p1, p0, Lo/CameraDeviceImpl$ActionBar;->k:Lo/PackageBackwardCompatibility;

    return-object p0
.end method

.method public a(Lo/SensorEventListener;)Lo/CameraDeviceImpl$ActionBar;
    .locals 0

    .line 492
    iput-object p1, p0, Lo/CameraDeviceImpl$ActionBar;->c:Lo/SensorEventListener;

    return-object p0
.end method

.method public a(Lo/UserInfo;)Lo/CameraDeviceImpl$ActionBar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UserInfo<",
            "Lo/SystemSensorManager;",
            ">;)",
            "Lo/CameraDeviceImpl$ActionBar;"
        }
    .end annotation

    .line 481
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/UserInfo;

    iput-object p1, p0, Lo/CameraDeviceImpl$ActionBar;->e:Lo/UserInfo;

    return-object p0
.end method

.method public b(Landroid/graphics/Bitmap$Config;)Lo/CameraDeviceImpl$ActionBar;
    .locals 0

    .line 474
    iput-object p1, p0, Lo/CameraDeviceImpl$ActionBar;->d:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public b(Lo/HdmiRecordListener;)Lo/CameraDeviceImpl$ActionBar;
    .locals 0

    .line 589
    iput-object p1, p0, Lo/CameraDeviceImpl$ActionBar;->t:Lo/HdmiRecordListener;

    return-object p0
.end method

.method public b(Lo/RuntimePermissionPresenter;)Lo/CameraDeviceImpl$ActionBar;
    .locals 0

    .line 573
    iput-object p1, p0, Lo/CameraDeviceImpl$ActionBar;->o:Lo/RuntimePermissionPresenter;

    return-object p0
.end method

.method public c()Lo/CameraDeviceImpl;
    .locals 2

    .line 644
    new-instance v0, Lo/CameraDeviceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/CameraDeviceImpl;-><init>(Lo/CameraDeviceImpl$ActionBar;Lo/CameraDeviceImpl$5;)V

    return-object v0
.end method
