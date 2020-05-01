.class public final Lo/abU$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abU;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic e:Lo/abU;


# direct methods
.method constructor <init>(Lo/abU;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lo/abU$Application;->e:Lo/abU;

    iput-object p2, p0, Lo/abU$Application;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 276
    iget-object v0, p0, Lo/abU$Application;->e:Lo/abU;

    invoke-virtual {v0}, Lo/abU;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 277
    iget-object v0, p0, Lo/abU$Application;->e:Lo/abU;

    iget-object v1, p0, Lo/abU$Application;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lo/abU;->c(Lo/abU;Landroid/view/View;)V

    return-void
.end method
