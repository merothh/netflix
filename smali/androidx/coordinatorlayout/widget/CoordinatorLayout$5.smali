.class Landroidx/coordinatorlayout/widget/CoordinatorLayout$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    .line 3216
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$5;->d:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lo/NotActiveException;)Lo/NotActiveException;
    .locals 0

    .line 3220
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$5;->d:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setWindowInsets(Lo/NotActiveException;)Lo/NotActiveException;

    move-result-object p1

    return-object p1
.end method
