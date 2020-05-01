.class Lo/jd$3$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeL$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/jd$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/jd$3;


# direct methods
.method constructor <init>(Lo/jd$3;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lo/jd$3$3;->e:Lo/jd$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d([Lo/aeL$StateListAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 217
    array-length v0, p1

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lo/jd$3$3;->e:Lo/jd$3;

    iget-object v0, v0, Lo/jd$3;->a:Lo/jd;

    invoke-static {v0, p1}, Lo/jd;->e(Lo/jd;[Lo/aeL$StateListAnimator;)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_pds_logs"

    const-string v0, "No saved payloads found."

    .line 220
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
