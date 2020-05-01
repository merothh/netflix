.class Lo/oh$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oh;->e(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/oh$StateListAnimator;

.field final synthetic e:Lo/oh;


# direct methods
.method constructor <init>(Lo/oh;Lo/oh$StateListAnimator;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lo/oh$4;->e:Lo/oh;

    iput-object p2, p0, Lo/oh$4;->a:Lo/oh$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 125
    iget-object v0, p0, Lo/oh$4;->e:Lo/oh;

    invoke-static {v0}, Lo/oh;->b(Lo/oh;)Lo/zS;

    move-result-object v0

    iget-object v1, p0, Lo/oh$4;->a:Lo/oh$StateListAnimator;

    invoke-interface {v0, v1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method
