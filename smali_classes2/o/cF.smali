.class public Lo/cF;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:I

.field j:Ljava/lang/String;

.field l:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, ""

    .line 18
    iput-object p2, p0, Lo/cF;->b:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lo/cF;->d:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lo/cF;->e:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lo/cF;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lo/cF;->c:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lo/cF;->j:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lo/cF;->g:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lo/cF;->l:Ljava/lang/String;

    const-string p2, "samurai"

    .line 63
    iput-object p2, p0, Lo/cF;->b:Ljava/lang/String;

    .line 64
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 65
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/cF;->a:Ljava/lang/String;

    .line 67
    :cond_0
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 68
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/cF;->d:Ljava/lang/String;

    .line 70
    :cond_1
    iput-object p4, p0, Lo/cF;->e:Ljava/lang/String;

    .line 71
    sget-object p2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 72
    sget-object p2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/cF;->c:Ljava/lang/String;

    .line 74
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    iput p2, p0, Lo/cF;->f:I

    .line 75
    iput p1, p0, Lo/cF;->i:I

    .line 76
    iput-object p3, p0, Lo/cF;->h:Ljava/lang/String;

    .line 78
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 79
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object p1, p0, Lo/cF;->j:Ljava/lang/String;

    .line 81
    :cond_3
    sget-object p1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 82
    sget-object p1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object p1, p0, Lo/cF;->g:Ljava/lang/String;

    .line 84
    :cond_4
    sget-object p1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 85
    sget-object p1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object p1, p0, Lo/cF;->l:Ljava/lang/String;

    :cond_5
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/cF;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/cF;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/cF;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/cF;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/cF;->j:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 59
    iget v0, p0, Lo/cF;->f:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/cF;->l:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 57
    iget v0, p0, Lo/cF;->i:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/cF;->h:Ljava/lang/String;

    return-object v0
.end method
