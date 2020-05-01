.class public Lo/CameraDeviceImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CameraDeviceImpl$ActionBar;,
        Lo/CameraDeviceImpl$TaskDescription;
    }
.end annotation


# static fields
.field private static G:Lo/CameraDeviceImpl$TaskDescription;


# instance fields
.field private final A:Lo/GetCommand;

.field private final B:Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

.field private final C:Lo/PackageUserState;

.field private final D:Z

.field private final a:Lo/SensorEventCallback$Application;

.field private final b:Landroid/graphics/Bitmap$Config;

.field private final c:Landroid/content/Context;

.field private final d:Lo/SensorEventListener;

.field private final e:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Lo/SystemSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:Lo/CaptureRequest;

.field private final h:Lo/SerialPort;

.field private final i:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Lo/SystemSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/CaptureFailure;

.field private final k:Lo/SyntheticKey;

.field private final l:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lo/NanoAppInstanceInfo;

.field private final n:Lo/PackageBackwardCompatibility;

.field private final o:Ljava/lang/Integer;

.field private final p:I

.field private final q:I

.field private final r:Lo/Camera;

.field private final s:Lo/RuntimePermissionPresenter;

.field private final t:Lo/HdmiRecordListener;

.field private final u:Lo/CameraDeviceState;

.field private final v:Lo/MarshalQueryableStreamConfiguration;

.field private final w:Z

.field private final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/PerfMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lo/PackageBackwardCompatibility;

.field private final z:Lo/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 104
    new-instance v0, Lo/CameraDeviceImpl$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/CameraDeviceImpl$TaskDescription;-><init>(Lo/CameraDeviceImpl$5;)V

    sput-object v0, Lo/CameraDeviceImpl;->G:Lo/CameraDeviceImpl$TaskDescription;

    return-void
.end method

