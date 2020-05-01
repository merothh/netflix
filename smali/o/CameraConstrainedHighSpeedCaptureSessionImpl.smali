.class public Lo/CameraConstrainedHighSpeedCaptureSessionImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Activity;,
        Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;,
        Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lo/ResourcesImpl$StateListAnimator;

.field private final c:Z

.field private final d:Z

.field private final e:Lo/ResourcesImpl;

.field private final f:I

.field private g:Z

.field private final h:I

.field private final i:Z

.field private final j:I

.field private final k:Z

.field private final l:Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;

.field private final m:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Z

.field private final o:Z

.field private final t:Z


# direct methods
.method private constructor <init>(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->c(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Z

    move-result v0

    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->a:Z

    .line 54
    invoke-static {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->a(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Lo/ResourcesImpl$StateListAnimator;

    move-result-object v0

    iput-object v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->b:Lo/ResourcesImpl$StateListAnimator;

    .line 55
    invoke-static {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->e(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Z

    move-result v0

    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->d:Z

    .line 56
    invoke-static {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->d(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Lo/ResourcesImpl;

    move-result-object v0

    iput-object v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->e:Lo/ResourcesImpl;

    .line 57
    invoke-static {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->b(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Z

    move-result v0

    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->c:Z

    .line 58
    invoke-static {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->g(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Z

    move-result v0

    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->i:Z

    .line 59
    invoke-static {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->f(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)I

    move-result v0

    iput v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->j:I

    .line 60
    invoke-static {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->h(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)I

    move-result v0

    iput v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->h:I

    .line 61
    iget-boolean v0, p1, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->c:Z

    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->g:Z

    .line 62
    invoke-static {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->i(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)I

    move-result v0

    iput v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->f:I

    .line 63
    invoke-static {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->j(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Z

    move-result v0

    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->n:Z

    .line 64
    invoke-static {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->m(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Z

    move-result v0

    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->o:Z

    .line 65
    invoke-static {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->l(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Activity;

    invoke-direct {v0}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Activity;-><init>()V

    iput-object v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->l:Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->l(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;

    move-result-object v0

    iput-object v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->l:Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;

    .line 70
    :goto_0
    iget-object v0, p1, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->e:Lo/UserInfo;

    iput-object v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->m:Lo/UserInfo;

    .line 71
    iget-boolean v0, p1, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->d:Z

    iput-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->k:Z

    .line 72
    iget-boolean p1, p1, Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;->b:Z

    iput-boolean p1, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->t:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;Lo/CameraConstrainedHighSpeedCaptureSessionImpl$2;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;-><init>(Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Application;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->d:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->c:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->a:Z

    return v0
.end method

.method public d()Lo/ResourcesImpl$StateListAnimator;
    .locals 1

    .line 88
    iget-object v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->b:Lo/ResourcesImpl$StateListAnimator;

    return-object v0
.end method

.method public e()Lo/ResourcesImpl;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->e:Lo/ResourcesImpl;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 100
    iget v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->j:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 104
    iget v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->h:I

    return v0
.end method

.method public h()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->n:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->o:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->i:Z

    return v0
.end method

.method public k()I
    .locals 1

    .line 129
    iget v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->f:I

    return v0
.end method

.method public l()Lo/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->m:Lo/UserInfo;

    return-object v0
.end method

.method public m()Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;
    .locals 1

    .line 116
    iget-object v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->l:Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->k:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->g:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lo/CameraConstrainedHighSpeedCaptureSessionImpl;->t:Z

    return v0
.end method
