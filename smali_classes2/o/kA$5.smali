.class Lo/kA$5;
.super Landroid/media/VolumeProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/kA;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/kA;


# direct methods
.method constructor <init>(Lo/kA;III)V
    .locals 0

    .line 458
    iput-object p1, p0, Lo/kA$5;->a:Lo/kA;

    invoke-direct {p0, p2, p3, p4}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "nf_media_session_controller"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 466
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "onAdjustVolume strange direction %d, skipping"

    invoke-static {v1, p1, v2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_1
    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    .line 462
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "onAdjustVolume: %d"

    invoke-static {v1, v0, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 463
    iget-object v0, p0, Lo/kA$5;->a:Lo/kA;

    invoke-static {v0}, Lo/kA;->f(Lo/kA;)I

    move-result v0

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr v0, p1

    .line 464
    iget-object p1, p0, Lo/kA$5;->a:Lo/kA;

    invoke-virtual {p1, v0, v2}, Lo/kA;->d(IZ)V

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 473
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_media_session_controller"

    const-string v3, "onSetVolumeTo:%d"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 474
    iget-object v1, p0, Lo/kA$5;->a:Lo/kA;

    mul-int/lit8 p1, p1, 0xa

    invoke-virtual {v1, p1, v0}, Lo/kA;->d(IZ)V

    return-void
.end method
