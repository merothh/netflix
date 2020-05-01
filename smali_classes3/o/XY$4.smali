.class final Lo/XY$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/XY;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/XY;


# direct methods
.method constructor <init>(Lo/XY;)V
    .locals 0

    iput-object p1, p0, Lo/XY$4;->d:Lo/XY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 2

    .line 43
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-ne p1, v0, :cond_1

    .line 44
    :cond_0
    iget-object v0, p0, Lo/XY$4;->d:Lo/XY;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/XY;->a(Lo/XY;Z)V

    .line 46
    :cond_1
    iget-object v0, p0, Lo/XY$4;->d:Lo/XY;

    invoke-static {v0}, Lo/XY;->d(Lo/XY;)Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;->b(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    :cond_2
    return-void
.end method
