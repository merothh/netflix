.class final Lo/Ii$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ii;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Ii;


# direct methods
.method constructor <init>(Lo/Ii;)V
    .locals 0

    iput-object p1, p0, Lo/Ii$2;->c:Lo/Ii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 2

    .line 71
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-ne p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lo/Ii$2;->c:Lo/Ii;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/Ii;->d(Lo/Ii;I)V

    .line 74
    :cond_0
    iget-object v0, p0, Lo/Ii$2;->c:Lo/Ii;

    invoke-static {v0}, Lo/Ii;->e(Lo/Ii;)Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;->b(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    :cond_1
    return-void
.end method
