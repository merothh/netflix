.class public final Lo/Sc$ActionBar;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Sc;->c(Ljava/lang/String;IILo/Sc$StateListAnimator;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Sc$StateListAnimator;


# direct methods
.method constructor <init>(Lo/Sc$StateListAnimator;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/Sc$ActionBar;->b:Lo/Sc$StateListAnimator;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AS;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "episodeList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lo/Sc$ActionBar;->b:Lo/Sc$StateListAnimator;

    invoke-interface {v0, p1, p2}, Lo/Sc$StateListAnimator;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
