.class public final Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$ActionBar;
.super Lo/amu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;-><init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/amu<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic c:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$ActionBar;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$ActionBar;->c:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    .line 33
    invoke-direct {p0, p2}, Lo/amu;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(Lo/amT;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/amT<",
            "*>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eq p2, p1, :cond_0

    .line 72
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$ActionBar;->c:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->e(Z)V

    :cond_0
    return-void
.end method
