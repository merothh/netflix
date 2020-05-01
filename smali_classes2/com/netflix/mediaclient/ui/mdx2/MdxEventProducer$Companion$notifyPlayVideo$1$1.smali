.class final Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Companion$notifyPlayVideo$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;->a(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/String;",
        "Landroid/content/Intent;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Companion$notifyPlayVideo$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Companion$notifyPlayVideo$1$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Companion$notifyPlayVideo$1$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Companion$notifyPlayVideo$1$1;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Companion$notifyPlayVideo$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "uuidNonNull"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentNonNull"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 496
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    .line 67
    invoke-virtual {v1, p1, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->e(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Companion$notifyPlayVideo$1$1;->d(Ljava/lang/String;Landroid/content/Intent;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
