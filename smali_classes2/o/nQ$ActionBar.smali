.class Lo/nQ$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic b:Lo/nQ;


# direct methods
.method private constructor <init>(Lo/nQ;)V
    .locals 0

    .line 1663
    iput-object p1, p0, Lo/nQ$ActionBar;->b:Lo/nQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/nQ;Lo/nQ$4;)V
    .locals 0

    .line 1663
    invoke-direct {p0, p1}, Lo/nQ$ActionBar;-><init>(Lo/nQ;)V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 1

    .line 1666
    iget-object v0, p0, Lo/nQ$ActionBar;->b:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->t(Lo/nQ;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1667
    :cond_0
    iget-object v0, p0, Lo/nQ$ActionBar;->b:Lo/nQ;

    invoke-static {v0, p1}, Lo/nQ;->b(Lo/nQ;I)I

    .line 1668
    iget-object p1, p0, Lo/nQ$ActionBar;->b:Lo/nQ;

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lo/nQ;->d(Lo/nQ;I)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
