.class final Lo/Um$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Um;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Um;


# direct methods
.method constructor <init>(Lo/Um;)V
    .locals 0

    iput-object p1, p0, Lo/Um$ActionBar;->a:Lo/Um;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 37
    iget-object p1, p0, Lo/Um$ActionBar;->a:Lo/Um;

    invoke-virtual {p1}, Lo/Um;->x()V

    .line 38
    iget-object p1, p0, Lo/Um$ActionBar;->a:Lo/Um;

    invoke-virtual {p1}, Lo/Um;->B()V

    return-void
.end method
