.class final Lo/GH$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GH;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/GH;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lo/GH;Z)V
    .locals 0

    iput-object p1, p0, Lo/GH$StateListAnimator;->a:Lo/GH;

    iput-boolean p2, p0, Lo/GH$StateListAnimator;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 108
    sget-object v0, Lo/GH;->c:Lo/GH$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 109
    iget-object v0, p0, Lo/GH$StateListAnimator;->a:Lo/GH;

    invoke-static {v0}, Lo/GH;->c(Lo/GH;)Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lo/GH$StateListAnimator;->b:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->b(Z)V

    :cond_0
    return-void
.end method
