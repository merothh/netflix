.class Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebClient;
.super Landroid/webkit/WebChromeClient;
.source "ExternalLinkActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebClient;->this$0:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$1;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebClient;-><init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3

    .prologue
    .line 218
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string/jumbo v0, "ExternalLinkActivity_js"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- From line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
