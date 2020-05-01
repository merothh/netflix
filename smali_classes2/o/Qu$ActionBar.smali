.class final Lo/Qu$ActionBar;
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
.field final synthetic b:Lo/Qu$StateListAnimator;

.field final synthetic d:Lo/Qu;


# direct methods
.method constructor <init>(Lo/Qu;Lo/Qu$StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/Qu$ActionBar;->d:Lo/Qu;

    iput-object p2, p0, Lo/Qu$ActionBar;->b:Lo/Qu$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lo/Qu$ActionBar;->d:Lo/Qu;

    iget-object v0, p0, Lo/Qu$ActionBar;->b:Lo/Qu$StateListAnimator;

    invoke-static {p1, v0}, Lo/Qu;->a(Lo/Qu;Lo/Qu$StateListAnimator;)V

    return-void
.end method
