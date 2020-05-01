.class final Lo/Qu$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Qu;->a(Lo/Qu$StateListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Qu;

.field final synthetic c:Lo/Qu$StateListAnimator;


# direct methods
.method constructor <init>(Lo/Qu;Lo/Qu$StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/Qu$Application;->b:Lo/Qu;

    iput-object p2, p0, Lo/Qu$Application;->c:Lo/Qu$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lo/Qu$Application;->b:Lo/Qu;

    iget-object v0, p0, Lo/Qu$Application;->c:Lo/Qu$StateListAnimator;

    invoke-static {p1, v0}, Lo/Qu;->a(Lo/Qu;Lo/Qu$StateListAnimator;)V

    return-void
.end method
