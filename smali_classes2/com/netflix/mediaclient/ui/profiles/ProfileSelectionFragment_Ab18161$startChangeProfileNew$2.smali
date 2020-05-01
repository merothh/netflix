.class final Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->b(Lo/BC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/BC;

.field final synthetic c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lo/BC;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$2;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$2;->a:Lo/BC;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    sget-object p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->f:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Application;

    check-cast p1, Lo/MessagePdu;

    .line 567
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$2;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$2;->a:Lo/BC;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lo/BC;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$startChangeProfileNew$2;->d(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
