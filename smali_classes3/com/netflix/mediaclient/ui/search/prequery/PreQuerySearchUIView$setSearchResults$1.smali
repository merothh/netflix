.class final Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$setSearchResults$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->c(Lo/Bs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/Bz;",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$setSearchResults$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$setSearchResults$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$setSearchResults$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$setSearchResults$1;->d:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$setSearchResults$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/Bz;Ljava/lang/String;)V
    .locals 1

    const-string v0, "listTrackable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-interface {p1}, Lo/Bz;->getListType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 127
    :goto_0
    invoke-static {p2, p1}, Lo/Zy;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lo/Bz;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$setSearchResults$1;->e(Lo/Bz;Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
