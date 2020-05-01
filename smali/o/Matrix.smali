.class Lo/Matrix;
.super Lo/Point;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Matrix$ActionBar;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/InputConnection;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lo/Point;-><init>(Landroid/content/Context;Lo/InputConnection;)V

    return-void
.end method


# virtual methods
.method e(Landroid/view/ActionProvider;)Lo/Point$TaskDescription;
    .locals 2

    .line 44
    new-instance v0, Lo/Matrix$ActionBar;

    iget-object v1, p0, Lo/Matrix;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lo/Matrix$ActionBar;-><init>(Lo/Matrix;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
