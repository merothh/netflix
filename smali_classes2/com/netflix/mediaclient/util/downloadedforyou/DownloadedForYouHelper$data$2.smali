.class public final Lcom/netflix/mediaclient/util/downloadedforyou/DownloadedForYouHelper$data$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aeN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/aeP;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/mediaclient/util/downloadedforyou/DownloadedForYouHelper$data$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/util/downloadedforyou/DownloadedForYouHelper$data$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/downloadedforyou/DownloadedForYouHelper$data$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/downloadedforyou/DownloadedForYouHelper$data$2;->a:Lcom/netflix/mediaclient/util/downloadedforyou/DownloadedForYouHelper$data$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Lo/aeP;
    .locals 1

    .line 45
    sget-object v0, Lo/aeN;->e:Lo/aeN;

    invoke-static {v0}, Lo/aeN;->a(Lo/aeN;)Lo/aeP;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/downloadedforyou/DownloadedForYouHelper$data$2;->d()Lo/aeP;

    move-result-object v0

    return-object v0
.end method
