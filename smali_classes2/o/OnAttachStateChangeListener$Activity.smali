.class Lo/OnAttachStateChangeListener$Activity;
.super Landroid/app/SharedElementCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OnAttachStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field private final e:Lo/OnScrollChangeListener;


# direct methods
.method constructor <init>(Lo/OnScrollChangeListener;)V
    .locals 0

    .line 591
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    .line 592
    iput-object p1, p0, Lo/OnAttachStateChangeListener$Activity;->e:Lo/OnScrollChangeListener;

    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1

    .line 622
    iget-object v0, p0, Lo/OnAttachStateChangeListener$Activity;->e:Lo/OnScrollChangeListener;

    invoke-virtual {v0, p1, p2, p3}, Lo/OnScrollChangeListener;->e(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1

    .line 628
    iget-object v0, p0, Lo/OnAttachStateChangeListener$Activity;->e:Lo/OnScrollChangeListener;

    invoke-virtual {v0, p1, p2}, Lo/OnScrollChangeListener;->e(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lo/OnAttachStateChangeListener$Activity;->e:Lo/OnScrollChangeListener;

    invoke-virtual {v0, p1, p2}, Lo/OnScrollChangeListener;->a(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lo/OnAttachStateChangeListener$Activity;->e:Lo/OnScrollChangeListener;

    invoke-virtual {v0, p1}, Lo/OnScrollChangeListener;->b(Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lo/OnAttachStateChangeListener$Activity;->e:Lo/OnScrollChangeListener;

    invoke-virtual {v0, p1, p2, p3}, Lo/OnScrollChangeListener;->e(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lo/OnAttachStateChangeListener$Activity;->e:Lo/OnScrollChangeListener;

    invoke-virtual {v0, p1, p2, p3}, Lo/OnScrollChangeListener;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lo/OnAttachStateChangeListener$Activity;->e:Lo/OnScrollChangeListener;

    new-instance v1, Lo/OnAttachStateChangeListener$Activity$4;

    invoke-direct {v1, p0, p3}, Lo/OnAttachStateChangeListener$Activity$4;-><init>(Lo/OnAttachStateChangeListener$Activity;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lo/OnScrollChangeListener;->d(Ljava/util/List;Ljava/util/List;Lo/OnScrollChangeListener$Application;)V

    return-void
.end method
