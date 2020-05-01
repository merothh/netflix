.class final Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$5;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$5;->e:Ljava/util/List;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "catalogId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-static {p2, p3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "/series/"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget-object p1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 217
    :cond_0
    :try_start_0
    invoke-static {p2, p3}, Lo/aeM;->c(Ljava/lang/String;Ljava/lang/String;)Lo/aeM$Application;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 219
    invoke-virtual {p2}, Lo/aeM$Application;->c()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lo/MN;->c:[I

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    if-eq p3, v1, :cond_2

    .line 233
    :goto_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 234
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Video type not handled : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/aeM$Application;->c()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 233
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :cond_2
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$5;->e:Ljava/util/List;

    check-cast p3, Ljava/util/Collection;

    new-instance v0, Lo/Build$ClipData;

    .line 229
    iget-object p2, p2, Lo/aeM$Application;->e:Ljava/lang/String;

    const-string v1, "videoIds.catalogId"

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-direct {v0, p1, p2}, Lo/Build$ClipData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    :cond_3
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$5;->e:Ljava/util/List;

    check-cast p3, Ljava/util/Collection;

    new-instance v0, Lo/Build$Dialog;

    .line 223
    iget-object p2, p2, Lo/aeM$Application;->b:Ljava/lang/String;

    const-string v1, "videoIds.episodeId"

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-direct {v0, p1, p2}, Lo/Build$Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 240
    :catch_0
    sget-object p1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;

    check-cast p1, Lo/MessagePdu;

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 132
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
