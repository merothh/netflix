.class public final Lo/Mt;
.super Lo/Mx;
.source ""


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_DIALOGSHOW"

    .line 27
    invoke-direct {p0, v0}, Lo/Mx;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e(Lo/Mp;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "mdxui"

    const-string v1, "Show dialog"

    .line 33
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "stringBlob"

    .line 34
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    :try_start_0
    new-instance v1, Lo/Mm;

    invoke-direct {v1, p2}, Lo/Mm;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lo/Mp;->c(Lo/Mm;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to display dialog, failed to process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
