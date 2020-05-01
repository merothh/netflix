.class Lo/iT$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeL$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/iT$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/iT$2;


# direct methods
.method constructor <init>(Lo/iT$2;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lo/iT$2$1;->e:Lo/iT$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d([Lo/aeL$StateListAnimator;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 229
    array-length v0, p1

    if-lez v0, :cond_0

    .line 230
    iget-object v0, p0, Lo/iT$2$1;->e:Lo/iT$2;

    iget-object v0, v0, Lo/iT$2;->e:Lo/iT;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lo/iT;->e(Lo/iT;[Lo/aeL$StateListAnimator;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_logblob"

    const-string v0, "No saved payloads found."

    .line 232
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
