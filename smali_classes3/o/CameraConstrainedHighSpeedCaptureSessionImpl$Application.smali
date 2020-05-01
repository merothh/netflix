.class public Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CameraConstrainedHighSpeedCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# instance fields
.field private final a:Lo/CameraDeviceImpl$ActionBar;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/ResourcesImpl;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lo/ResourcesImpl$StateListAnimator;

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:Z

.field private q:Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;

.field private s:Z


# direct methods
.method public constructor <init>(Lo/CameraDeviceImpl$ActionBar;)V
    .locals 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->h:Z

    .line 149
    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->i:Z

    .line 151
    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->g:Z

    .line 152
    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->l:Z

    .line 153
    iput v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->k:I

    .line 154
    iput v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->n:I

    .line 155
    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->c:Z

    const/16 v1, 0x800

    .line 156
    iput v1, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->m:I

    .line 157
    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->o:Z

    .line 158
    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->s:Z

    .line 165
    iput-object p1, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->a:Lo/CameraDeviceImpl$ActionBar;

    return-void
.end method

.method static synthetic a(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Lo/ResourcesImpl$StateListAnimator;
    .locals 0

    .line 144
    iget-object p0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->j:Lo/ResourcesImpl$StateListAnimator;

    return-object p0
.end method

.method static synthetic b(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->g:Z

    return p0
.end method

.method static synthetic c(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->h:Z

    return p0
.end method

.method static synthetic d(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Lo/ResourcesImpl;
    .locals 0

    .line 144
    iget-object p0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->f:Lo/ResourcesImpl;

    return-object p0
.end method

.method static synthetic e(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->i:Z

    return p0
.end method

.method static synthetic f(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)I
    .locals 0

    .line 144
    iget p0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->k:I

    return p0
.end method

.method static synthetic g(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->l:Z

    return p0
.end method

.method static synthetic h(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)I
    .locals 0

    .line 144
    iget p0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->n:I

    return p0
.end method

.method static synthetic i(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)I
    .locals 0

    .line 144
    iget p0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->m:I

    return p0
.end method

.method static synthetic j(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->o:Z

    return p0
.end method

.method static synthetic l(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;
    .locals 0

    .line 144
    iget-object p0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->q:Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;

    return-object p0
.end method

.method static synthetic m(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->s:Z

    return p0
.end method


# virtual methods
.method public a()Lo/CameraConstrainedHighSpeedCaptureSessionImpl;
    .locals 2

    .line 290
    new-instance v0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;-><init>(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;Lo/CameraConstrainedHighSpeedCaptureSessionImpl$2;)V

    return-object v0
.end method
