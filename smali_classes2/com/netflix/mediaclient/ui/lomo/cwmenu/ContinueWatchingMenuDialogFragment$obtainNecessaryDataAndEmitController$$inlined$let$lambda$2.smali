.class public final Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$obtainNecessaryDataAndEmitController$$inlined$let$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Lv;->a(Lo/agg;Lo/bs;Lo/alB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/alB;

.field final synthetic c:Lo/agg;

.field final synthetic e:Lo/bs;


# direct methods
.method public constructor <init>(Lo/agg;Lo/bs;Lo/alB;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$obtainNecessaryDataAndEmitController$$inlined$let$lambda$2;->c:Lo/agg;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$obtainNecessaryDataAndEmitController$$inlined$let$lambda$2;->e:Lo/bs;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$obtainNecessaryDataAndEmitController$$inlined$let$lambda$2;->a:Lo/alB;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$obtainNecessaryDataAndEmitController$$inlined$let$lambda$2;->a:Lo/alB;

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$obtainNecessaryDataAndEmitController$$inlined$let$lambda$2;->e(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
