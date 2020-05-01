.class Lo/jf$TaskDescription;
.super Lo/adz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/adz<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/jf;


# direct methods
.method public constructor <init>(Lo/jf;)V
    .locals 1

    .line 359
    iput-object p1, p0, Lo/jf$TaskDescription;->a:Lo/jf;

    const/4 p1, 0x0

    const-string v0, "nf_releaseLicense_queue"

    .line 360
    invoke-direct {p0, v0, p1, p1}, Lo/adz;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 365
    iget-object p2, p0, Lo/jf$TaskDescription;->a:Lo/jf;

    invoke-static {p2, p1}, Lo/jf;->a(Lo/jf;Ljava/util/List;)V

    return-void
.end method
