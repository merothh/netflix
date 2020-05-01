.class Lo/jd$TaskDescription;
.super Lo/adz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jd;
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
.field final synthetic e:Lo/jd;


# direct methods
.method public constructor <init>(Lo/jd;)V
    .locals 7

    .line 470
    iput-object p1, p0, Lo/jd$TaskDescription;->e:Lo/jd;

    const-string v1, "nf_queue_pds"

    const/16 v2, 0xb

    const-wide/32 v3, 0x1d4c0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    .line 471
    invoke-direct/range {v0 .. v6}, Lo/adz;-><init>(Ljava/lang/String;IJZZ)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lo/jd$TaskDescription;->e:Lo/jd;

    invoke-static {v0, p1, p2}, Lo/jd;->a(Lo/jd;Ljava/util/List;Z)V

    return-void
.end method
