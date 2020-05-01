.class Lo/TC$18$1;
.super Lo/WebChromeClient$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TC$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/TC$18;


# direct methods
.method constructor <init>(Lo/TC$18;)V
    .locals 0

    .line 3266
    iput-object p1, p0, Lo/TC$18$1;->b:Lo/TC$18;

    invoke-direct {p0}, Lo/WebChromeClient$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/WebChromeClient;)V
    .locals 0

    .line 3268
    iget-object p1, p0, Lo/TC$18$1;->b:Lo/TC$18;

    iget-object p1, p1, Lo/TC$18;->c:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->v()V

    return-void
.end method
