.class public final Lo/MediaControlView2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WebSyncManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaControlView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/MediaControlView2;


# direct methods
.method constructor <init>(Lo/MediaControlView2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lo/MediaControlView2$1;->c:Lo/MediaControlView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lo/MediaControlView2;->b:Lo/MediaControlView2$Application;

    check-cast v0, Lo/MessagePdu;

    .line 96
    iget-object v0, p0, Lo/MediaControlView2$1;->c:Lo/MediaControlView2;

    invoke-static {v0}, Lo/MediaControlView2;->d(Lo/MediaControlView2;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaControlView2$StateListAnimator;

    if-eqz p1, :cond_3

    .line 97
    invoke-virtual {p1}, Lo/MediaControlView2$StateListAnimator;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 98
    iget-object v1, p0, Lo/MediaControlView2$1;->c:Lo/MediaControlView2;

    invoke-static {v1, v0}, Lo/MediaControlView2;->d(Lo/MediaControlView2;I)V

    .line 100
    :cond_0
    invoke-virtual {p1}, Lo/MediaControlView2$StateListAnimator;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lo/MediaControlView2$1;->c:Lo/MediaControlView2;

    invoke-virtual {v0}, Lo/MediaControlView2;->performClick()Z

    .line 103
    :cond_1
    iget-object v0, p0, Lo/MediaControlView2$1;->c:Lo/MediaControlView2;

    invoke-virtual {p1}, Lo/MediaControlView2$StateListAnimator;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lo/MediaControlView2;->setRepeatCount(I)V

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lo/MediaControlView2;->b:Lo/MediaControlView2$Application;

    check-cast v0, Lo/MessagePdu;

    .line 109
    iget-object v0, p0, Lo/MediaControlView2$1;->c:Lo/MediaControlView2;

    invoke-static {v0}, Lo/MediaControlView2;->d(Lo/MediaControlView2;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaControlView2$StateListAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/MediaControlView2$StateListAnimator;->f()Lo/MediaControlView2$StateListAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/MediaControlView2$StateListAnimator;->e()V

    :cond_0
    return-void
.end method
