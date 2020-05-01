.class final Lo/StatsDimensionsValue$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StatsDimensionsValue;->setOnRateListener(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/SimpleClock$Activity;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/StatsDimensionsValue;

.field final synthetic e:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lo/StatsDimensionsValue;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    iput-object p1, p0, Lo/StatsDimensionsValue$TaskDescription;->a:Lo/StatsDimensionsValue;

    iput-object p2, p0, Lo/StatsDimensionsValue$TaskDescription;->e:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 48
    iget-object p1, p0, Lo/StatsDimensionsValue$TaskDescription;->a:Lo/StatsDimensionsValue;

    iget-object v0, p0, Lo/StatsDimensionsValue$TaskDescription;->e:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lo/StatsDimensionsValue;->b(Lo/StatsDimensionsValue;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Z)V

    return v1
.end method
