.class final Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CipherSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->buildModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "TV;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/CipherSpi<",
        "Lo/GP;",
        "Lo/DoubleStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$PendingIntent;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/BiConsumer;Ljava/lang/Object;I)V
    .locals 0

    .line 66
    check-cast p1, Lo/GP;

    check-cast p2, Lo/DoubleStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$PendingIntent;->d(Lo/GP;Lo/DoubleStream;I)V

    return-void
.end method

.method public final d(Lo/GP;Lo/DoubleStream;I)V
    .locals 0

    .line 197
    invoke-virtual {p1}, Lo/GP;->o()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_1

    .line 201
    invoke-virtual {p1}, Lo/GP;->p()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 202
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$PendingIntent;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->access$getExtrasNotificationsViewModel$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)Lo/GN;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/GN;->a(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
