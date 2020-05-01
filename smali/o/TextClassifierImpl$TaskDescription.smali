.class public final Lo/TextClassifierImpl$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TextClassifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/TextClassifierImpl$TaskDescription;-><init>()V

    return-void
.end method

.method private final b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getMode()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "warnUser"

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static final synthetic b(Lo/TextClassifierImpl$TaskDescription;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/TextClassifierImpl$TaskDescription;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)Z

    move-result p0

    return p0
.end method
