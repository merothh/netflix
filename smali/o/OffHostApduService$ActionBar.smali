.class final Lo/OffHostApduService$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OffHostApduService;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/xZ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

.field final synthetic d:Lo/OffHostApduService;


# direct methods
.method constructor <init>(Lo/OffHostApduService;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lo/OffHostApduService$ActionBar;->d:Lo/OffHostApduService;

    iput-object p2, p0, Lo/OffHostApduService$ActionBar;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lo/xZ;

    invoke-virtual {p0, p1}, Lo/OffHostApduService$ActionBar;->e(Lo/xZ;)V

    return-void
.end method

.method public final e(Lo/xZ;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lo/OffHostApduService$ActionBar;->d:Lo/OffHostApduService;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lo/OffHostApduService;->a(Lo/OffHostApduService;Lo/xZ;)Lo/TransceiveResult;

    move-result-object p1

    iget-object v0, p0, Lo/OffHostApduService$ActionBar;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-interface {p1, v0}, Lo/TransceiveResult;->e(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V

    return-void
.end method
