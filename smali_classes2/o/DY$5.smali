.class Lo/DY$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DY;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/DY;


# direct methods
.method constructor <init>(Lo/DY;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lo/DY$5;->b:Lo/DY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 325
    iget-object v0, p0, Lo/DY$5;->b:Lo/DY;

    invoke-virtual {v0, p0}, Lo/DY;->a(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 326
    iget-object v0, p0, Lo/DY$5;->b:Lo/DY;

    invoke-static {v0}, Lo/DY;->c(Lo/DY;)V

    return-void
.end method
