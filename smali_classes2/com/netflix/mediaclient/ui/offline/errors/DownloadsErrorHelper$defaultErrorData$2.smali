.class public final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$defaultErrorData$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SY;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/SY$Application;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$defaultErrorData$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$defaultErrorData$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$defaultErrorData$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$defaultErrorData$2;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$defaultErrorData$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lo/SY$Application;
    .locals 7

    .line 25
    new-instance v6, Lo/SY$Application;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/SY$Application;-><init>(IIIILo/amc;)V

    return-object v6
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$defaultErrorData$2;->a()Lo/SY$Application;

    move-result-object v0

    return-object v0
.end method