.method private constructor <init>(Lo/CameraDeviceImpl$ActionBar;)V
    .locals 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipelineConfig()"

    .line 108
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->c(Lo/CameraDeviceImpl$ActionBar;)Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->a()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lo/CameraDeviceImpl;->B:Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    .line 113
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->e(Lo/CameraDeviceImpl$ActionBar;)Lo/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lo/SensorEvent;

    .line 115
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->d(Lo/CameraDeviceImpl$ActionBar;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-direct {v0, v1}, Lo/SensorEvent;-><init>(Landroid/app/ActivityManager;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->e(Lo/CameraDeviceImpl$ActionBar;)Lo/UserInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/CameraDeviceImpl;->e:Lo/UserInfo;

    .line 118
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->a(Lo/CameraDeviceImpl$ActionBar;)Lo/SensorEventCallback$Application;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lo/HardwareBuffer;

    invoke-direct {v0}, Lo/HardwareBuffer;-><init>()V

    goto :goto_1

    .line 120
    :cond_2
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->a(Lo/CameraDeviceImpl$ActionBar;)Lo/SensorEventCallback$Application;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo/CameraDeviceImpl;->a:Lo/SensorEventCallback$Application;

    .line 121
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->b(Lo/CameraDeviceImpl$ActionBar;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->b(Lo/CameraDeviceImpl$ActionBar;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lo/CameraDeviceImpl;->b:Landroid/graphics/Bitmap$Config;

    .line 123
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->g(Lo/CameraDeviceImpl$ActionBar;)Lo/SensorEventListener;

    move-result-object v0

    if-nez v0, :cond_4

    .line 124
    invoke-static {}, Lo/SensorAdditionalInfo;->a()Lo/SensorAdditionalInfo;

    move-result-object v0

    goto :goto_3

    .line 125
    :cond_4
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->g(Lo/CameraDeviceImpl$ActionBar;)Lo/SensorEventListener;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lo/CameraDeviceImpl;->d:Lo/SensorEventListener;

    .line 126
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->d(Lo/CameraDeviceImpl$ActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lo/CameraDeviceImpl;->c:Landroid/content/Context;

    .line 128
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->f(Lo/CameraDeviceImpl$ActionBar;)Lo/CaptureFailure;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lo/CameraCharacteristics;

    new-instance v1, Lo/TotalCaptureResult;

    invoke-direct {v1}, Lo/TotalCaptureResult;-><init>()V

    invoke-direct {v0, v1}, Lo/CameraCharacteristics;-><init>(Lo/CaptureResult;)V

    goto :goto_4

    .line 130
    :cond_5
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->f(Lo/CameraDeviceImpl$ActionBar;)Lo/CaptureFailure;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lo/CameraDeviceImpl;->j:Lo/CaptureFailure;

    .line 131
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->h(Lo/CameraDeviceImpl$ActionBar;)Z

    move-result v0

    iput-boolean v0, p0, Lo/CameraDeviceImpl;->f:Z

    .line 133
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->i(Lo/CameraDeviceImpl$ActionBar;)Lo/UserInfo;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lo/SerialManager;

    invoke-direct {v0}, Lo/SerialManager;-><init>()V

    goto :goto_5

    .line 135
    :cond_6
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->i(Lo/CameraDeviceImpl$ActionBar;)Lo/UserInfo;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lo/CameraDeviceImpl;->i:Lo/UserInfo;

    .line 137
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->j(Lo/CameraDeviceImpl$ActionBar;)Lo/SerialPort;

    move-result-object v0

    if-nez v0, :cond_7

    .line 138
    invoke-static {}, Lo/BiometricAuthenticator;->i()Lo/BiometricAuthenticator;

    move-result-object v0

    goto :goto_6

    .line 139
    :cond_7
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->j(Lo/CameraDeviceImpl$ActionBar;)Lo/SerialPort;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lo/CameraDeviceImpl;->h:Lo/SerialPort;

    .line 140
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->l(Lo/CameraDeviceImpl$ActionBar;)Lo/SyntheticKey;

    move-result-object v0

    iput-object v0, p0, Lo/CameraDeviceImpl;->k:Lo/SyntheticKey;

    .line 141
    invoke-static {p1}, Lo/CameraDeviceImpl;->b(Lo/CameraDeviceImpl$ActionBar;)Lo/NanoAppInstanceInfo;

    move-result-object v0

    iput-object v0, p0, Lo/CameraDeviceImpl;->m:Lo/NanoAppInstanceInfo;

    .line 142
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->m(Lo/CameraDeviceImpl$ActionBar;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/CameraDeviceImpl;->o:Ljava/lang/Integer;

    .line 144
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->n(Lo/CameraDeviceImpl$ActionBar;)Lo/UserInfo;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Lo/CameraDeviceImpl$5;

    invoke-direct {v0, p0}, Lo/CameraDeviceImpl$5;-><init>(Lo/CameraDeviceImpl;)V

    goto :goto_7

    .line 151
    :cond_8
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->n(Lo/CameraDeviceImpl$ActionBar;)Lo/UserInfo;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lo/CameraDeviceImpl;->l:Lo/UserInfo;

    .line 153
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->o(Lo/CameraDeviceImpl$ActionBar;)Lo/PackageBackwardCompatibility;

    move-result-object v0

    if-nez v0, :cond_9

    .line 154
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->d(Lo/CameraDeviceImpl$ActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/CameraDeviceImpl;->a(Landroid/content/Context;)Lo/PackageBackwardCompatibility;

    move-result-object v0

    goto :goto_8

    .line 155
    :cond_9
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->o(Lo/CameraDeviceImpl$ActionBar;)Lo/PackageBackwardCompatibility;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lo/CameraDeviceImpl;->n:Lo/PackageBackwardCompatibility;

    .line 157
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->k(Lo/CameraDeviceImpl$ActionBar;)Lo/RuntimePermissionPresenter;

    move-result-object v0

    if-nez v0, :cond_a

    .line 158
    invoke-static {}, Lo/PackageOptimizationInfo;->b()Lo/PackageOptimizationInfo;

    move-result-object v0

    goto :goto_9

    .line 159
    :cond_a
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->k(Lo/CameraDeviceImpl$ActionBar;)Lo/RuntimePermissionPresenter;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lo/CameraDeviceImpl;->s:Lo/RuntimePermissionPresenter;

    .line 160
    iget-object v0, p0, Lo/CameraDeviceImpl;->B:Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    invoke-static {p1, v0}, Lo/CameraDeviceImpl;->a(Lo/CameraDeviceImpl$ActionBar;Lo/CameraConstrainedHighSpeedCaptureSessionImpl;)I

    move-result v0

    iput v0, p0, Lo/CameraDeviceImpl;->p:I

    .line 162
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->q(Lo/CameraDeviceImpl$ActionBar;)I

    move-result v0

    if-gez v0, :cond_b

    const/16 v0, 0x7530

    goto :goto_a

    .line 164
    :cond_b
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->q(Lo/CameraDeviceImpl$ActionBar;)I

    move-result v0

    :goto_a
    iput v0, p0, Lo/CameraDeviceImpl;->q:I

    .line 165
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "ImagePipelineConfig->mNetworkFetcher"

    .line 166
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 169
    :cond_c
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->t(Lo/CameraDeviceImpl$ActionBar;)Lo/HdmiRecordListener;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Lo/WifiDisplayStatus;

    iget v1, p0, Lo/CameraDeviceImpl;->q:I

    invoke-direct {v0, v1}, Lo/WifiDisplayStatus;-><init>(I)V

    goto :goto_b

    .line 171
    :cond_d
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->t(Lo/CameraDeviceImpl$ActionBar;)Lo/HdmiRecordListener;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lo/CameraDeviceImpl;->t:Lo/HdmiRecordListener;

    .line 172
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 173
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    .line 175
    :cond_e
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->p(Lo/CameraDeviceImpl$ActionBar;)Lo/Camera;

    move-result-object v0

    iput-object v0, p0, Lo/CameraDeviceImpl;->r:Lo/Camera;

    .line 177
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->s(Lo/CameraDeviceImpl$ActionBar;)Lo/MarshalQueryableStreamConfiguration;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Lo/MarshalQueryableStreamConfiguration;

    .line 178
    invoke-static {}, Lo/BlackLevelPattern;->n()Lo/BlackLevelPattern$TaskDescription;

    move-result-object v1

    invoke-virtual {v1}, Lo/BlackLevelPattern$TaskDescription;->e()Lo/BlackLevelPattern;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/MarshalQueryableStreamConfiguration;-><init>(Lo/BlackLevelPattern;)V

    goto :goto_c

    .line 179
    :cond_f
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->s(Lo/CameraDeviceImpl$ActionBar;)Lo/MarshalQueryableStreamConfiguration;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lo/CameraDeviceImpl;->v:Lo/MarshalQueryableStreamConfiguration;

    .line 181
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->r(Lo/CameraDeviceImpl$ActionBar;)Lo/CameraDeviceState;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Lo/CameraDeviceUserShim;

    invoke-direct {v0}, Lo/CameraDeviceUserShim;-><init>()V

    goto :goto_d

    .line 183
    :cond_10
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->r(Lo/CameraDeviceImpl$ActionBar;)Lo/CameraDeviceState;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lo/CameraDeviceImpl;->u:Lo/CameraDeviceState;

    .line 185
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->v(Lo/CameraDeviceImpl$ActionBar;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_e

    .line 187
    :cond_11
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->v(Lo/CameraDeviceImpl$ActionBar;)Ljava/util/Set;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lo/CameraDeviceImpl;->x:Ljava/util/Set;

    .line 188
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->x(Lo/CameraDeviceImpl$ActionBar;)Z

    move-result v0

    iput-boolean v0, p0, Lo/CameraDeviceImpl;->w:Z

    .line 190
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->u(Lo/CameraDeviceImpl$ActionBar;)Lo/PackageBackwardCompatibility;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lo/CameraDeviceImpl;->n:Lo/PackageBackwardCompatibility;

    goto :goto_f

    .line 192
    :cond_12
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->u(Lo/CameraDeviceImpl$ActionBar;)Lo/PackageBackwardCompatibility;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lo/CameraDeviceImpl;->y:Lo/PackageBackwardCompatibility;

    .line 193
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->w(Lo/CameraDeviceImpl$ActionBar;)Lo/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lo/CameraDeviceImpl;->z:Lo/PublicKey;

    .line 195
    iget-object v0, p0, Lo/CameraDeviceImpl;->v:Lo/MarshalQueryableStreamConfiguration;

    invoke-virtual {v0}, Lo/MarshalQueryableStreamConfiguration;->a()I

    move-result v0

    .line 197
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->y(Lo/CameraDeviceImpl$ActionBar;)Lo/CaptureRequest;

    move-result-object v1

    if-nez v1, :cond_13

    new-instance v1, Lo/CameraMetadata;

    invoke-direct {v1, v0}, Lo/CameraMetadata;-><init>(I)V

    goto :goto_10

    .line 199
    :cond_13
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->y(Lo/CameraDeviceImpl$ActionBar;)Lo/CaptureRequest;

    move-result-object v1

    :goto_10
    iput-object v1, p0, Lo/CameraDeviceImpl;->g:Lo/CaptureRequest;

    .line 200
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->z(Lo/CameraDeviceImpl$ActionBar;)Z

    move-result v0

    iput-boolean v0, p0, Lo/CameraDeviceImpl;->D:Z

    .line 201
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->D(Lo/CameraDeviceImpl$ActionBar;)Lo/PackageUserState;

    move-result-object v0

    iput-object v0, p0, Lo/CameraDeviceImpl;->C:Lo/PackageUserState;

    .line 202
    invoke-static {p1}, Lo/CameraDeviceImpl$ActionBar;->C(Lo/CameraDeviceImpl$ActionBar;)Lo/GetCommand;

    move-result-object p1

    iput-object p1, p0, Lo/CameraDeviceImpl;->A:Lo/GetCommand;

    .line 204
    iget-object p1, p0, Lo/CameraDeviceImpl;->B:Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    invoke-virtual {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->e()Lo/ResourcesImpl;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 206
    new-instance v0, Lo/Prediction;

    invoke-virtual {p0}, Lo/CameraDeviceImpl;->u()Lo/MarshalQueryableStreamConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/Prediction;-><init>(Lo/MarshalQueryableStreamConfiguration;)V

    .line 207
    iget-object v1, p0, Lo/CameraDeviceImpl;->B:Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    invoke-static {p1, v1, v0}, Lo/CameraDeviceImpl;->a(Lo/ResourcesImpl;Lo/CameraConstrainedHighSpeedCaptureSessionImpl;Lo/XmlBlock;)V

    goto :goto_11

    .line 210
    :cond_14
    iget-object p1, p0, Lo/CameraDeviceImpl;->B:Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    invoke-virtual {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->c()Z

    move-result p1

    if-eqz p1, :cond_15

    sget-boolean p1, Lo/ThemedResourceCache;->b:Z

    if-eqz p1, :cond_15

    .line 212
    invoke-static {}, Lo/ThemedResourceCache;->c()Lo/ResourcesImpl;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 214
    new-instance v0, Lo/Prediction;

    invoke-virtual {p0}, Lo/CameraDeviceImpl;->u()Lo/MarshalQueryableStreamConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/Prediction;-><init>(Lo/MarshalQueryableStreamConfiguration;)V

    .line 215
    iget-object v1, p0, Lo/CameraDeviceImpl;->B:Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    invoke-static {p1, v1, v0}, Lo/CameraDeviceImpl;->a(Lo/ResourcesImpl;Lo/CameraConstrainedHighSpeedCaptureSessionImpl;Lo/XmlBlock;)V

    .line 219
    :cond_15
    :goto_11
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 220
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_16
    return-void
.end method

.method synthetic constructor <init>(Lo/CameraDeviceImpl$ActionBar;Lo/CameraDeviceImpl$5;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lo/CameraDeviceImpl;-><init>(Lo/CameraDeviceImpl$ActionBar;)V

    return-void
.end method

.method private static a(Lo/CameraDeviceImpl$ActionBar;Lo/CameraConstrainedHighSpeedCaptureSessionImpl;)I
    .locals 1

    .line 405
    invoke-static {p0}, Lo/CameraDeviceImpl$ActionBar;->B(Lo/CameraDeviceImpl$ActionBar;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    invoke-static {p0}, Lo/CameraDeviceImpl$ActionBar;->B(Lo/CameraDeviceImpl$ActionBar;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 407
    :cond_0
    invoke-virtual {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Context;)Lo/PackageBackwardCompatibility;
    .locals 1

    .line 241
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DiskCacheConfig.getDefaultMainDiskCacheConfig"

    .line 242
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 244
    :cond_0
    invoke-static {p0}, Lo/PackageBackwardCompatibility;->a(Landroid/content/Context;)Lo/PackageBackwardCompatibility$TaskDescription;

    move-result-object p0

    invoke-virtual {p0}, Lo/PackageBackwardCompatibility$TaskDescription;->e()Lo/PackageBackwardCompatibility;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    .line 246
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    throw p0
.end method

.method private static a(Lo/ResourcesImpl;Lo/CameraConstrainedHighSpeedCaptureSessionImpl;Lo/XmlBlock;)V
    .locals 0

    .line 228
    sput-object p0, Lo/ThemedResourceCache;->a:Lo/ResourcesImpl;

    .line 230
    invoke-virtual {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->d()Lo/ResourcesImpl$StateListAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 232
    invoke-interface {p0, p1}, Lo/ResourcesImpl;->c(Lo/ResourcesImpl$StateListAnimator;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 235
    invoke-interface {p0, p2}, Lo/ResourcesImpl;->d(Lo/XmlBlock;)V

    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;)Lo/CameraDeviceImpl$ActionBar;
    .locals 2

    .line 386
    new-instance v0, Lo/CameraDeviceImpl$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/CameraDeviceImpl$ActionBar;-><init>(Landroid/content/Context;Lo/CameraDeviceImpl$5;)V

    return-object v0
.end method

.method private static b(Lo/CameraDeviceImpl$ActionBar;)Lo/NanoAppInstanceInfo;
    .locals 1

    .line 391
    invoke-static {p0}, Lo/CameraDeviceImpl$ActionBar;->A(Lo/CameraDeviceImpl$ActionBar;)Lo/NanoAppInstanceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lo/CameraDeviceImpl$ActionBar;->m(Lo/CameraDeviceImpl$ActionBar;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t define a custom ImageTranscoderFactory and provide an ImageTranscoderType"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 395
    :cond_1
    :goto_0
    invoke-static {p0}, Lo/CameraDeviceImpl$ActionBar;->A(Lo/CameraDeviceImpl$ActionBar;)Lo/NanoAppInstanceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 396
    invoke-static {p0}, Lo/CameraDeviceImpl$ActionBar;->A(Lo/CameraDeviceImpl$ActionBar;)Lo/NanoAppInstanceInfo;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g()Lo/CameraDeviceImpl$TaskDescription;
    .locals 1

    .line 278
    sget-object v0, Lo/CameraDeviceImpl;->G:Lo/CameraDeviceImpl$TaskDescription;

    return-object v0
.end method


# virtual methods
.method public A()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;
    .locals 1

    .line 378
    iget-object v0, p0, Lo/CameraDeviceImpl;->B:Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    return-object v0
.end method

.method public B()Lo/PublicKey;
    .locals 1

    .line 369
    iget-object v0, p0, Lo/CameraDeviceImpl;->z:Lo/PublicKey;

    return-object v0
.end method

.method public D()Lo/GetCommand;
    .locals 1

    .line 382
    iget-object v0, p0, Lo/CameraDeviceImpl;->A:Lo/GetCommand;

    return-object v0
.end method

.method public a()Lo/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/UserInfo<",
            "Lo/SystemSensorManager;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lo/CameraDeviceImpl;->e:Lo/UserInfo;

    return-object v0
.end method

.method public b()Lo/SensorEventCallback$Application;
    .locals 1

    .line 266
    iget-object v0, p0, Lo/CameraDeviceImpl;->a:Lo/SensorEventCallback$Application;

    return-object v0
.end method

.method public c()Lo/SensorEventListener;
    .locals 1

    .line 270
    iget-object v0, p0, Lo/CameraDeviceImpl;->d:Lo/SensorEventListener;

    return-object v0
.end method

.method public d()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 258
    iget-object v0, p0, Lo/CameraDeviceImpl;->b:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 274
    iget-object v0, p0, Lo/CameraDeviceImpl;->c:Landroid/content/Context;

    return-object v0
.end method

.method public f()Lo/CaptureFailure;
    .locals 1

    .line 282
    iget-object v0, p0, Lo/CameraDeviceImpl;->j:Lo/CaptureFailure;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lo/CameraDeviceImpl;->f:Z

    return v0
.end method

.method public i()Lo/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/UserInfo<",
            "Lo/SystemSensorManager;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lo/CameraDeviceImpl;->i:Lo/UserInfo;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lo/CameraDeviceImpl;->D:Z

    return v0
.end method

.method public k()Ljava/lang/Integer;
    .locals 1

    .line 318
    iget-object v0, p0, Lo/CameraDeviceImpl;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public l()Lo/SyntheticKey;
    .locals 1

    .line 307
    iget-object v0, p0, Lo/CameraDeviceImpl;->k:Lo/SyntheticKey;

    return-object v0
.end method

.method public m()Lo/CaptureRequest;
    .locals 1

    .line 298
    iget-object v0, p0, Lo/CameraDeviceImpl;->g:Lo/CaptureRequest;

    return-object v0
.end method

.method public n()Lo/SerialPort;
    .locals 1

    .line 302
    iget-object v0, p0, Lo/CameraDeviceImpl;->h:Lo/SerialPort;

    return-object v0
.end method

.method public o()Lo/NanoAppInstanceInfo;
    .locals 1

    .line 312
    iget-object v0, p0, Lo/CameraDeviceImpl;->m:Lo/NanoAppInstanceInfo;

    return-object v0
.end method

.method public p()Lo/HdmiRecordListener;
    .locals 1

    .line 339
    iget-object v0, p0, Lo/CameraDeviceImpl;->t:Lo/HdmiRecordListener;

    return-object v0
.end method

.method public q()Lo/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lo/CameraDeviceImpl;->l:Lo/UserInfo;

    return-object v0
.end method

.method public r()Lo/RuntimePermissionPresenter;
    .locals 1

    .line 330
    iget-object v0, p0, Lo/CameraDeviceImpl;->s:Lo/RuntimePermissionPresenter;

    return-object v0
.end method

.method public s()Lo/PackageBackwardCompatibility;
    .locals 1

    .line 326
    iget-object v0, p0, Lo/CameraDeviceImpl;->n:Lo/PackageBackwardCompatibility;

    return-object v0
.end method

.method public t()I
    .locals 1

    .line 335
    iget v0, p0, Lo/CameraDeviceImpl;->p:I

    return v0
.end method

.method public u()Lo/MarshalQueryableStreamConfiguration;
    .locals 1

    .line 348
    iget-object v0, p0, Lo/CameraDeviceImpl;->v:Lo/MarshalQueryableStreamConfiguration;

    return-object v0
.end method

.method public v()Lo/CameraDeviceState;
    .locals 1

    .line 352
    iget-object v0, p0, Lo/CameraDeviceImpl;->u:Lo/CameraDeviceState;

    return-object v0
.end method

.method public w()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lo/CameraDeviceImpl;->w:Z

    return v0
.end method

.method public x()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/PerfMeasurement;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lo/CameraDeviceImpl;->x:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public y()Lo/PackageBackwardCompatibility;
    .locals 1

    .line 364
    iget-object v0, p0, Lo/CameraDeviceImpl;->y:Lo/PackageBackwardCompatibility;

    return-object v0
.end method

.method public z()Lo/PackageUserState;
    .locals 1

    .line 374
    iget-object v0, p0, Lo/CameraDeviceImpl;->C:Lo/PackageUserState;

    return-object v0
.end method
