.class final Lo/QwertyKeyListener$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/QwertyKeyListener;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/QwertyKeyListener;


# direct methods
.method constructor <init>(Lo/QwertyKeyListener;)V
    .locals 0

    iput-object p1, p0, Lo/QwertyKeyListener$5;->c:Lo/QwertyKeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 41
    iget-object p1, p0, Lo/QwertyKeyListener$5;->c:Lo/QwertyKeyListener;

    invoke-virtual {p1}, Lo/QwertyKeyListener;->j()Lo/MultiTapKeyListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/MultiTapKeyListener;->a(Z)V

    .line 42
    iget-object p1, p0, Lo/QwertyKeyListener$5;->c:Lo/QwertyKeyListener;

    invoke-virtual {p1}, Lo/QwertyKeyListener;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lo/QwertyKeyListener$5$1;

    invoke-direct {p2, p0}, Lo/QwertyKeyListener$5$1;-><init>(Lo/QwertyKeyListener$5;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
