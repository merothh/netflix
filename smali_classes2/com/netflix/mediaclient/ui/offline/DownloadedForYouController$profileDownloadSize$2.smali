.class public final Lcom/netflix/mediaclient/ui/offline/DownloadedForYouController$profileDownloadSize$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Qz;-><init>(Landroid/content/Context;Lo/nS;Lcom/netflix/mediaclient/service/user/UserAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Qz;


# direct methods
.method public constructor <init>(Lo/Qz;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedForYouController$profileDownloadSize$2;->a:Lo/Qz;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedForYouController$profileDownloadSize$2;->a:Lo/Qz;

    invoke-static {v0}, Lo/Qz;->d(Lo/Qz;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadedForYouController$profileDownloadSize$2;->d()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
