.class Lo/Dy$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dy$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Dy$1;


# direct methods
.method constructor <init>(Lo/Dy$1;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lo/Dy$1$1;->c:Lo/Dy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lo/Dy$1$1;->c:Lo/Dy$1;

    iget-object p1, p1, Lo/Dy$1;->b:Lo/Dy;

    iget-object v0, p0, Lo/Dy$1$1;->c:Lo/Dy$1;

    iget-object v0, v0, Lo/Dy$1;->b:Lo/Dy;

    invoke-static {v0}, Lo/Dy;->d(Lo/Dy;)Lo/Bc;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Dy;->c(Lo/Dy;Lo/Bc;)V

    return-void
.end method
