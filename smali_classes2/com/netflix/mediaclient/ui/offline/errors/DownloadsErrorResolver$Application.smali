.class public final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field private static final a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;

.field static final synthetic c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;-><init>()V

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;

    .line 34
    sput-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;->a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "DownloadsErrorResolver"

    .line 30
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d()Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;
    .locals 1

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;->a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;

    return-object v0
.end method
