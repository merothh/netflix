.class Lo/xy$4;
.super Lo/tA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xy;->a(Lo/uC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/xy;


# direct methods
.method constructor <init>(Lo/xy;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lo/xy$4;->c:Lo/xy;

    invoke-direct {p0}, Lo/tA;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;I)Lo/tM;
    .locals 0

    .line 319
    iget-object p2, p0, Lo/xy$4;->c:Lo/xy;

    iget-object p2, p2, Lo/xy;->h:Lo/tL;

    invoke-virtual {p2, p1}, Lo/tL;->d(Ljava/lang/String;)[Lo/tM;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
