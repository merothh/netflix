.class Lo/jf$3$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeL$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/jf$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/jf$3;


# direct methods
.method constructor <init>(Lo/jf$3;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lo/jf$3$2;->c:Lo/jf$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d([Lo/aeL$StateListAnimator;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 145
    array-length v0, p1

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lo/jf$3$2;->c:Lo/jf$3;

    iget-object v0, v0, Lo/jf$3;->d:Lo/jf;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lo/jf;->e(Lo/jf;[Lo/aeL$StateListAnimator;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_releaseLicense"

    const-string v0, "No saved payloads found."

    .line 148
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
