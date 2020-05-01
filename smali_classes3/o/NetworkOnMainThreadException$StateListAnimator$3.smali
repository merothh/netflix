.class Lo/NetworkOnMainThreadException$StateListAnimator$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NetworkOnMainThreadException$StateListAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/NetworkOnMainThreadException$StateListAnimator;


# direct methods
.method constructor <init>(Lo/NetworkOnMainThreadException$StateListAnimator;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lo/NetworkOnMainThreadException$StateListAnimator$3;->d:Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lo/NotActiveException;)Lo/NotActiveException;
    .locals 4

    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 813
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p2}, Lo/NotActiveException;->d()I

    move-result v3

    .line 812
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method
