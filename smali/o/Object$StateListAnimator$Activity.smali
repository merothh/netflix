.class final Lo/Object$StateListAnimator$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Object$StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Activity"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lo/Object$StateListAnimator;

.field private c:I

.field private d:Lo/InstantiationError;

.field private final e:Landroid/support/v4/media/session/MediaSessionCompat;


# direct methods
.method constructor <init>(Lo/Object$StateListAnimator;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 0

    .line 2783
    iput-object p1, p0, Lo/Object$StateListAnimator$Activity;->b:Lo/Object$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2784
    iput-object p2, p0, Lo/Object$StateListAnimator$Activity;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 2827
    iget-object v0, p0, Lo/Object$StateListAnimator$Activity;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 2828
    iget-object v1, p0, Lo/Object$StateListAnimator$Activity;->b:Lo/Object$StateListAnimator;

    iget-object v1, v1, Lo/Object$StateListAnimator;->d:Lo/Override$Activity;

    iget v1, v1, Lo/Override$Activity;->e:I

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    const/4 v0, 0x0

    .line 2829
    iput-object v0, p0, Lo/Object$StateListAnimator$Activity;->d:Lo/InstantiationError;

    :cond_0
    return-void
.end method

.method public d(III)V
    .locals 2

    .line 2789
    iget-object v0, p0, Lo/Object$StateListAnimator$Activity;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 2790
    iget-object v0, p0, Lo/Object$StateListAnimator$Activity;->d:Lo/InstantiationError;

    if-eqz v0, :cond_0

    iget v1, p0, Lo/Object$StateListAnimator$Activity;->c:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lo/Object$StateListAnimator$Activity;->a:I

    if-ne p2, v1, :cond_0

    .line 2793
    invoke-virtual {v0, p3}, Lo/InstantiationError;->a(I)V

    goto :goto_0

    .line 2796
    :cond_0
    new-instance v0, Lo/Object$StateListAnimator$Activity$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/Object$StateListAnimator$Activity$4;-><init>(Lo/Object$StateListAnimator$Activity;III)V

    iput-object v0, p0, Lo/Object$StateListAnimator$Activity;->d:Lo/InstantiationError;

    .line 2821
    iget-object p1, p0, Lo/Object$StateListAnimator$Activity;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object p2, p0, Lo/Object$StateListAnimator$Activity;->d:Lo/InstantiationError;

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToRemote(Lo/InstantiationError;)V

    :cond_1
    :goto_0
    return-void
.end method
