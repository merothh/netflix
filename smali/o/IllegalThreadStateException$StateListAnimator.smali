.class final Lo/IllegalThreadStateException$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/IllegalStateException$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IllegalThreadStateException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation


# instance fields
.field final d:Landroid/media/session/MediaSessionManager$RemoteUserInfo;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/IllegalThreadStateException$StateListAnimator;->d:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lo/IllegalThreadStateException$StateListAnimator;->d:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/IllegalThreadStateException$StateListAnimator;->d:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 80
    :cond_0
    instance-of v0, p1, Lo/IllegalThreadStateException$StateListAnimator;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 83
    :cond_1
    check-cast p1, Lo/IllegalThreadStateException$StateListAnimator;

    .line 84
    iget-object v0, p0, Lo/IllegalThreadStateException$StateListAnimator;->d:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    iget-object p1, p1, Lo/IllegalThreadStateException$StateListAnimator;->d:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lo/IllegalThreadStateException$StateListAnimator;->d:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/BufferedReader;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
