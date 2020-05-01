.class final Lo/xQ$4;
.super Lo/xQ$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xQ;->c(Lo/aeL;[Lo/aeL$StateListAnimator;Lo/xQ$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lo/xQ$ActionBar;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lo/xQ$TaskDescription;-><init>(Lo/xQ$ActionBar;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 0

    const-string p1, "nf_preapp_dataRepo"

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 84
    array-length p4, p3

    const/4 p5, 0x1

    if-ge p4, p5, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    :try_start_0
    new-instance p4, Ljava/lang/String;

    const-string p5, "utf-8"

    invoke-direct {p4, p3, p5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 89
    invoke-static {p4}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object p2

    .line 91
    sget-object p3, Lo/xQ;->c:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "onDataLoaded - diskData.print"

    .line 92
    invoke-static {p1, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->print()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    const-string p4, "Failed to build object from stored data."

    .line 97
    invoke-static {p1, p4, p3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string p3, "We failed to retrieve payload."

    .line 85
    invoke-static {p1, p3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lo/xQ$4;->c()Lo/xQ$ActionBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/xQ$ActionBar;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    return-void
.end method
