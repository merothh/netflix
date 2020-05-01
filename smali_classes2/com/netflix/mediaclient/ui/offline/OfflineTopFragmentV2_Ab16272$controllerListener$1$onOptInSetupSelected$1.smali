.class public final Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab16272$controllerListener$1$onOptInSetupSelected$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RI$ActionBar;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Lo/BC;",
        "Lo/nS;",
        "Lo/SerializablePermission;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab16272$controllerListener$1$onOptInSetupSelected$1;->e:Ljava/util/List;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/BC;Lo/nS;Lo/SerializablePermission;)V
    .locals 2

    const-string v0, "safeProfile"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lo/Sd;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab16272$controllerListener$1$onOptInSetupSelected$1;->e:Ljava/util/List;

    invoke-direct {v0, p1, p2, v1}, Lo/Sd;-><init>(Lo/BC;Lo/nS;Ljava/util/List;)V

    const-string p1, "DownloadedForYouOptInDialog"

    invoke-virtual {v0, p3, p1}, Lo/Sd;->show(Lo/SerializablePermission;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lo/BC;

    check-cast p2, Lo/nS;

    check-cast p3, Lo/SerializablePermission;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab16272$controllerListener$1$onOptInSetupSelected$1;->a(Lo/BC;Lo/nS;Lo/SerializablePermission;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
