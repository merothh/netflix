.class Lo/SimpleClock$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SimpleClock;->setOnRateListener(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/SimpleClock$Activity;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field final synthetic c:Lo/SimpleClock;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/SimpleClock;Landroidx/coordinatorlayout/widget/CoordinatorLayout;I)V
    .locals 0

    .line 318
    iput-object p1, p0, Lo/SimpleClock$4;->c:Lo/SimpleClock;

    iput-object p2, p0, Lo/SimpleClock$4;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput p3, p0, Lo/SimpleClock$4;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 321
    iget-object p1, p0, Lo/SimpleClock$4;->c:Lo/SimpleClock;

    iget-object v0, p0, Lo/SimpleClock$4;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget v1, p0, Lo/SimpleClock$4;->e:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lo/SimpleClock;->b(Lo/SimpleClock;Landroidx/coordinatorlayout/widget/CoordinatorLayout;IZ)V

    return v2
.end method
