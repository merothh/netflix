.class Lo/Ik$4;
.super Lo/WebChromeClient$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ik;->b(Lo/Ik$Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Ik$Application;

.field final synthetic c:Lo/Ik;


# direct methods
.method constructor <init>(Lo/Ik;Lo/Ik$Application;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lo/Ik$4;->c:Lo/Ik;

    iput-object p2, p0, Lo/Ik$4;->a:Lo/Ik$Application;

    invoke-direct {p0}, Lo/WebChromeClient$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/WebChromeClient;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lo/Ik$4;->a:Lo/Ik$Application;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 106
    invoke-interface {p1, v0}, Lo/Ik$Application;->e(Z)V

    :cond_0
    return-void
.end method
