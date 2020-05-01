.class final Lo/Vu$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vu;-><init>(Lo/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Vu;


# direct methods
.method constructor <init>(Lo/Vu;)V
    .locals 0

    iput-object p1, p0, Lo/Vu$3;->d:Lo/Vu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lo/Vu$3;->d:Lo/Vu;

    invoke-static {p1}, Lo/Vu;->b(Lo/Vu;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
