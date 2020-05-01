.class final Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AEADBadTagException;


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
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AEADBadTagException<",
        "Lo/Hs;",
        "Lo/Hr$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/alB;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/alB;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Activity;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Activity;->c:Lo/alB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/Hs;Lo/Hr$Activity;I)V
    .locals 0

    .line 572
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Activity;->c:Lo/alB;

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public synthetic c(Lo/BiConsumer;Ljava/lang/Object;I)V
    .locals 0

    .line 66
    check-cast p1, Lo/Hs;

    check-cast p2, Lo/Hr$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Activity;->b(Lo/Hs;Lo/Hr$Activity;I)V

    return-void
.end method
