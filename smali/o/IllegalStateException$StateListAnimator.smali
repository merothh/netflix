.class public final Lo/IllegalStateException$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IllegalStateException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field b:Lo/IllegalStateException$Application;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Lo/IllegalThreadStateException$StateListAnimator;

    invoke-direct {v0, p1}, Lo/IllegalThreadStateException$StateListAnimator;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    iput-object v0, p0, Lo/IllegalStateException$StateListAnimator;->b:Lo/IllegalStateException$Application;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 142
    new-instance v0, Lo/IllegalThreadStateException$StateListAnimator;

    invoke-direct {v0, p1, p2, p3}, Lo/IllegalThreadStateException$StateListAnimator;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lo/IllegalStateException$StateListAnimator;->b:Lo/IllegalStateException$Application;

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Lo/Integer$Activity;

    invoke-direct {v0, p1, p2, p3}, Lo/Integer$Activity;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lo/IllegalStateException$StateListAnimator;->b:Lo/IllegalStateException$Application;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lo/IllegalStateException$StateListAnimator;->b:Lo/IllegalStateException$Application;

    invoke-interface {v0}, Lo/IllegalStateException$Application;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 211
    :cond_0
    instance-of v0, p1, Lo/IllegalStateException$StateListAnimator;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 214
    :cond_1
    iget-object v0, p0, Lo/IllegalStateException$StateListAnimator;->b:Lo/IllegalStateException$Application;

    check-cast p1, Lo/IllegalStateException$StateListAnimator;

    iget-object p1, p1, Lo/IllegalStateException$StateListAnimator;->b:Lo/IllegalStateException$Application;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 219
    iget-object v0, p0, Lo/IllegalStateException$StateListAnimator;->b:Lo/IllegalStateException$Application;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
