.class public final Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouOptInDialog$onViewCreated$5;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Sd;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Sh$TaskDescription;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Sd;


# direct methods
.method public constructor <init>(Lo/Sd;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouOptInDialog$onViewCreated$5;->a:Lo/Sd;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/Sh$TaskDescription;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouOptInDialog$onViewCreated$5;->a:Lo/Sd;

    invoke-virtual {p1}, Lo/Sh$TaskDescription;->e()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lo/Sd;->e(Lo/Sd;Ljava/util/List;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lo/Sh$TaskDescription;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouOptInDialog$onViewCreated$5;->d(Lo/Sh$TaskDescription;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
