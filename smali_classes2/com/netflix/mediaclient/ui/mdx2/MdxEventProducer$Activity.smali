.class final Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/BiPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->e()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiPredicate<",
        "Lo/Build$BroadcastReceiver;",
        "Lo/Build$BroadcastReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Activity;->d:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/Build$BroadcastReceiver;Lo/Build$BroadcastReceiver;)Z
    .locals 2

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mdxEvent"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Lo/Build$BroadcastReceiver;->g()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 108
    invoke-virtual {p2}, Lo/Build$BroadcastReceiver;->i()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Activity;->d:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->d(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Build$BroadcastReceiver;

    .line 110
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Activity;->d:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->d(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {v0, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public synthetic test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 31
    check-cast p1, Lo/Build$BroadcastReceiver;

    check-cast p2, Lo/Build$BroadcastReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Activity;->a(Lo/Build$BroadcastReceiver;Lo/Build$BroadcastReceiver;)Z

    move-result p1

    return p1
.end method
