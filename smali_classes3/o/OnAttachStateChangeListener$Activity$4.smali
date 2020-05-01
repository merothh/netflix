.class Lo/OnAttachStateChangeListener$Activity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/OnScrollChangeListener$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OnAttachStateChangeListener$Activity;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/OnAttachStateChangeListener$Activity;

.field final synthetic e:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# direct methods
.method constructor <init>(Lo/OnAttachStateChangeListener$Activity;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lo/OnAttachStateChangeListener$Activity$4;->d:Lo/OnAttachStateChangeListener$Activity;

    iput-object p2, p0, Lo/OnAttachStateChangeListener$Activity$4;->e:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 639
    iget-object v0, p0, Lo/OnAttachStateChangeListener$Activity$4;->e:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    return-void
.end method
