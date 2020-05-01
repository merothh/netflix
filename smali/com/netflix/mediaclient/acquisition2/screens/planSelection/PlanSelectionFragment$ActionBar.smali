.class final Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/DataOutput;


# direct methods
.method constructor <init>(Lo/DataOutput;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$ActionBar;->a:Lo/DataOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "motionEvent"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$ActionBar;->a:Lo/DataOutput;

    invoke-virtual {p1, p2}, Lo/DataOutput;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
