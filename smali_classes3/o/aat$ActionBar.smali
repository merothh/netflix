.class final Lo/aat$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aat;->c(Landroid/view/View;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/aat;


# direct methods
.method constructor <init>(Lo/aat;)V
    .locals 0

    iput-object p1, p0, Lo/aat$ActionBar;->d:Lo/aat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 45
    iget-object p1, p0, Lo/aat$ActionBar;->d:Lo/aat;

    invoke-static {p1}, Lo/aat;->c(Lo/aat;)V

    const/4 p1, 0x0

    return p1
.end method
