.class Lo/InternalError;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InternalError$TaskDescription;
    }
.end annotation


# direct methods
.method public static d(IIILo/InternalError$TaskDescription;)Ljava/lang/Object;
    .locals 1

    .line 27
    new-instance v0, Lo/InternalError$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/InternalError$3;-><init>(IIILo/InternalError$TaskDescription;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;I)V
    .locals 0

    .line 41
    check-cast p0, Landroid/media/VolumeProvider;

    invoke-virtual {p0, p1}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V

    return-void
.end method
