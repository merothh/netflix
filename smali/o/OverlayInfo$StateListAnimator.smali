.class final Lo/OverlayInfo$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OverlayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation


# instance fields
.field final a:I

.field final b:[B

.field final c:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lo/OverlayInfo$StateListAnimator;->b:[B

    .line 175
    iput p2, p0, Lo/OverlayInfo$StateListAnimator;->c:I

    .line 176
    iput p3, p0, Lo/OverlayInfo$StateListAnimator;->a:I

    return-void
.end method
