.class public final Lo/Xs$Application;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xs;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final c:Landroid/graphics/Rect;

.field final synthetic e:Lo/Xs;


# direct methods
.method constructor <init>(Lo/Xs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lo/Xs$Application;->e:Lo/Xs;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 54
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/Xs$Application;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lo/Xs$Application;->c:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/Xs$Application;->e:Lo/Xs;

    invoke-virtual {v0}, Lo/Xs;->m()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lo/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 57
    iget-object p1, p0, Lo/Xs$Application;->c:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/Xs$Application;->e:Lo/Xs;

    invoke-virtual {v0}, Lo/Xs;->m()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lo/HorizontalScrollView;->getMeasuredHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz p2, :cond_0

    .line 58
    iget-object p1, p0, Lo/Xs$Application;->c:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/Xs$Application;->e:Lo/Xs;

    invoke-virtual {v0}, Lo/Xs;->m()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lo/HorizontalScrollView;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 59
    :cond_0
    iget-object p1, p0, Lo/Xs$Application;->e:Lo/Xs;

    invoke-virtual {p1}, Lo/Xs;->m()Lo/HorizontalScrollView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/HorizontalScrollView;->setClipToOutline(Z)V

    return-void
.end method
