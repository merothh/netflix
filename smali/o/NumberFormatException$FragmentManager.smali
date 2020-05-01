.class Lo/NumberFormatException$FragmentManager;
.super Landroid/media/MediaRouter$VolumeCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NumberFormatException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/NumberFormatException$Dialog;",
        ">",
        "Landroid/media/MediaRouter$VolumeCallback;"
    }
.end annotation


# instance fields
.field protected final d:Lo/NumberFormatException$Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/NumberFormatException$Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 460
    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    .line 461
    iput-object p1, p0, Lo/NumberFormatException$FragmentManager;->d:Lo/NumberFormatException$Dialog;

    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 467
    iget-object v0, p0, Lo/NumberFormatException$FragmentManager;->d:Lo/NumberFormatException$Dialog;

    invoke-interface {v0, p1, p2}, Lo/NumberFormatException$Dialog;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 473
    iget-object v0, p0, Lo/NumberFormatException$FragmentManager;->d:Lo/NumberFormatException$Dialog;

    invoke-interface {v0, p1, p2}, Lo/NumberFormatException$Dialog;->e(Ljava/lang/Object;I)V

    return-void
.end method
