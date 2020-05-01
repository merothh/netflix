.class Lcom/netflix/mediaclient/ui/player/PostPlay$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/PostPlay;->a(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/player/PostPlay;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$2;->a:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$2;->a:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->l:Lo/aeC$TaskDescription;

    invoke-virtual {v1}, Lo/aeC$TaskDescription;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->a(I)V

    return-void
.end method
