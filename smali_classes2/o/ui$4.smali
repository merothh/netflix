.class Lo/ui$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sD$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ui;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ui$StateListAnimator;

.field final synthetic e:Lo/ui;


# direct methods
.method constructor <init>(Lo/ui;Lo/ui$StateListAnimator;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lo/ui$4;->e:Lo/ui;

    iput-object p2, p0, Lo/ui$4;->b:Lo/ui$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Long;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lo/ui$4;->b:Lo/ui$StateListAnimator;

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;->d:Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;

    invoke-virtual {p1, p2}, Lo/ui$StateListAnimator;->a(Lcom/netflix/mediaclient/servicemgr/PrepareManager$PrepareResult;)V

    .line 158
    iget-object p1, p0, Lo/ui$4;->e:Lo/ui;

    invoke-static {p1}, Lo/ui;->a(Lo/ui;)V

    return-void
.end method

.method public d(Lo/sE;Z)V
    .locals 1

    .line 152
    iget-object p2, p0, Lo/ui$4;->e:Lo/ui;

    iget-object v0, p0, Lo/ui$4;->b:Lo/ui$StateListAnimator;

    invoke-static {p2, v0, p1}, Lo/ui;->c(Lo/ui;Lo/ui$StateListAnimator;Lo/sE;)V

    return-void
.end method
