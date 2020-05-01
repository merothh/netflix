.class public final Lo/Xm$2$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xm$2;-><init>(Lo/Xm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Xm$2;

.field private b:F

.field private d:F


# direct methods
.method constructor <init>(Lo/Xm$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lo/Xm$2$TaskDescription;->a:Lo/Xm$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const-string v0, "detector"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lo/Xm$2$TaskDescription;->b:F

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const-string v0, "detector"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lo/Xm$2$TaskDescription;->d:F

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    const-string v0, "detector"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget p1, p0, Lo/Xm$2$TaskDescription;->d:F

    iget v0, p0, Lo/Xm$2$TaskDescription;->b:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 53
    iget-object p1, p0, Lo/Xm$2$TaskDescription;->a:Lo/Xm$2;

    iget-object p1, p1, Lo/Xm$2;->d:Lo/Xm;

    sget-object v0, Lo/UU$SharedElementCallback;->e:Lo/UU$SharedElementCallback;

    invoke-virtual {p1, v0}, Lo/Xm;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lo/Xm$2$TaskDescription;->a:Lo/Xm$2;

    iget-object p1, p1, Lo/Xm$2;->d:Lo/Xm;

    sget-object v0, Lo/UU$PictureInPictureParams;->b:Lo/UU$PictureInPictureParams;

    invoke-virtual {p1, v0}, Lo/Xm;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
