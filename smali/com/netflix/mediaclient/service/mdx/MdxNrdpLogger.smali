.class public Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;
.super Ljava/lang/Object;
.source "MdxNrdpLogger.java"


# static fields
.field private static final MDX_LOG_TYPE:Ljava/lang/String; = "mdx"


# instance fields
.field private mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/javabridge/ui/Nrdp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    return-void
.end method


# virtual methods
.method public logDebug(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->DEBUG:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    const-string/jumbo v2, "mdx"

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;-><init>(Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->log(Lcom/netflix/mediaclient/javabridge/ui/LogArguments;)V

    :cond_0
    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    const-string/jumbo v2, "mdx"

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;-><init>(Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->log(Lcom/netflix/mediaclient/javabridge/ui/LogArguments;)V

    :cond_0
    return-void
.end method
