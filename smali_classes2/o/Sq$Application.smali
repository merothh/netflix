.class final Lo/Sq$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Sq;->d(Lo/Sq$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Sq;

.field final synthetic c:Lo/Sq$TaskDescription;


# direct methods
.method constructor <init>(Lo/Sq;Lo/Sq$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lo/Sq$Application;->b:Lo/Sq;

    iput-object p2, p0, Lo/Sq$Application;->c:Lo/Sq$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 50
    iget-object p1, p0, Lo/Sq$Application;->b:Lo/Sq;

    invoke-virtual {p1}, Lo/Sq;->k()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/high16 v1, 0x41180000    # 9.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lo/Sq$Application;->c:Lo/Sq$TaskDescription;

    invoke-static {p1, v0, v1}, Lo/Sq;->e(Lo/Sq;FLo/Sq$TaskDescription;)V

    return-void
.end method
