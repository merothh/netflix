.class final Lo/WU$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WU;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/WU;


# direct methods
.method constructor <init>(Lo/WU;)V
    .locals 0

    iput-object p1, p0, Lo/WU$1;->b:Lo/WU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 32
    iget-object p1, p0, Lo/WU$1;->b:Lo/WU;

    invoke-static {p1}, Lo/WU;->a(Lo/WU;)Lo/HorizontalScrollView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lo/WU$1;->b:Lo/WU;

    invoke-static {p1}, Lo/WU;->b(Lo/WU;)Landroid/widget/ImageButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lo/WU$1;->b:Lo/WU;

    invoke-static {p1}, Lo/WU;->a(Lo/WU;)Lo/HorizontalScrollView;

    move-result-object p1

    new-instance v0, Lo/WU$1$4;

    invoke-direct {v0, p0}, Lo/WU$1$4;-><init>(Lo/WU$1;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
