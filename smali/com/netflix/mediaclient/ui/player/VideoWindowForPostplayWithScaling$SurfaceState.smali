.class public Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;
.super Ljava/lang/Object;
.source "VideoWindowForPostplayWithScaling.java"


# instance fields
.field bottomMargin:I

.field leftMargin:I

.field rightMargin:I

.field surfaceMode:I

.field topMargin:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->bottomMargin:I

    iput p2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->topMargin:I

    iput p3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->leftMargin:I

    iput p4, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->rightMargin:I

    iput p5, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling$SurfaceState;->surfaceMode:I

    return-void
.end method
